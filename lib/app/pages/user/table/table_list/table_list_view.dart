import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../core/core.dart';
import '../components/components.dart';
import '../../../../widgets/widgets.dart';
import '../../../../data/repository/repository.dart';

part '_table_list_view_provider.dart';

@RoutePage()
class TableListView extends ConsumerWidget {
  const TableListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(tableListViewProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (context.mounted) {
        controller.initRefreshListener();
      }
    });

    final _theme = Theme.of(context);
    final t = Translations.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        title: Text(t.common.tableList),
      ),
      body: RefreshIndicator.adaptive(
        onRefresh: () => Future.sync(controller.pagingController.refresh),
        child: PagedListView<int, PTable>(
          padding: const EdgeInsetsDirectional.only(top: 16, bottom: 72),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          pagingController: controller.pagingController,
          builderDelegate: PagedChildBuilderDelegate<PTable>(
            itemBuilder: (c, table, i) {
              return ItemAttributeListTile(
                name: TextSpan(
                  text: table.name ?? "N/A",
                  style: _theme.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Container(
                        margin: const EdgeInsetsDirectional.only(start: 8),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: table.status.statusColor?.withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Text(
                          table.status.label,
                          style: _theme.textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w500,
                            color: table.status.statusColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                subtitle: TextSpan(
                  text: '${t.common.capacity}: ${table.capacity ?? 0}',
                ),
                onEdit: ref.canT(
                  PMKeys.tables,
                  action: PermissionAction.update,
                  input: () async {
                    return await _handleManageTable(
                      context,
                      ref,
                      editModel: table,
                    );
                  },
                ),
                onDelete: ref.canT(
                  PMKeys.tables,
                  action: PermissionAction.delete,
                  input: () async {
                    return await _handleDelete(
                      context,
                      () => ref.read(tableRepoProvider).deleteTable(table.id!),
                    );
                  },
                ),
              );
            },
            noItemsFoundIndicatorBuilder: (context) {
              return EmptyWidget(
                replaceDefault: false,
                emptyBuilder: (context) {
                  return RetryButtons.scrollView(
                    t.exceptions.noTableFoundPleaseTryAgain,
                    onRetry: controller.pagingController.refresh,
                  );
                },
              );
            },
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        height: 48,
        child: FloatingActionButton.extended(
          onPressed: () async => await _handleManageTable(context, ref),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          label: Text(t.common.addTable),
          icon: const Icon(Icons.add, size: 18),
        ),
      ).can(PMKeys.tables, action: PermissionAction.create),
    );
  }

  Future<void> _handleManageTable(
    BuildContext context,
    WidgetRef ref, {
    PTable? editModel,
  }) async {
    late final tableNameController = TextEditingController();
    late final tableCapacityController = TextEditingController();

    final isEditMode = editModel != null;
    if (isEditMode) {
      tableNameController.text = editModel.name ?? '';
      tableCapacityController.setNumber(editModel.capacity);
    }

    final _response = await showModalBottomSheet<Either<String, PTableDetailsModel>>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      isDismissible: false,
      builder: (modalContext) {
        return ManageTableModal(
          isEditMode: isEditMode,
          tableNameController: tableNameController,
          tableCapacityController: tableCapacityController,
          onSubmit: () async {
            final _result = await showAsyncLoadingOverlay(
              modalContext,
              asyncFunction: () => Future.microtask(() {
                final _data = (editModel ?? PTable()).copyWith(
                  name: tableNameController.text,
                  capacity: tableCapacityController.getNumber?.toInt(),
                );
                return ref.read(tableRepoProvider).manageTable(_data);
              }),
            );

            if (modalContext.mounted) {
              return Navigator.of(modalContext).pop(_result);
            }
          },
        );
      },
    );

    if (context.mounted && _response != null) {
      if (_response.isFailure == true) {
        showCustomSnackBar(
          context,
          content: Text(_response.left!),
          customSnackBarType: CustomOverlayType.error,
        );
        return;
      }

      showCustomSnackBar(
        context,
        content: Text(_response.right?.message ?? "N/A"),
      );
    }
  }

  Future<void> _handleDelete(
    BuildContext ctx,
    Future<Either<String, String>> Function() callback,
  ) async {
    final _confirmation = await showDialog(
      context: ctx,
      builder: (popContext) => InfoDialog.confirmation(
        title: Translations.of(popContext).exceptions.doYouWantToDeleteThisTable,
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
}
