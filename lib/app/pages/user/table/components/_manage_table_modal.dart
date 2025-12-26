import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../widgets/widgets.dart';

class ManageTableModal extends StatelessWidget {
  const ManageTableModal({
    super.key,
    required this.isEditMode,
    required this.tableNameController,
    required this.tableCapacityController,
    this.onSubmit,
  });
  final bool isEditMode;
  final TextEditingController tableNameController;
  final TextEditingController tableCapacityController;
  final VoidCallback? onSubmit;

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return FormWrapper(
      builder: (formContext) {
        return BottomModalSheetWrapper(
          title: TextSpan(text: isEditMode ? t.pages.table.editTable : t.pages.table.title),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // Table Name
                TextFormField(
                  controller: tableNameController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    labelText: t.form.table.name.label,
                    hintText: t.form.table.name.hint,
                  ),
                  validator: FormBuilderValidators.required(
                    errorText: t.form.table.name.error.required,
                  ),
                ),
                const SizedBox.square(dimension: 20),

                // Table Capacity
                NumberFormField(
                  controller: tableCapacityController,
                  decimalDigits: 0,
                  decoration: InputDecoration(
                    labelText: t.form.table.capacity.label,
                    hintText: t.form.table.capacity.hint,
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.notZeroNumber(
                      errorText: t.form.table.capacity.error.required,
                    ),
                    FormBuilderValidators.positiveNumber(),
                  ]),
                ),
                const SizedBox.square(dimension: 20),

                // Submit Button
                ElevatedButton(
                  onPressed: () {
                    if (FormWrapper.validate(formContext)) {
                      return onSubmit?.call();
                    }
                  },
                  child: Text(t.action.update),
                ),

                // Keyboard Spacer
                SizedBox.square(
                  dimension: MediaQuery.viewInsetsOf(context).bottom,
                )
              ],
            ),
          ),
        );
      },
    ).unfocusPrimary();
  }
}
