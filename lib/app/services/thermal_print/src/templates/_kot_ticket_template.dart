part of 'templates.dart';

class KOTTicketTemplate extends ThermalInvoiceTemplateBase {
  KOTTicketTemplate(this.kotInvoice) : super(paperSize: kotInvoice.user?.invoiceSize);
  final SalePurchaseThermalInvoiceData kotInvoice;

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
    final _logo = await getNetworkImage(
      kotInvoice.user?.invoiceLogo?.remote,
    );

    // Business Logo
    if (_logo != null) {
      _bytes += generator.image(_logo);
      _bytes += generator.emptyLines(2);
    }

    // Business Name
    _bytes += generator.text(
      kotInvoice.user?.business?.companyName ?? 'N/A',
      styles: const PosStyles(
        align: PosAlign.center,
        height: PosTextSize.size2,
        width: PosTextSize.size2,
      ),
      linesAfter: 1,
    );

    // Order No.
    _bytes += generator.text(
      'Order NO: ${kotInvoice.invoiceNumber ?? 'Guest'}',
      styles: const PosStyles(
        align: PosAlign.center,
        height: PosTextSize.size2,
        width: PosTextSize.size2,
        bold: true,
      ),
      linesAfter: 1,
    );

    // Table No.
    _bytes += generator.text(
      'Table NO: ${kotInvoice.table?.name ?? 'Take Away'}',
      styles: const PosStyles(align: PosAlign.left),
    );

    // Date
    _bytes += generator.text(
      'Date: ${kotInvoice.dateTime ?? 'N/A'}',
      styles: const PosStyles(align: PosAlign.left),
    );
    _bytes += generator.emptyLines(1);

    //--------------------Product Table--------------------//
    // Header
    _bytes += generator.hr();
    _bytes += generator.row(
      [
        PosColumn(
          text: 'SL',
          width: 1,
          styles: const PosStyles(align: PosAlign.left, bold: true),
        ),
        PosColumn(
          text: 'Item',
          width: 8,
          styles: const PosStyles(align: PosAlign.left, bold: true),
        ),
        PosColumn(
          text: 'Qty',
          width: 3,
          styles: const PosStyles(align: PosAlign.center, bold: true),
        ),
      ],
    );
    _bytes += generator.hr();

    // Items
    kotInvoice.items?.asMap().entries.forEach((entry) {
      _bytes += generator.row(
        [
          // SL
          PosColumn(
            text: '${entry.key + 1}',
            width: 1,
            styles: const PosStyles(align: PosAlign.left),
          ),

          // Item Name
          PosColumn(
            text: '${[
              entry.value.name ?? 'Not Defined',
              ...entry.value.options.map((option) => '• ${option.name}: ${option.price}'),
            ].join('\n')}\n',
            width: 8,
            styles: const PosStyles(align: PosAlign.left),
          ),

          // Quantity
          PosColumn(
            text: entry.value.quantity.commaSeparated(),
            width: 3,
            styles: const PosStyles(align: PosAlign.center),
          ),
        ],
        multiLine: false,
      );
    });
    _bytes += generator.hr();
    //--------------------Product Table--------------------//

    // Total Items
    _bytes += generator.row(
      [
        PosColumn(
          text: 'Items: ${kotInvoice.items?.length ?? 0}',
          width: 9,
          styles: const PosStyles(align: PosAlign.left, bold: true),
        ),
        PosColumn(
          text: 'Qty: ${kotInvoice.items?.fold<int>(0, (p, eV) => p + (eV.quantity)) ?? 0}',
          width: 3,
          styles: const PosStyles(align: PosAlign.center, bold: true),
        ),
      ],
    );

    return _bytes;
  }

  Future<List<int>> _mm80(Generator generator) async {
    List<int> _bytes = [];

    final _logo = await getNetworkImage(
      kotInvoice.user?.invoiceLogo?.remote,
    );

    // Business Logo
    if (_logo != null) {
      final _grayscale = img.grayscale(img.copyResize(_logo, width: 184));
      _bytes += generator.imageRaster(_grayscale, imageFn: PosImageFn.bitImageRaster);
      _bytes += generator.emptyLines(2);
    }

    // Business Name
    _bytes += generator.text(
      kotInvoice.user?.business?.companyName ?? 'N/A',
      styles: const PosStyles(
        align: PosAlign.center,
        height: PosTextSize.size2,
        width: PosTextSize.size2,
      ),
      linesAfter: 1,
    );

    // Order No.
    _bytes += generator.text(
      'Order NO: ${kotInvoice.invoiceNumber ?? 'Guest'}',
      styles: const PosStyles(
        align: PosAlign.center,
        height: PosTextSize.size2,
        width: PosTextSize.size2,
        bold: true,
      ),
      linesAfter: 1,
    );

    // Table No.
    _bytes += generator.text(
      'Table NO: ${kotInvoice.table?.name ?? 'Take Away'}',
      styles: const PosStyles(align: PosAlign.left),
    );

    // Date
    _bytes += generator.text(
      'Date: ${kotInvoice.dateTime ?? 'N/A'}',
      styles: const PosStyles(align: PosAlign.left),
    );
    _bytes += generator.emptyLines(1);

    //--------------------Product Table--------------------//
    // Header
    _bytes += generator.hr();
    _bytes += generator.row(
      [
        PosColumn(
          text: 'SL',
          width: 1,
          styles: const PosStyles(align: PosAlign.left, bold: true),
        ),
        PosColumn(
          text: 'Item',
          width: 8,
          styles: const PosStyles(align: PosAlign.left, bold: true),
        ),
        PosColumn(
          text: 'Qty',
          width: 3,
          styles: const PosStyles(align: PosAlign.center, bold: true),
        ),
      ],
    );
    _bytes += generator.hr();

    // Items
    kotInvoice.items?.asMap().entries.forEach((entry) {
      _bytes += generator.row(
        [
          // SL
          PosColumn(
            text: '${entry.key + 1}',
            width: 1,
            styles: const PosStyles(align: PosAlign.left),
          ),

          // Item Name
          PosColumn(
            text: '${[
              entry.value.name ?? 'Not Defined',
              ...entry.value.options.map((option) => '• ${option.name}: ${option.price}'),
            ].join('\n')}\n',
            width: 8,
            styles: const PosStyles(align: PosAlign.left),
          ),

          // Quantity
          PosColumn(
            text: entry.value.quantity.commaSeparated(),
            width: 3,
            styles: const PosStyles(align: PosAlign.center),
          ),
        ],
        multiLine: false,
      );
    });
    _bytes += generator.hr();
    //--------------------Product Table--------------------//

    // Total Items
    _bytes += generator.row(
      [
        PosColumn(
          text: 'Items: ${kotInvoice.items?.length ?? 0}',
          width: 9,
          styles: const PosStyles(align: PosAlign.left, bold: true),
        ),
        PosColumn(
          text: 'Qty: ${kotInvoice.items?.fold<int>(0, (p, eV) => p + (eV.quantity)) ?? 0}',
          width: 3,
          styles: const PosStyles(align: PosAlign.center, bold: true),
        ),
      ],
    );

    return _bytes;
  }
}
