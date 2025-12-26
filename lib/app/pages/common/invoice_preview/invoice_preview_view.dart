import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
// import 'package:qr_flutter/qr_flutter.dart'; // Eliminado - QR no usado

import '../../../../i18n/strings.g.dart';
import '../../../core/core.dart';
import '../widgets/widgets.dart';
import '../../../widgets/widgets.dart';
import '../../../data/repository/repository.dart';

part '_sale_purchase_thermal_preview.dart';
part '_due_invoice_thermal_preview.dart';

@RoutePage()
class InvoicePreviewView extends ConsumerWidget {
  const InvoicePreviewView({
    super.key,
    required this.previewType,
  });

  final InvoicePreviewType previewType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _theme = Theme.of(context);
    final t = Translations.of(context);

    return Scaffold(
      backgroundColor: _theme.colorScheme.primaryContainer,
      appBar: CustomAppBar(
        title: Text(t.pages.invoicePreview.title),
        actions: [
          IconButton(
            onPressed: () => _printThermal(ref),
            icon: const Icon(HugeIcons.strokeRoundedPrinter),
          ),
          IconButton(
            onPressed: () async {
              return await _printPDFInvoice(context, ref);
            },
            icon: const Icon(HugeIcons.strokeRoundedShare01),
          ),
        ],
      ),
      body: switch (previewType) {
        ThermalPreview(printData: final data) => switch (data) {
            SalePurchaseThermalInvoiceData() => SalePurchaseThermalInvoicePreview(data),
            DueCollectionThermalInvoiceData() => DueInvoiceThermalInvoicePreview(data),
            _ => const Center(child: Text('Unsupported Invoice Preview')),
          },
        PdfPreview() => Center(child: Text(t.pages.invoicePreview.message)),
      },
    );
  }

  Future<void> _printThermal(WidgetRef ref) async {
    final ThermalPreview(:printData, :isSale) = previewType as ThermalPreview;

    switch (printData) {
      case SalePurchaseThermalInvoiceData data:
        return isSale
            ? await ref.read(saleThermalInvoiceProvider((sale: data, printKOT: false)).future)
            : await ref.read(purchaseThermalInvoiceProvider(data).future);
      case DueCollectionThermalInvoiceData data:
        return await ref.read(dueCollectionThermalInvoiceProvider(data).future);
      default:
        throw Exception('Unsupported thermal print data type');
    }
  }

  Future<void> _printPDFInvoice(BuildContext context, WidgetRef ref) async {
    final ThermalPreview(:printData) = previewType as ThermalPreview;

    return await showAsyncLoadingOverlay<void>(
      context,
      asyncFunction: () => SharedWidgets.openFile(context, () {
        return switch (printData) {
          SalePurchaseThermalInvoiceData data => ref.read(salePurchaseInvoicePDFProvider(data).future),
          _ => throw Exception('No supported PDF format'),
        };
      }),
    );
  }
}
