import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../data/repository/repository.dart';
import '../../../../widgets/widgets.dart';

part '_manage_income_category_view_provider.dart';

@RoutePage()
class ManageIncomeCategoryView extends ConsumerStatefulWidget {
  const ManageIncomeCategoryView({
    super.key,
    this.editModel,
  });
  final IncomeCategory? editModel;
  bool get isEditMode => editModel != null;

  @override
  ConsumerState<ManageIncomeCategoryView> createState() => _ManageIncomeCategoryViewState();
}

class _ManageIncomeCategoryViewState extends ConsumerState<ManageIncomeCategoryView> {
  @override
  void initState() {
    if (widget.isEditMode) {
      ref.read(manageIncomeCategoryViewProvider).initEdit(widget.editModel!);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(manageIncomeCategoryViewProvider);

    final t = Translations.of(context);

    return FormWrapper(
      builder: (formContext) {
        return Scaffold(
          appBar: CustomAppBar(
            title: Text(
              widget.isEditMode ? t.pages.income.editIncomeCategory : t.pages.income.addNewIncomeCategory,
            ),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Category Name
                TextFormField(
                  controller: controller.categoryNameController,
                  decoration: InputDecoration(
                    labelText: t.form.income.label,
                    hintText: t.form.income.hint,
                  ),
                  validator: FormBuilderValidators.required(
                    errorText: t.form.income.error.required,
                  ),
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
      asyncFunction: () => ref.read(manageIncomeCategoryViewProvider).handleManageCategory(
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
