import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';

import '../../../../../../i18n/strings.g.dart';
import '../../../../../widgets/widgets.dart';
import '../../../../../data/repository/repository.dart';

part '_manage_category_view_provider.dart';

@RoutePage()
class ManageCategoryView extends ConsumerStatefulWidget {
  const ManageCategoryView({super.key, this.editModel});
  final ItemCategory? editModel;

  bool get isEditMode => editModel != null;

  @override
  ConsumerState<ManageCategoryView> createState() => _ManageCategoryViewState();
}

class _ManageCategoryViewState extends ConsumerState<ManageCategoryView> {
  @override
  void initState() {
    super.initState();
    if (widget.isEditMode) {
      ref.read(manageCategoryProvider).initEdit(widget.editModel!);
    }
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(manageCategoryProvider);

    final t = Translations.of(context);

    return FormWrapper(
      builder: (formContext) {
        return Scaffold(
          appBar: CustomAppBar(
            title: Text(
              widget.isEditMode ? t.pages.category.editCategory : t.pages.category.addNewCategory,
            ),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 24, 16, 16),
            child: Column(
              children: [
                // Category Name
                TextFormField(
                  controller: controller.categoryNameController,
                  decoration: InputDecoration(
                    labelText: t.form.category.label,
                    hintText: t.form.category.hint,
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return t.form.category.error.required;
                    }
                    return null;
                  },
                ),
                const SizedBox.square(dimension: 16),

                // Submit Button
                ElevatedButton(
                  onPressed: () async {
                    if (FormWrapper.validate(formContext)) {
                      return await _handleFormSubmit(context);
                    }
                  },
                  child: Text(t.action.save),
                )
              ],
            ),
          ),
        );
      },
    ).unfocusPrimary();
  }

  Future<void> _handleFormSubmit(BuildContext ctx) async {
    final _result = await showAsyncLoadingOverlay(
      ctx,
      asyncFunction: () => ref.read(manageCategoryProvider).handleManageCategory(
            widget.editModel,
          ),
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

      ctx.router.maybePop(_result.right);
      return;
    }
  }
}
