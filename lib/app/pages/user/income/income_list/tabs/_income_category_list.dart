part of '../income_list_view.dart';

class IncomeCategoryList extends ConsumerWidget {
  const IncomeCategoryList({super.key, required this.provider});
  final IncomeCategoryListViewNotifier provider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);

    return Column(
      children: [
        // Search Field
        CustomSearchField(
          controller: provider.searchController,
          decoration: CustomSearchFieldDecoration(
            hintText: t.common.search,
          ),
          onChanged: (_) => Future.delayed(Durations.medium3).whenComplete(
            provider.pagingController.refresh,
          ),
        ).fMarginLTRB(16, 15, 16, 0),

        // Category List
        Expanded(
          child: RefreshIndicator.adaptive(
            onRefresh: () => Future.sync(provider.pagingController.refresh),
            child: PagedListView<int, IncomeCategory>(
              padding: const EdgeInsetsDirectional.only(top: 16, bottom: 72),
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              pagingController: provider.pagingController,
              builderDelegate: PagedChildBuilderDelegate<IncomeCategory>(
                itemBuilder: (c, category, i) {
                  return ItemAttributeListTile(
                    name: TextSpan(text: category.categoryName),
                    onDelete: ref.canT(
                      PMKeys.incomeCategory,
                      action: PermissionAction.delete,
                      input: () async => await _handleDelete(
                        context,
                        () => provider.repo.deleteCategory(category.id!),
                      ),
                    ),
                    onEdit: ref.canT(
                      PMKeys.incomeCategory,
                      action: PermissionAction.update,
                      input: () async {
                        return await context.router.push<void>(
                          ManageIncomeCategoryRoute(editModel: category),
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
                        t.exceptions.noIncomeCategoryFoundAddingAIncome,
                        onRetry: provider.pagingController.refresh,
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _handleDelete(
    BuildContext ctx,
    Future<Either<String, String>> Function() callback,
  ) async {
    final _confirmation = await showDialog(
      context: ctx,
      builder: (popContext) => InfoDialog.confirmation(
        title: Translations.of(ctx).exceptions.doYouWantToDeleteThisCategory,
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
