import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../../core/core.dart';
import '../../../../data/repository/repository.dart';
import '../../../../widgets/widgets.dart';

part '_printint_option_view_provider.dart';

@RoutePage()
class PrintingOptionView extends ConsumerStatefulWidget {
  const PrintingOptionView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PrintingOptionViewState();
}

class _PrintingOptionViewState extends ConsumerState<PrintingOptionView> {
  @override
  void initState() {
    ref.read(printingOptionViewProvider).initEdit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(printingOptionViewProvider);

    final _theme = Theme.of(context);

    return FormWrapper(
      builder: (formContext) {
        return Scaffold(
          appBar: CustomAppBar(
            title: const Text('Printing Option'),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Business Logo
                Center(
                  child: SizedBox.square(
                    dimension: 72,
                    child: UserAvatarPicker(
                      image: controller.avatarImage,
                      onPickImage: controller.handleAvatarImage,
                    ),
                  ),
                ),
                const SizedBox.square(dimension: 20),

                // Business Name
                TextFormField(
                  controller: controller.shopNameController,
                  keyboardType: TextInputType.text,
                  autofillHints: const [AutofillHints.organizationName],
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    labelText: 'Shop/Store Name*',
                    hintText: 'Enter shop or store name',
                  ),
                  validator: FormBuilderValidators.required(
                    errorText: 'Please enter your shop or store name',
                  ),
                ),
                const SizedBox.square(dimension: 20),

                // Phone Number
                TextFormField(
                  controller: controller.businessPhoneController,
                  keyboardType: TextInputType.phone,
                  autofillHints: const [AutofillHints.telephoneNumber],
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    labelText: 'Phone Number*',
                    hintText: 'Enter phone number',
                  ),
                  validator: FormBuilderValidators.phoneNumber(
                    errorText: 'Please enter phone number.',
                  ),
                ),
                const SizedBox.square(dimension: 20),

                // Company Address
                TextFormField(
                  controller: controller.shopAddressController,
                  keyboardType: TextInputType.text,
                  autofillHints: const [AutofillHints.fullStreetAddress],
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    labelText: 'Company Address',
                    hintText: 'Enter company address',
                  ),
                ),
                const SizedBox.square(dimension: 20),

                // Note Label
                TextFormField(
                  controller: controller.noteLabelController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    labelText: 'Note Label',
                    hintText: 'Enter note label.',
                  ),
                ),
                const SizedBox.square(dimension: 20),

                // Note
                TextFormField(
                  controller: controller.noteController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    labelText: 'Note',
                    hintText: 'Enter note.',
                  ),
                ),
                const SizedBox.square(dimension: 20),

                // Post Sale Message
                TextFormField(
                  controller: controller.postSaleMessage,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    labelText: 'Post Sale Message',
                    hintText: 'Enter post sale message',
                  ),
                ),
                const SizedBox.square(dimension: 16),

                // Printing Options
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Printing Option',
                        style: _theme.textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox.fromSize(
                      size: const Size(40, 22),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Switch(
                          value: controller.enablePrintingOption,
                          onChanged: controller.togglePrintingOption,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox.square(dimension: 20),

                // Thermal Printer Paper Size
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text(
                        'Thermal Printer Paper Size',
                        style: _theme.textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: DropdownButton2<ThermalPrinterPaperSize>(
                        isDense: true,
                        isExpanded: true,
                        style: _theme.textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                        selectedItemBuilder: (context) {
                          return [
                            ...ThermalPrinterPaperSize.values.map((size) {
                              return Text(
                                size.label(context),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              );
                            })
                          ];
                        },
                        value: controller.selectedPaperSize,
                        items: [
                          ...ThermalPrinterPaperSize.values.map((size) {
                            return DropdownMenuItem(
                              value: size,
                              child: Text(size.label(context)),
                            );
                          })
                        ],
                        onChanged: controller.handleSelectPaperSize,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          bottomNavigationBar: ElevatedButton(
            onPressed: () async {
              if (ref.canSnackbar(context, PMKeys.printingOption, action: PermissionAction.update)) {
                if (FormWrapper.validate(formContext)) {
                  return _handleFormSubmit(context);
                }
              }
            },
            child: const Text('Save'),
          ).fMarginLTRB(24, 12, 24, 16),
        );
      },
    ).unfocusPrimary();
  }

  Future<void> _handleFormSubmit(BuildContext ctx) async {
    final _result = await showAsyncLoadingOverlay(
      ctx,
      asyncFunction: () => ref.read(printingOptionViewProvider).handleManagePrintingOption(),
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

      await Future.microtask(ref.read(userRepositoryProvider.notifier).getUser);
      ref
          .read(autoPrintStateProvider.notifier)
          .toggleAutoPrint(ref.read(printingOptionViewProvider).enablePrintingOption);

      if (ctx.mounted) {
        return ctx.router.pop();
      }
    }
  }
}
