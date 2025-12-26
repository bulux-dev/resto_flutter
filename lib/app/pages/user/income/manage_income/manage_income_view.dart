import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../../core/core.dart';
import '../../../../../i18n/strings.g.dart';
import '../../../../data/repository/repository.dart';
import '../../../../routes/app_routes.gr.dart';
import '../../../../widgets/widgets.dart';

part '_manage_income_view_provider.dart';

@RoutePage()
class ManageIncomeView extends ConsumerStatefulWidget {
  const ManageIncomeView({super.key, this.editModel});
  final dynamic editModel;
  bool get isEditMode => editModel != null;

  @override
  ConsumerState<ManageIncomeView> createState() => _ManageIncomeViewState();
}

class _ManageIncomeViewState extends ConsumerState<ManageIncomeView> {
  @override
  void initState() {
    if (widget.isEditMode) {
      ref.read(manageIncomeViewProvider).initEdit(widget.editModel!);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(manageIncomeViewProvider);

    final _incomeCategory = ref.watch(incomeCategoryDropdownProvider);
    final _paymentMethodAsync = ref.watch(
      businessPaymentMethodDropdownProvider,
    );

    final t = Translations.of(context);

    return FormWrapper(
      builder: (formContext) {
        return Scaffold(
          appBar: CustomAppBar(
            title: Text(
              widget.isEditMode ? t.pages.income.editIncome : t.pages.income.addNewIncome,
            ),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // Income Title
                TextFormField(
                  controller: controller.incomeTitleController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: t.form.income.incomeTitle.label,
                    hintText: t.form.income.incomeTitle.hint,
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.minLength(3),
                  ]),
                ),
                const SizedBox.square(dimension: 20),

                // Income Category
                AsyncCustomDropdown<int, IncomeCategoryList>(
                  asyncData: _incomeCategory,
                  decoration: InputDecoration(
                    labelText: t.form.income.incomeCategory.label,
                    hintText: t.form.income.incomeCategory.hint,
                  ),
                  value: controller.dropdownValues['income_category'],
                  items: _incomeCategory.when(
                    data: (data) => [
                      // Navigator
                      CustomDropdownMenuItem.navigator(
                        label: t.form.income.incomeCategory.hint,
                        navLabel: '+ ${t.common.addNew}',
                        onNavTap: () async {
                          if (ref.canSnackbar(context, PMKeys.incomeCategory, action: PermissionAction.create)) {
                            return await context.router.push<IncomeCategory>(ManageIncomeCategoryRoute()).then(
                              (value) {
                                if (value != null) {
                                  controller.handleDropdownChange(
                                    MapEntry('income_category', value.id),
                                  );
                                }
                              },
                            );
                          }
                        },
                      ),

                      ...?data.data?.data?.map(
                        (category) => CustomDropdownMenuItem<int>(
                          value: category.id,
                          label: TextSpan(text: category.categoryName ?? ''),
                        ),
                      )
                    ],
                    error: (e, s) => [],
                    loading: () => [],
                  ),
                  onChanged: (value) => controller.handleDropdownChange(
                    MapEntry('income_category', value),
                  ),
                  validator: FormBuilderValidators.required(
                    errorText: t.exceptions.pleaseSelectACategory,
                  ),
                ),
                const SizedBox.square(dimension: 20),

                // Income Amount
                TextFormField(
                  controller: controller.paymentAmountController,
                  keyboardType: const TextInputType.numberWithOptions(),
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: t.form.income.payment.label,
                    hintText: t.form.income.payment.hint,
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.notZeroNumber(),
                  ]),
                ),
                const SizedBox.square(dimension: 20),

                // Payment Method
                AsyncCustomDropdown<int, BusinessPaymentMethodList>(
                  asyncData: _paymentMethodAsync,
                  decoration: InputDecoration(
                    labelText: t.pages.payment.title,
                    hintText: t.common.selectOne,
                  ),
                  value: controller.dropdownValues['payment_id'],
                  items: _paymentMethodAsync.when(
                    data: (data) => [
                      // Navigator
                      CustomDropdownMenuItem.navigator(
                        label: t.pages.payment.pleaseSelectAPaymentMethod,
                        navLabel: '+ ${t.common.addNew}',
                        onNavTap: () async {
                          return await context.router
                              .push<BusinessPaymentMethod>(
                            ManageBusinessPaymentMethodRoute(),
                          )
                              .then(
                            (value) {
                              if (value != null) {
                                controller.handleDropdownChange(
                                  MapEntry('payment_id', value.id),
                                );
                              }
                            },
                          );
                        },
                      ),

                      ...?data.data?.data?.map(
                        (paymentMethod) => CustomDropdownMenuItem<int>(
                          value: paymentMethod.id,
                          label: TextSpan(text: paymentMethod.name ?? 'N/A'),
                        ),
                      )
                    ],
                    error: (_, __) => [],
                    loading: () => [],
                  ),
                  onChanged: (value) => controller.handleDropdownChange(
                    MapEntry('payment_id', value),
                  ),
                  validator: FormBuilderValidators.required(
                    errorText: t.pages.payment.pleaseSelectAPaymentMethod,
                  ),
                ),
                const SizedBox.square(dimension: 20),

                // Note
                TextFormField(
                  controller: controller.noteController,
                  keyboardType: TextInputType.multiline,
                  maxLines: 3,
                  decoration: InputDecoration(
                    labelText: t.form.note.label,
                    hintText: t.form.note.hint,
                    contentPadding: EdgeInsets.all(16),
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: ElevatedButton(
            onPressed: () async {
              if (FormWrapper.validate(formContext)) {
                return await _handleFormSubmit(context);
              }
            },
            child: Text(t.action.save),
          ).fMarginSymmetric(horizontal: 16, vertical: 12),
        );
      },
    ).unfocusPrimary();
  }

  Future<void> _handleFormSubmit(BuildContext ctx) async {
    final _result = await showAsyncLoadingOverlay(
      ctx,
      asyncFunction: () => ref.read(manageIncomeViewProvider).handleManageIncome(widget.editModel),
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

      ctx.router.maybePop();
      return;
    }
  }
}
