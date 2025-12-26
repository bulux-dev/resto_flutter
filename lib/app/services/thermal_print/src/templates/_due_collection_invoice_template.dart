part of 'templates.dart';

class DueCollectionTemplate extends ThermalInvoiceTemplateBase {
  DueCollectionTemplate(this.dueInvoice) : super(paperSize: dueInvoice.user?.invoiceSize);
  final DueCollectionThermalInvoiceData dueInvoice;

  @override
  Future<List<int>> get template async {
    List<int> _bytes = [];
    final _profile = await CapabilityProfile.load();
    final _generator = Generator(paperSize.escPosSize, _profile);

    _bytes += await switch (paperSize) {
      ThermalPrinterPaperSize.mm582Inch => _mm58(_generator),
      ThermalPrinterPaperSize.mm803Inch => _mm80(_generator),
    };

    _bytes += _generator.cut();
    return _bytes;
  }

  Future<List<int>> _mm58(Generator generator) async {
    List<int> _bytes = [];

    // Business Name
    _bytes += generator.text(
      dueInvoice.user?.business?.companyName ?? "N/A",
      styles: const PosStyles(
        align: PosAlign.center,
        height: PosTextSize.size2,
        width: PosTextSize.size2,
      ),
      linesAfter: 1,
    );

    // Seller Name
    _bytes += generator.text(
      'Seller :${dueInvoice.user?.role?.isShopOwner == true ? 'Admin' : dueInvoice.user?.name ?? 'N/A'}',
      styles: const PosStyles(align: PosAlign.center),
    );

    // Address
    if (dueInvoice.user?.business?.address != null) {
      _bytes += generator.text(
        dueInvoice.user?.business?.address ?? "",
        styles: const PosStyles(align: PosAlign.center),
      );
    }

    // Business Phone Number
    if (dueInvoice.user?.business?.phoneNumber != null) {
      _bytes += generator.text(
        dueInvoice.user?.business?.phoneNumber ?? '',
        styles: const PosStyles(align: PosAlign.center),
        linesAfter: 1,
      );
    }

    // Paid To/Received From
    _bytes += generator.text(
      '${dueInvoice.isPurchaseDue ? 'Paid To' : 'Received From'}: ${dueInvoice.party?.name ?? "N/A"}',
      styles: const PosStyles(align: PosAlign.left),
    );

    // Party Phone Number
    _bytes += generator.text(
      'Mobile: ${dueInvoice.party?.phone ?? "N/A"}',
      styles: const PosStyles(align: PosAlign.left),
    );

    // Invoice No
    _bytes += generator.text(
      'Invoice: ${dueInvoice.invoiceNumber ?? 'Not Provided'}',
      styles: const PosStyles(align: PosAlign.left),
      linesAfter: 1,
    );
    _bytes += generator.hr();

    // Info Table
    _bytes += generator.row(
      [
        PosColumn(
          text: 'Invoice',
          width: 8,
          styles: const PosStyles(align: PosAlign.left, bold: true),
        ),
        PosColumn(
          text: 'Due',
          width: 4,
          styles: const PosStyles(align: PosAlign.center, bold: true),
        ),
      ],
    );
    _bytes += generator.hr();
    _bytes += generator.row(
      [
        PosColumn(
          text: dueInvoice.parentInvoiceNumber ?? 'N/A',
          width: 8,
          styles: const PosStyles(
            align: PosAlign.left,
          ),
        ),
        PosColumn(
          text: dueInvoice.totalDue.toString(),
          width: 4,
          styles: const PosStyles(
            align: PosAlign.center,
          ),
        ),
      ],
    );
    _bytes += generator.hr();
    _bytes += generator.row(
      [
        PosColumn(
          text: 'Payment Type:',
          width: 8,
          styles: const PosStyles(align: PosAlign.left),
        ),
        PosColumn(
          text: dueInvoice.paymentMethod ?? 'N/A',
          width: 4,
          styles: const PosStyles(align: PosAlign.right),
        ),
      ],
    );
    _bytes += generator.row(
      [
        PosColumn(
          text: 'Payment Amount:',
          width: 8,
          styles: const PosStyles(align: PosAlign.left),
        ),
        PosColumn(
          text: dueInvoice.paidAmount.toString(),
          width: 4,
          styles: const PosStyles(align: PosAlign.right),
        ),
      ],
    );
    _bytes += generator.row(
      [
        PosColumn(
          text: 'Remaining Due:',
          width: 8,
          styles: const PosStyles(align: PosAlign.left),
        ),
        PosColumn(
          text: dueInvoice.remainingDueAmount.toString(),
          width: 4,
          styles: const PosStyles(
            align: PosAlign.right,
          ),
        ),
      ],
    );
    _bytes += generator.hr(ch: '=', linesAfter: 1);

    // Gratitude Message
    if (dueInvoice.user?.gratitudeMessage != null) {
      _bytes += generator.text(
        dueInvoice.user?.gratitudeMessage ?? '',
        styles: const PosStyles(align: PosAlign.center, bold: true),
      );
    }

    // Invoice Date
    _bytes += generator.text(
      dueInvoice.invoiceDate ?? "N/A",
      styles: const PosStyles(align: PosAlign.center),
      linesAfter: 1,
    );

    // QR Code - Eliminado por configuración del cliente
    // _bytes += generator.qrcode(dueInvoice.user?.developByLink ?? AppConfig.orgDomain);
    _bytes += generator.text(
      '${dueInvoice.user?.developByLabel ?? "Developed By"} ${dueInvoice.user?.developBy ?? "N/A"}',
      styles: const PosStyles(align: PosAlign.center),
      linesAfter: 1,
    );

    return _bytes;
  }

  Future<List<int>> _mm80(Generator generator) async {
    List<int> _bytes = [];

    // Business Name
    _bytes += generator.text(
      dueInvoice.user?.business?.companyName ?? "N/A",
      styles: const PosStyles(
        align: PosAlign.center,
        height: PosTextSize.size2,
        width: PosTextSize.size2,
      ),
      linesAfter: 1,
    );

    // Seller Name
    _bytes += generator.text(
      'Seller :${dueInvoice.user?.role?.isShopOwner == true ? 'Admin' : dueInvoice.user?.name ?? 'N/A'}',
      styles: const PosStyles(align: PosAlign.center),
    );

    // Address
    if (dueInvoice.user?.business?.address != null) {
      _bytes += generator.text(
        dueInvoice.user?.business?.address ?? "",
        styles: const PosStyles(align: PosAlign.center),
      );
    }

    // Business Phone Number
    if (dueInvoice.user?.business?.phoneNumber != null) {
      _bytes += generator.text(
        dueInvoice.user?.business?.phoneNumber ?? '',
        styles: const PosStyles(align: PosAlign.center),
        linesAfter: 1,
      );
    }

    // VAT Info
    if (dueInvoice.user?.business?.vatNo != null) {
      _bytes += generator.text(
        "${dueInvoice.user?.business?.vatName ?? 'VAT No :'}${dueInvoice.user?.business?.vatNo ?? 'N/A'}",
        styles: const PosStyles(align: PosAlign.center),
      );
    }

    // Receipt Flag
    _bytes += generator.text(
      'RECEIPT',
      styles: const PosStyles(
        bold: true,
        underline: true,
        align: PosAlign.center,
        height: PosTextSize.size2,
        width: PosTextSize.size2,
      ),
      linesAfter: 1,
    );

    // Invoice Number & Date
    _bytes += generator.row(
      [
        // Invoice Number
        PosColumn(
          text: 'Receipt No: ${dueInvoice.invoiceNumber ?? 'Not Provided'}',
          width: 6,
          styles: const PosStyles(align: PosAlign.left),
        ),

        // Invoice Date
        PosColumn(
          text: 'Date: ${dueInvoice.invoiceDate ?? "N/A"}',
          width: 6,
          styles: const PosStyles(align: PosAlign.right),
        ),
      ],
    );

    // Customer Name & Time
    _bytes += generator.row(
      [
        // Customer Name
        PosColumn(
          text: 'Name: ${dueInvoice.party?.name ?? 'Guest'}',
          width: 6,
          styles: const PosStyles(align: PosAlign.left),
        ),

        // Invoice Time
        PosColumn(
          text: 'Time: ${dueInvoice.invoiceTime ?? "N/A"}',
          width: 6,
          styles: const PosStyles(align: PosAlign.right),
        ),
      ],
    );

    // Party Mobile & Sales By
    _bytes += generator.row(
      [
        // Party Mobile
        PosColumn(
          text: 'Mobile: ${dueInvoice.party?.phone ?? ''}',
          width: 6,
          styles: const PosStyles(align: PosAlign.left),
        ),

        // Sales By
        PosColumn(
          text:
              '${dueInvoice.isPurchaseDue ? "Paid By" : "Received By"}: ${dueInvoice.user?.role?.isShopOwner == true ? 'Admin' : dueInvoice.user?.role ?? "N/A"}',
          width: 6,
          styles: const PosStyles(align: PosAlign.right),
        ),
      ],
    );
    _bytes += generator.emptyLines(1);

    // Info Table
    _bytes += generator.hr();
    _bytes += generator.row(
      [
        PosColumn(
          text: 'SL',
          width: 1,
          styles: const PosStyles(align: PosAlign.left, bold: true),
        ),
        PosColumn(
          text: 'Invoice',
          width: 8,
          styles: const PosStyles(align: PosAlign.left, bold: true),
        ),
        PosColumn(
          text: 'Due',
          width: 3,
          styles: const PosStyles(align: PosAlign.center, bold: true),
        ),
      ],
    );
    _bytes += generator.hr();
    _bytes += generator.row(
      [
        PosColumn(
          text: '1',
          width: 1,
          styles: const PosStyles(
            align: PosAlign.left,
          ),
        ),
        PosColumn(
          text: dueInvoice.parentInvoiceNumber ?? 'N/A',
          width: 8,
          styles: const PosStyles(
            align: PosAlign.left,
          ),
        ),
        PosColumn(
          text: dueInvoice.totalDue.toString(),
          width: 3,
          styles: const PosStyles(
            align: PosAlign.center,
          ),
        ),
      ],
    );
    _bytes += generator.hr();
    //--------------------Summary--------------------//
    // Paid Amount
    _bytes += generator.row(
      [
        PosColumn(
          text: 'Payment Amount:',
          width: 9,
          styles: const PosStyles(align: PosAlign.right),
        ),
        PosColumn(
          text: (dueInvoice.paidAmount ?? 0).commaSeparated(),
          width: 3,
          styles: const PosStyles(align: PosAlign.right),
        ),
      ],
    );

    // Remaining Due
    _bytes += generator.row(
      [
        PosColumn(
          text: 'Remaining Due:',
          width: 9,
          styles: const PosStyles(align: PosAlign.right),
        ),
        PosColumn(
          text: (dueInvoice.remainingDueAmount ?? 0).commaSeparated(),
          width: 3,
          styles: const PosStyles(align: PosAlign.right),
        ),
      ],
    );
    _bytes += generator.text('                    ----------------------------');

    // Payment Type
    _bytes += generator.text(
      'Payment Type: ${dueInvoice.paymentMethod ?? 'N/A'}',
      linesAfter: 1,
    );
    //--------------------Summary--------------------//

    //--------------------Footer--------------------//
    // Gratitude Message
    if (dueInvoice.user?.gratitudeMessage != null) {
      _bytes += generator.text(
        dueInvoice.user?.gratitudeMessage ?? '',
        styles: const PosStyles(align: PosAlign.center, bold: true),
        linesAfter: 1,
      );
    }

    // QR Code - Eliminado por configuración del cliente
    // _bytes += generator.qrcode(dueInvoice.user?.developByLink ?? AppConfig.orgDomain);
    _bytes += generator.text(
      '${dueInvoice.user?.developByLabel ?? "Developed By"} ${dueInvoice.user?.developBy ?? "N/A"}',
      styles: const PosStyles(align: PosAlign.center),
      linesAfter: 1,
    );
    //--------------------Footer--------------------//

    return _bytes;
  }
}
