import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';

import '../../../../../../i18n/strings.g.dart';
import '../../../../../core/core.dart';
import '../../components/components.dart';
import '../../../../../widgets/widgets.dart';
import '../../../../../routes/app_routes.gr.dart';
import '../../../../../data/repository/repository.dart';

@RoutePage()
class IngredientListView extends ConsumerStatefulWidget {
  const IngredientListView({super.key, this.purchaseSelector = false});
  final bool purchaseSelector;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _IngredientListViewState();
}

class _IngredientListViewState extends ConsumerState<IngredientListView> with PaginatedControllerMixin<Ingredient> {
  late final searchController = TextEditingController();

  @override
  void initState() {
    initPaging();
    initRefreshListener();
    super.initState();
  }

  @override
  void dispose() {
    _apiEventSub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          // widget.purchaseSelector ? 'Select Ingredient' : 'Ingredient List',
          widget.purchaseSelector ? t.pages.ingredient.ingredientList.title2 : t.pages.ingredient.ingredientList.title1,
        ),
      ),
      body: Column(
        children: [
          // Search Field
          CustomSearchField(
            controller: searchController,
            decoration: CustomSearchFieldDecoration(
              // hintText: 'Search here...',
              hintText: t.common.searchHere,
              actions: [
                if (ref.can(PMKeys.ingreditents, action: PermissionAction.create)) ...[
                  const SizedBox.square(dimension: 8),
                  CustomSearchFieldActionButton.custom(
                    icon: const Icon(Icons.add),
                    onPressed: () async {
                      return await context.router.push<void>(
                        ManageIngredientRoute(),
                      );
                    },
                    style: CustomSearchFieldActionButton.themeColored(context),
                  ),
                ]
              ],
            ),
            onChanged: (_) => Future.delayed(Durations.medium3).whenComplete(
              pagingController.refresh,
            ),
          ).fMarginLTRB(16, 16, 16, 0),

          // Ingredient List
          Expanded(
            child: RefreshIndicator.adaptive(
              onRefresh: () => Future.sync(pagingController.refresh),
              child: PagedListView<int, Ingredient>(
                padding: const EdgeInsetsDirectional.symmetric(vertical: 16),
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                pagingController: pagingController,
                builderDelegate: PagedChildBuilderDelegate<Ingredient>(
                  itemBuilder: (c, ingredient, i) {
                    return ItemAttributeListTile(
                      name: TextSpan(text: ingredient.name),
                      onDelete: !ref.can(PMKeys.ingreditents, action: PermissionAction.delete)
                          ? null
                          : () async {
                              return await _handleDelete(
                                context,
                                () => ref.read(ingredientRepoProvider).deleteIngredient(ingredient.id!),
                              );
                            },
                      onEdit: !ref.can(PMKeys.ingreditents, action: PermissionAction.update)
                          ? null
                          : () async {
                              return await _handleEdit(
                                context,
                                ingredient,
                              );
                            },
                      onTap: () async {
                        if (widget.purchaseSelector) {
                          return _handleSelectGradient(context, ingredient);
                        }
                      },
                    );
                  },
                  noItemsFoundIndicatorBuilder: (context) {
                    return EmptyWidget(
                      replaceDefault: false,
                      emptyBuilder: (context) {
                        return RetryButtons.scrollView(
                          // 'No ingredient found!\n Please try adding a ingredient.',
                          t.exceptions.noIngredientFound,
                          onRetry: pagingController.refresh,
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    ).unfocusPrimary();
  }

  Future<void> _handleEdit(BuildContext context, Ingredient ingredient) async {
    return await context.router.push<void>(
      ManageIngredientRoute(editModel: ingredient),
    );
  }

  Future<void> _handleDelete(
    BuildContext ctx,
    Future<Either<String, String>> Function() callback,
  ) async {
    final _confirmation = await showDialog(
      context: ctx,
      builder: (popContext) => InfoDialog.confirmation(
        // title: 'Do you want to delete this ingredient?',
        title: t.prompt.deleteIngredient,
        onDecide: (value) => Navigator.of(popContext).pop(value),
      ),
    );
    if (_confirmation != true) return;

    if (ctx.mounted) {
      final _result = await showAsyncLoadingOverlay(
        ctx,
        asyncFunction: () => Future.microtask(callback),
      );

      if (ctx.mounted) {
        if (_result.isFailure) {
          showCustomSnackBar(
            ctx,
            content: Text(_result.left!),
            customSnackBarType: CustomOverlayType.error,
          );
          return;
        }
      }
    }
  }

  Future<void> _handleSelectGradient(
    BuildContext ctx,
    Ingredient ingredient,
  ) async {
    final _result = await showSelectedIngredientModal(
      ctx,
      IngredientCartItem(
        id: ingredient.id,
        name: ingredient.name,
        quantity: 1,
      ),
    );

    if (ctx.mounted && _result != null) {
      await ctx.router.maybePop(_result);
    }
  }

  @override
  Future<PaginatedListModel<Ingredient>> fetchData(int page) {
    return Future.microtask(
      () => ref.read(ingredientRepoProvider).getIngredients(
            page: page,
            search: searchController.text,
          ),
    );
  }

  EventSub<IngredientApiEvent>? _apiEventSub;
  @override
  void initRefreshListener() {
    _apiEventSub = ref.read(gEventListenerProvider).on<IngredientApiEvent>().listen((_) {
      pagingController.refresh();
    });
  }
}
