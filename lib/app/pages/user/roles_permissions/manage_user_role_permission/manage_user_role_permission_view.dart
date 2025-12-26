import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:searchfield/searchfield.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../core/core.dart';
import '../../../../data/repository/repository.dart';
import '../../../../widgets/widgets.dart';

part '_manage_user_role_permission_view_provider.dart';

@RoutePage()
class ManageUserRolePermissionView extends ConsumerStatefulWidget {
  const ManageUserRolePermissionView({super.key, this.editModel});

  final PermittedStaff? editModel;
  bool get isEditMode => editModel != null;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ManageUserRolePermissionViewState();
}

class _ManageUserRolePermissionViewState extends ConsumerState<ManageUserRolePermissionView> {
  @override
  void initState() {
    if (widget.isEditMode) {
      ref.read(manageUserRolePermissionViewProvider).initEdit(widget.editModel!);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(manageUserRolePermissionViewProvider);
    final _allStaffAsync = ref.watch(allStaffDropdownProvider);

    final _theme = Theme.of(context);
    final t = Translations.of(context);
    return FormWrapper(
      builder: (formContext) {
        return Scaffold(
          appBar: CustomAppBar(
            title: Text(
              widget.isEditMode
                  ? t.pages.rolePermission.manageRolePermission.title2
                  : t.pages.rolePermission.manageRolePermission.title1,
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Staff Dropdown
                      _allStaffAsync.when(
                        data: (data) {
                          return SearchField<StaffModel>(
                            controller: controller.staffSearchController,
                            searchInputDecoration: SearchInputDecoration(
                              labelText: '${t.form.staff.label}*',
                              hintText: t.form.staff.hint,
                            ),
                            suggestions: [
                              ...?data.data?.data?.map(
                                (staff) {
                                  return SearchFieldListItem(
                                    [staff.name, staff.email, staff.designation].join(),
                                    value: staff.id?.toString(),
                                    item: staff,
                                    child: Text.rich(
                                      TextSpan(
                                        text: staff.name ?? "N/A",
                                        children: [TextSpan(text: "-(${staff.designation ?? 'N/A'})")],
                                      ),
                                      style: _theme.textTheme.bodyLarge?.copyWith(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  );
                                },
                              )
                            ],
                            onSuggestionTap: (value) {
                              controller.staffSearchController.text = value.item?.name ?? 'N/A';
                              return controller.handleSelectStaff(value.item);
                            },
                            validator: (value) {
                              return FormBuilderValidators.required(
                                errorText: t.form.staff.errors.required,
                              )(controller.selectedStaff);
                            },
                            onSearchTextChanged: (value) {
                              controller.handleSelectStaff(null);
                              return [
                                ...?data.data?.data?.map(
                                  (staff) {
                                    return SearchFieldListItem(
                                      [staff.name, staff.email, staff.designation].join(),
                                      value: staff.id?.toString(),
                                      item: staff,
                                      child: Text.rich(
                                        TextSpan(
                                          text: staff.name ?? "N/A",
                                          children: [TextSpan(text: "-(${staff.designation ?? 'N/A'})")],
                                        ),
                                        style: _theme.textTheme.bodyLarge?.copyWith(
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    );
                                  },
                                ).where((element) {
                                  return [element.item?.name, element.item?.email, element.item?.designation]
                                      .join()
                                      .trim()
                                      .toLowerCase()
                                      .contains(value.trim().toLowerCase());
                                })
                              ];
                            },
                          );
                        },
                        error: (error, stackTrace) {
                          return AsyncCustomDropdown(
                            decoration: SearchInputDecoration(
                              labelText: '${t.form.staff.label}*',
                              hintText: t.form.staff.hint,
                            ),
                            items: [],
                            asyncData: _allStaffAsync,
                            onRefresh: () => ref.refresh(allStaffDropdownProvider),
                          );
                        },
                        loading: () {
                          return AsyncCustomDropdown(
                            items: [],
                            asyncData: _allStaffAsync,
                          );
                        },
                      ),
                      const SizedBox.square(dimension: 20),

                      // Login User Name
                      TextFormField(
                        controller: controller.loginUserController,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        autofillHints: const [AutofillHints.email],
                        decoration: InputDecoration(
                          labelText: t.form.loginUserName.label,
                          hintText: t.form.loginUserName.hint,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return t.form.loginUserName.errors.required;
                          }
                          return null;
                        },
                      ),
                      const SizedBox.square(dimension: 20),

                      // Password Field
                      TextFormField(
                        controller: controller.passwordController,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: controller.obscurePassword,
                        decoration: InputDecoration(
                          labelText: t.form.password.label,
                          hintText: t.form.password.hint,
                          suffixIcon: IconButton(
                            onPressed: controller.toggleObscure,
                            color: _theme.colorScheme.outline,
                            icon: Icon(
                              controller.obscurePassword ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (widget.isEditMode) return null;

                          return FormBuilderValidators.required()(value);
                        },
                      ),
                    ],
                  ),
                ),

                // Permission Table
                PermissionTable(
                  selectedPermissions: controller.selectedPermissions,
                  onChanged: controller.handleSelectPermissions,
                ),
              ],
            ),
          ),
          bottomNavigationBar: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 48,
                  child: OutlinedButton(
                    onPressed: () {
                      return controller.initEdit(
                        widget.editModel ?? PermittedStaff(),
                        reset: true,
                      );
                    },
                    style: CustomButtonStyles.destructiveOutline(),
                    child: Text(t.action.reset),
                  ),
                ),
              ),
              const SizedBox.square(dimension: 16),
              Expanded(
                child: SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () async {
                      if (FormWrapper.validate(formContext)) {
                        return _handleFormSubmit(context);
                      }
                    },
                    child: Text(t.action.save),
                  ),
                ),
              ),
            ],
          ).fMarginLTRB(16, 12, 16, 16),
        );
      },
    ).unfocusPrimary();
  }

  Future<void> _handleFormSubmit(BuildContext ctx) async {
    final _result = await showAsyncLoadingOverlay(
      ctx,
      asyncFunction: () => Future.microtask(
        () => ref.read(manageUserRolePermissionViewProvider).handleManageUserRolePermission(
              widget.editModel,
            ),
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

class PermissionTable extends StatelessWidget {
  const PermissionTable({
    super.key,
    required this.selectedPermissions,
    required this.onChanged,
  });
  final Map<String, Permission?> selectedPermissions;
  final ValueChanged<Map<String, Permission?>> onChanged;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final t = Translations.of(context);

    final modules = _basePermissions.modules;
    final keys = modules.keys.toList(growable: false);

    return Column(
      children: [
        // Select All
        Container(
          alignment: AlignmentDirectional.centerEnd,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text.rich(
            TextSpan(
              children: [
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: SizedBox.fromSize(
                    size: Size.square(20.fH),
                    child: Checkbox(
                      value: _allSelected,
                      tristate: true,
                      onChanged: _toggleAll,
                    ),
                  ).fMarginOnly(right: 8),
                ),
                TextSpan(
                  text: t.action.selectAll,
                  recognizer: TapGestureRecognizer()..onTap = _toggleAll,
                ),
              ],
            ),
            style: _theme.textTheme.bodyMedium?.copyWith(
              color: _theme.paragraphColor,
            ),
          ),
        ),
        const SizedBox.square(dimension: 16),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            headingRowHeight: 36,
            horizontalMargin: 16,
            columnSpacing: 16,
            headingRowColor: WidgetStateProperty.all(_theme.colorScheme.secondary.withAlpha(25)),
            border: TableBorder.all(color: _theme.colorScheme.outline.withAlpha(50)),
            columns: [
              DataColumn(label: Center(child: Text(t.common.sl))),
              DataColumn(label: Center(child: Text(t.common.features))),
              DataColumn(label: Center(child: Text(t.common.view))),
              DataColumn(label: Center(child: Text(t.common.create))),
              DataColumn(label: Center(child: Text(t.common.update))),
              DataColumn(label: Center(child: Text(t.common.delete))),
            ],
            rows: List<DataRow>.generate(keys.length, (index) {
              final key = keys[index];
              final perm = selectedPermissions[key] ?? modules[key];

              return DataRow(cells: [
                DataCell(Text('${index + 1}')),
                DataCell(Text(_nameLookup(context, key))),

                // View
                _buildCheckboxCell(
                  value: perm?.view,
                  onChanged: (v) => _togglePermission(key, 'view', v),
                ),

                // Create
                _buildCheckboxCell(
                  value: perm?.create,
                  onChanged: (v) => _togglePermission(key, 'create', v),
                ),

                // Update
                _buildCheckboxCell(
                  value: perm?.update,
                  onChanged: (v) => _togglePermission(key, 'update', v),
                ),

                // Delete
                _buildCheckboxCell(
                  value: perm?.delete,
                  onChanged: (v) => _togglePermission(key, 'delete', v),
                ),
              ]);
            }),
          ),
        ),
      ],
    );
  }

  bool? get _allSelected {
    final modules = PermissionTable._basePermissions.modules;

    if (modules.isEmpty) return false;

    bool anySelected = false;
    bool anyUnselected = false;

    for (final entry in modules.entries) {
      final key = entry.key;
      final basePerm = entry.value;
      final selected = selectedPermissions[key];

      void check(bool? value) {
        if (value == null) return;
        if (value) {
          anySelected = true;
        } else {
          anyUnselected = true;
        }
      }

      check(selected?.view ?? basePerm?.view);
      check(selected?.create ?? basePerm?.create);
      check(selected?.update ?? basePerm?.update);
      check(selected?.delete ?? basePerm?.delete);

      if (anySelected && anyUnselected) return null;
    }

    if (!anySelected) return false;
    return true;
  }

  void _toggleAll([bool? _]) {
    final _newValue = _allSelected != true;

    final _updated = <String, Permission>{};

    _basePermissions.modules.forEach((key, perm) {
      _updated[key] = Permission(
        view: perm?.view != null ? _newValue : null,
        create: perm?.create != null ? _newValue : null,
        update: perm?.update != null ? _newValue : null,
        delete: perm?.delete != null ? _newValue : null,
      );
    });

    return onChanged.call(_updated);
  }

  void _togglePermission(String key, String action, bool? value) {
    final basePerm = selectedPermissions[key] ?? _basePermissions.modules[key];
    if (basePerm == null) return;

    final updated = basePerm.updateField(action, value);
    return onChanged.call({...selectedPermissions, key: updated});
  }

  DataCell _buildCheckboxCell({
    required bool? value,
    required ValueChanged<bool?> onChanged,
  }) {
    return DataCell(
      value == null
          ? const SizedBox.shrink()
          : Center(
              child: Checkbox(
                value: value,
                onChanged: onChanged,
                visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity,
                  vertical: VisualDensity.minimumDensity,
                ),
              ),
            ),
    );
  }

  String _nameLookup(BuildContext context, String key) {
    final t = Translations.of(context);
    final _lookupMap = {
      "dashboard": t.common.dashboard,
      "parties": t.common.parties,
      "quotations": t.common.quotations,
      "purchases": t.common.purchase,
      "dueCollection": t.common.dueCollection,
      "ingreditents": t.common.ingredient,
      "units": t.common.unit,
      "tables": t.common.table,
      "products": t.common.items,
      "categories": t.common.category,
      "menus": t.common.menus,
      "modifierGroups": t.common.modifierGroups,
      "itemModifiers": t.common.itemModifiers,
      "moneyIn": t.common.moneyIn,
      "moneyOut": t.common.moneyOut,
      "transactions": t.common.transaction,
      "income": t.common.income,
      "incomeCategory": t.pages.income.incomeCategory,
      "expense": t.common.expense,
      "expenseCategory": t.pages.expense.expenseCategory,
      "coupon": t.common.coupon,
      "vat": t.common.vat,
      "sales": t.common.sales,
      "printingOption": t.common.printingOption,
      "currency": t.common.currency,
      "paymentMethod": t.common.paymentMethod,
      "salesReport": t.common.salesReport,
      "salesQuotationReport": t.common.salesQuotationReport,
      "purchaseReport": t.common.purchaseReport,
      "dueReport": t.common.dueReport,
      "dueCollectionReport": t.common.dueCollectionReport,
      "transactionReport": t.common.transactionReport,
      "incomeReport": t.common.incomeReport,
      "expenseReport": t.common.expenseReport,
    };
    return _lookupMap[key] ?? key;
  }

  static final _basePermissions = PermissionModules.fromJson({
    "dashboard": {"view": "0"},
    "parties": {"view": "0", "create": "0", "update": "0", "delete": "0"},
    "quotations": {"view": "0", "create": "0", "update": "0", "delete": "0"},
    "purchases": {"view": "0", "create": "0", "update": "0", "delete": "0"},
    "dueCollection": {"view": "0", "create": "0", "update": "0"},
    "ingreditents": {"view": "0", "create": "0", "update": "0", "delete": "0"},
    "units": {"view": "0", "create": "0", "update": "0", "delete": "0"},
    "tables": {"view": "0", "create": "0", "update": "0", "delete": "0"},
    "products": {"view": "0", "create": "0", "update": "0", "delete": "0"},
    "categories": {"view": "0", "create": "0", "update": "0", "delete": "0"},
    "menus": {"view": "0", "create": "0", "update": "0", "delete": "0"},
    "modifierGroups": {"view": "0", "create": "0", "update": "0", "delete": "0"},
    "itemModifiers": {"view": "0", "create": "0", "update": "0", "delete": "0"},
    "moneyIn": {"view": "0"},
    "moneyOut": {"view": "0"},
    "transactions": {"view": "0"},
    "income": {"view": "0", "create": "0", "update": "0", "delete": "0"},
    "incomeCategory": {"view": "0", "create": "0", "update": "0", "delete": "0"},
    "expense": {"view": "0", "create": "0", "update": "0", "delete": "0"},
    "expenseCategory": {"view": "0", "create": "0", "update": "0", "delete": "0"},
    "coupon": {"view": "0", "create": "0", "update": "0", "delete": "0"},
    "vat": {"view": "0", "create": "0", "update": "0", "delete": "0"},
    "sales": {"view": "0", "create": "0", "update": "0", "delete": "0"},
    "printingOption": {"view": "0", "update": "0"},
    "currency": {"view": "0", "update": "0"},
    "paymentMethod": {"view": "0", "create": "0", "update": "0", "delete": "0"},
    "salesReport": {"view": "0"},
    "salesQuotationReport": {"view": "0"},
    "purchaseReport": {"view": "0"},
    "dueReport": {"view": "0"},
    "dueCollectionReport": {"view": "0"},
    "transactionReport": {"view": "0"},
    "incomeReport": {"view": "0"},
    "expenseReport": {"view": "0"}
  });
}

extension _PermissionX on Permission {
  Permission updateField(String field, bool? value) {
    return switch (field) {
      'view' => copyWith(view: value),
      'create' => copyWith(create: value),
      'update' => copyWith(update: value),
      'delete' => copyWith(delete: value),
      _ => this,
    };
  }
}
