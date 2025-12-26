import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';

// COMENTADO: import '../../../../core/core.dart'; // Eliminado porque ya no se usa ItemFoodTypeEnum
import '../../../../../i18n/strings.g.dart';
import '../../../../data/repository/repository.dart';
import '../../../../widgets/widgets.dart';

// COMENTADO: foodType eliminado del filtro por no funcionar correctamente
enum ItemFilterType { category, /* foodType, */ price }

Future<Map<ItemFilterType, dynamic>?> showItemFilterBottomModalSheet({
  required BuildContext context,
  List<FilterModalData<ItemFilterType, dynamic>>? customFilters,
  Map<ItemFilterType, dynamic>? selectedFilters,
}) async {
  final ref = ProviderScope.containerOf(context);
  final t = Translations.of(context);

  final filterFutures = <ItemFilterType, Future<dynamic>>{
    ItemFilterType.category: ref.read(itemCategoryDropdownProvider.future),
  };

  final results = await showAsyncLoadingOverlay(
    context,
    asyncFunction: () => Future.wait(
      filterFutures.entries.map(
        (entry) => entry.value.catchError((_) => null),
      ),
    ),
  );

  final resolvedFilters = {
    for (var i = 0; i < filterFutures.keys.length; i++) filterFutures.keys.elementAt(i): results[i]
  };

  if (!context.mounted) return null;

  final _newFilters = selectedFilters ??
      <ItemFilterType, dynamic>{
        ItemFilterType.price: 'low_to_high',
        // COMENTADO: foodType eliminado del filtro por no funcionar correctamente
        // ItemFilterType.foodType: null,
      };

  await showFilterModalSheet<ItemFilterType, dynamic>(
    context: context,
    selectedFilters: _newFilters,
    onSave: (value) => _newFilters
      ..clear()
      ..addAll(value),
    filters: [
      // Category Filter
      FilterModalData.dropdown(
        key: ItemFilterType.category,
        labelText: t.form.category.label,
        hintText: t.form.category.hint,
        items: [
          ...?(resolvedFilters[ItemFilterType.category] as ItemCategoryList?)?.data?.data?.map(
            (category) {
              return CustomDropdownMenuItem<int>(
                value: category.id,
                label: TextSpan(text: category.categoryName ?? "N/A"),
              );
            },
          )
        ],
      ),

      // COMENTADO: Filtro de tipos de alimentos eliminado por no funcionar correctamente
      // Food Type Filter
      // FilterModalData.custom(
      //   key: ItemFilterType.foodType,
      //   builder: (_, {initialValue, required onChanged}) {
      //     return SizedBox(
      //       height: 40,
      //       child: ListView.separated(
      //         scrollDirection: Axis.horizontal,
      //         itemCount: ItemFoodTypeEnum.values.length,
      //         itemBuilder: (_, index) {
      //           final _foodType = ItemFoodTypeEnum.values[index];
      //           final _isSelected = initialValue == _foodType;

      //           return SelectedButton(
      //             isSelected: _isSelected,
      //             minimumSize: Size.zero,
      //             padding: const EdgeInsets.symmetric(horizontal: 20),
      //             child: Text(_foodType.label(context)),
      //             onPressed: () {
      //               return onChanged(_isSelected ? null : _foodType);
      //             },
      //           );
      //         },
      //         separatorBuilder: (_, __) {
      //           return const SizedBox.square(dimension: 8);
      //         },
      //       ),
      //     );
      //   },
      // ),

      // Price Filter
      FilterModalData.radioTiles(
        key: ItemFilterType.price,
        header: TextSpan(text: t.common.price),
        items: [
          RadioFilterModalData(
            label: t.prompt.items.filter.extra.lowToHigh,
            value: 'low_to_high',
          ),
          RadioFilterModalData(
            label: t.prompt.items.filter.extra.highToLow,
            value: 'high_to_low',
          )
        ],
      ),

      // Other Custom Filters
      ...?customFilters
    ],
  );

  return _newFilters;
}
