part of 'templates.dart';

class PurchaseThermalInvoiceTemplate extends ThermalInvoiceTemplateBase {
  PurchaseThermalInvoiceTemplate(this.purchaseInvoice) : super(paperSize: purchaseInvoice.user?.invoiceSize);
  final SalePurchaseThermalInvoiceData purchaseInvoice;

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
    //--------------------Footer--------------------//

    return _bytes;
  }

  Future<List<int>> _mm58(Generator generator) async {
    List<int> _bytes = [];

    final _logo = await getNetworkImage(
      purchaseInvoice.user?.invoiceLogo?.remote,
    );

    // Business Logo
    if (_logo != null) {
      _bytes += generator.image(_logo);
    }

    // Business Name
    _bytes += generator.text(
      purchaseInvoice.user?.business?.companyName ?? "N/A",
      styles: const PosStyles(
        align: PosAlign.center,
        height: PosTextSize.size2,
        width: PosTextSize.size2,
      ),
      linesAfter: 1,
    );

    // Seller Info
    _bytes += generator.text(
      'Seller: ${purchaseInvoice.user?.role?.isShopOwner == true ? 'Admin' : purchaseInvoice.user?.role ?? "N/A"}',
      styles: const PosStyles(align: PosAlign.center),
    );

    // Shop Address
    if (purchaseInvoice.user?.business?.address != null) {
      _bytes += generator.text(
        purchaseInvoice.user!.business!.address!,
        styles: const PosStyles(
          align: PosAlign.center,
        ),
      );
    }

    // VAT Info
    if (purchaseInvoice.user?.business?.vatName != null) {
      _bytes += generator.text(
        "${purchaseInvoice.user?.business?.vatName ?? 'VAT No'}: ${purchaseInvoice.user?.business?.vatNo ?? ''}",
        styles: const PosStyles(align: PosAlign.center),
      );
    }

    // Business Phone Number
    if (purchaseInvoice.user?.business?.phoneNumber != null) {
      _bytes += generator.text(
        'Tel: ${purchaseInvoice.user?.business?.phoneNumber ?? 'N/A'}',
        styles: const PosStyles(align: PosAlign.center),
        linesAfter: 1,
      );
    }

    // Supplier Name
    _bytes += generator.text(
      'Name: ${purchaseInvoice.party?.name ?? 'Guest'}',
      styles: const PosStyles(align: PosAlign.left),
    );

    // Supplier Phone Number
    if (purchaseInvoice.party?.phone != null) {
      _bytes += generator.text(
        'Mobile: ${purchaseInvoice.party?.phone ?? 'Not Provided'}',
        styles: const PosStyles(align: PosAlign.left),
      );
    }

    // Invoice Number
    _bytes += generator.text(
      'Purchase Invoice: ${purchaseInvoice.invoiceNumber}',
      styles: const PosStyles(align: PosAlign.left),
      linesAfter: 1,
    );
    _bytes += generator.hr();

    //--------------------Product Table--------------------//
    // Header
    _bytes += generator.row(
      [
        PosColumn(
          text: 'Item',
          width: 5,
          styles: const PosStyles(align: PosAlign.left, bold: true),
        ),
        PosColumn(
          text: 'Cost',
          width: 2,
          styles: const PosStyles(align: PosAlign.center, bold: true),
        ),
        PosColumn(
          text: 'Qty',
          width: 2,
          styles: const PosStyles(align: PosAlign.center, bold: true),
        ),
        PosColumn(
          text: 'Total',
          width: 3,
          styles: const PosStyles(align: PosAlign.right, bold: true),
        ),
      ],
    );
    _bytes += generator.hr();

    // Items
    purchaseInvoice.items?.forEach((item) {
      _bytes += generator.row(
        [
          PosColumn(
            text: item.name ?? 'Not Defined',
            width: 5,
            styles: const PosStyles(align: PosAlign.left),
          ),
          PosColumn(
            text: item.unitPrice.toString(),
            width: 2,
            styles: const PosStyles(align: PosAlign.center),
          ),
          PosColumn(
            text: item.quantity.toString(),
            width: 2,
            styles: const PosStyles(align: PosAlign.center),
          ),
          PosColumn(
            text: item.total.toString(),
            width: 3,
            styles: const PosStyles(align: PosAlign.right),
          ),
        ],
      );
    });
    _bytes += generator.hr();

    //--------------------Product Table--------------------//

    //--------------------Summary--------------------//
    // Total
    _bytes += generator.row(
      [
        PosColumn(
          text: 'Total',
          width: 8,
          styles: const PosStyles(align: PosAlign.left),
        ),
        PosColumn(
          text: purchaseInvoice.subtotal.toString(),
          width: 4,
          styles: const PosStyles(align: PosAlign.right),
        ),
      ],
    );

    // Discount
    _bytes += generator.row(
      [
        PosColumn(
          text: 'Discount',
          width: 8,
          styles: const PosStyles(align: PosAlign.left),
        ),
        PosColumn(
          text: (purchaseInvoice.discountAmount ?? 0).toString(),
          width: 4,
          styles: const PosStyles(align: PosAlign.right),
        ),
      ],
    );

    // VAT/Tax
    _bytes += generator.row(
      [
        PosColumn(
          text: purchaseInvoice.vat?.name ?? 'Tax',
          width: 8,
          styles: const PosStyles(align: PosAlign.left),
        ),
        PosColumn(
          text: (purchaseInvoice.vatAmount ?? 0).toString(),
          width: 4,
          styles: const PosStyles(align: PosAlign.right),
        ),
      ],
    );

    // Total Payable
    _bytes += generator.row(
      [
        PosColumn(
          text: 'Total Payable:',
          width: 8,
          styles: const PosStyles(align: PosAlign.left, bold: true),
        ),
        PosColumn(
          text: (purchaseInvoice.totalAmount ?? 0).toString(),
          width: 4,
          styles: const PosStyles(align: PosAlign.right, bold: true),
        ),
      ],
    );

    // Paid Amount
    _bytes += generator.row([
      PosColumn(
        text: 'Paid Amount:',
        width: 8,
        styles: const PosStyles(align: PosAlign.left),
      ),
      PosColumn(
        text: (purchaseInvoice.paidAmount ?? 0).toString(),
        width: 4,
        styles: const PosStyles(align: PosAlign.right),
      ),
    ]);

    // Due Amount
    if ((purchaseInvoice.dueAmount ?? 0) > 0) {
      _bytes += generator.row(
        [
          PosColumn(
            text: 'Due Amount:',
            width: 8,
            styles: const PosStyles(align: PosAlign.left),
          ),
          PosColumn(
            text: (purchaseInvoice.dueAmount ?? 0).toString(),
            width: 4,
            styles: const PosStyles(align: PosAlign.right),
          ),
        ],
      );
    }

    // Payment Method
    _bytes += generator.row(
      [
        PosColumn(
          text: 'Payment Type:',
          width: 8,
          styles: const PosStyles(align: PosAlign.left),
        ),
        PosColumn(
          text: purchaseInvoice.paymentMethod ?? 'N/A',
          width: 4,
          styles: const PosStyles(align: PosAlign.right),
        ),
      ],
    );
    _bytes += generator.hr(ch: '=', linesAfter: 1);
    //--------------------Summary--------------------//

    //--------------------Footer--------------------//
    // Gratitude Message
    if (purchaseInvoice.user?.gratitudeMessage != null) {
      _bytes += generator.text(
        purchaseInvoice.user?.gratitudeMessage ?? '',
        styles: const PosStyles(align: PosAlign.center, bold: true),
      );
    }

    // Purchase Date Time
    _bytes += generator.text(
      purchaseInvoice.dateTime ?? 'N/A',
      styles: const PosStyles(align: PosAlign.center),
      linesAfter: 1,
    );

    // QR Code - Eliminado por configuración del cliente
    // _bytes += generator.qrcode(purchaseInvoice.user?.developByLink ?? AppConfig.orgDomain);
    _bytes += generator.text(
      '${purchaseInvoice.user?.developByLabel ?? "Developed By"} ${purchaseInvoice.user?.developBy ?? "N/A"}',
      styles: const PosStyles(align: PosAlign.center),
      linesAfter: 1,
    );

    return _bytes;
  }

  Future<List<int>> _mm80(Generator generator) async {
    List<int> _bytes = [];

    final _logo = await getNetworkImage(
      purchaseInvoice.user?.invoiceLogo?.remote,
    );

    // Business Logo
    if (_logo != null) {
      final _grayscale = img.grayscale(img.copyResize(_logo, width: 184));
      _bytes += generator.imageRaster(_grayscale, imageFn: PosImageFn.bitImageRaster);
    }

    // Business Name
    _bytes += generator.text(
      purchaseInvoice.user?.business?.companyName ?? "N/A",
      styles: const PosStyles(
        align: PosAlign.center,
        height: PosTextSize.size2,
        width: PosTextSize.size2,
      ),
      linesAfter: 1,
    );

    // Shop Address
    if (purchaseInvoice.user?.business?.address != null) {
      _bytes += generator.text(
        'Address: ${purchaseInvoice.user!.business!.address!}',
        styles: const PosStyles(
          align: PosAlign.center,
        ),
      );
    }

    // Business Phone Number
    if (purchaseInvoice.user?.business?.phoneNumber != null) {
      _bytes += generator.text(
        'Mobile: ${purchaseInvoice.user!.business!.phoneNumber}',
        styles: const PosStyles(align: PosAlign.center),
      );
    }

    // VAT Info
    if (purchaseInvoice.user?.business?.vatName != null) {
      _bytes += generator.text(
        "${purchaseInvoice.user?.business?.vatName ?? 'VAT No'}: ${purchaseInvoice.user?.business?.vatNo ?? ''}",
        styles: const PosStyles(align: PosAlign.center),
      );
    }
    _bytes += generator.emptyLines(1);

    // Invoice Flag
    _bytes += generator.text(
      'INVOICE',
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
          text: 'Order No: ${purchaseInvoice.invoiceNumber ?? 'Not Provided'}',
          width: 6,
          styles: const PosStyles(align: PosAlign.left),
        ),

        // Invoice Date
        PosColumn(
          text: 'Date: ${purchaseInvoice.dateTime ?? 'N/A'}',
          width: 6,
          styles: const PosStyles(align: PosAlign.right),
        ),
      ],
    );

    // Supplier Name & Time
    _bytes += generator.row(
      [
        // Supplier Name
        PosColumn(
          text: 'Name: ${purchaseInvoice.party?.name ?? 'N/A'}',
          width: 6,
          styles: const PosStyles(align: PosAlign.left),
        ),

        // Invoice Time
        PosColumn(
          text: 'Time: ${purchaseInvoice.invoiceTime}',
          width: 6,
          styles: const PosStyles(align: PosAlign.right),
        ),
      ],
    );

    // Supplier Mobile & Purchase By
    _bytes += generator.row(
      [
        // Supplier Mobile
        PosColumn(
          text: 'Mobile: ${purchaseInvoice.party?.phone ?? ''}',
          width: 6,
          styles: const PosStyles(align: PosAlign.left),
        ),

        // Purchase By
        PosColumn(
          text:
              'Purchase By: ${purchaseInvoice.user?.role?.isShopOwner == true ? 'Admin' : purchaseInvoice.user?.role ?? "N/A"}',
          width: 6,
          styles: const PosStyles(align: PosAlign.right),
        ),
      ],
    );
    _bytes += generator.emptyLines(1);

    //--------------------Product Table--------------------//
    // Header
    _bytes += generator.hr();
    _bytes += generator.row([
      PosColumn(
        text: 'SL',
        width: 1,
        styles: const PosStyles(align: PosAlign.left, bold: true),
      ),
      PosColumn(
        text: 'Item',
        width: 5,
        styles: const PosStyles(align: PosAlign.left, bold: true),
      ),
      PosColumn(
        text: 'Qty',
        width: 2,
        styles: const PosStyles(align: PosAlign.center, bold: true),
      ),
      PosColumn(
        text: 'Cost',
        width: 2,
        styles: const PosStyles(align: PosAlign.center, bold: true),
      ),
      PosColumn(
        text: 'Amount',
        width: 2,
        styles: const PosStyles(align: PosAlign.right, bold: true),
      ),
    ]);
    _bytes += generator.hr();

    // Items
    purchaseInvoice.items?.asMap().entries.forEach((entry) {
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
            text: entry.value.name ?? 'Not Defined',
            width: 5,
            styles: const PosStyles(
              align: PosAlign.left,
            ),
          ),

          // Qty
          PosColumn(
            text: entry.value.quantity.commaSeparated(),
            width: 2,
            styles: const PosStyles(align: PosAlign.center),
          ),

          // Cost Price
          PosColumn(
            text: entry.value.unitPrice.commaSeparated(),
            width: 2,
            styles: const PosStyles(align: PosAlign.center),
          ),

          // Amount
          PosColumn(
            text: entry.value.total.commaSeparated(),
            width: 2,
            styles: const PosStyles(align: PosAlign.right),
          ),
        ],
      );
    });
    _bytes += generator.hr();
    //--------------------Product Table--------------------//

    //--------------------Summary--------------------//
    // Sub Total
    _bytes += generator.row(
      [
        PosColumn(
          text: 'Sub-total:',
          width: 9,
          styles: const PosStyles(align: PosAlign.right),
        ),
        PosColumn(
          text: (purchaseInvoice.subtotal ?? 0).commaSeparated(),
          width: 3,
          styles: const PosStyles(align: PosAlign.right),
        ),
      ],
    );

    // Discount
    if (purchaseInvoice.hasDiscount) {
      _bytes += generator.row(
        [
          PosColumn(
            text: 'Discount ${purchaseInvoice.discountPercent ?? 0}%:',
            width: 9,
            styles: const PosStyles(align: PosAlign.right),
          ),
          PosColumn(
            text: (purchaseInvoice.discountAmount ?? 0).toString(),
            width: 3,
            styles: const PosStyles(align: PosAlign.right),
          ),
        ],
      );
    }

    // VAT/Tax
    if (purchaseInvoice.hasVat) {
      _bytes += generator.row(
        [
          PosColumn(
            text: "${purchaseInvoice.vat?.name ?? 'VAT'} ${purchaseInvoice.vat?.rate ?? 0}%:",
            width: 9,
            styles: const PosStyles(align: PosAlign.right),
          ),
          PosColumn(
            text: (purchaseInvoice.vatAmount ?? 0).commaSeparated(),
            width: 3,
            styles: const PosStyles(align: PosAlign.right),
          ),
        ],
      );
    }
    _bytes += generator.text('                    ----------------------------');

    // Total Payable
    _bytes += generator.row(
      [
        PosColumn(
          text: 'Total Payable:',
          width: 9,
          styles: const PosStyles(align: PosAlign.right, bold: true),
        ),
        PosColumn(
          text: (purchaseInvoice.totalAmount ?? 0).commaSeparated(),
          width: 3,
          styles: const PosStyles(align: PosAlign.right, bold: true),
        ),
      ],
    );

    // Paid Amount
    _bytes += generator.row([
      PosColumn(
        text: 'Paid Amount:',
        width: 9,
        styles: const PosStyles(align: PosAlign.right),
      ),
      PosColumn(
        text: (purchaseInvoice.paidAmount ?? 0).toString(),
        width: 3,
        styles: const PosStyles(align: PosAlign.right),
      ),
    ]);

    // Due Amount
    if (purchaseInvoice.hasDue) {
      _bytes += generator.row(
        [
          PosColumn(
            text: 'Due Amount:',
            width: 9,
            styles: const PosStyles(align: PosAlign.right),
          ),
          PosColumn(
            text: (purchaseInvoice.dueAmount ?? 0).commaSeparated(),
            width: 3,
            styles: const PosStyles(align: PosAlign.right),
          ),
        ],
      );
    }
    _bytes += generator.hr();

    // Payment Type
    _bytes += generator.text(
      'Payment Type: ${purchaseInvoice.paymentMethod ?? 'N/A'}',
      linesAfter: 1,
    );
    //--------------------Summary--------------------//

    //--------------------Footer--------------------//
    // Gratitude/Post Sale Message
    if (purchaseInvoice.user?.gratitudeMessage != null) {
      _bytes += generator.text(
        purchaseInvoice.user?.gratitudeMessage ?? '',
        styles: const PosStyles(align: PosAlign.center, bold: true),
      );
      _bytes += generator.text(
        purchaseInvoice.dateTime ?? '',
        styles: const PosStyles(align: PosAlign.center),
        linesAfter: 1,
      );
    }

    // Note
    if (purchaseInvoice.user?.invoiceNoteLabel != null || purchaseInvoice.user?.invoiceNote != null) {
      _bytes += generator.text(
        '${purchaseInvoice.user?.invoiceNoteLabel ?? ''}: ${purchaseInvoice.user?.invoiceNote ?? ''}',
        styles: const PosStyles(align: PosAlign.center),
        linesAfter: 1,
      );
    }

    // QR Code - Eliminado por configuración del cliente
    // _bytes += generator.qrcode(purchaseInvoice.user?.developByLink ?? AppConfig.orgDomain);
    _bytes += generator.text(
      '${purchaseInvoice.user?.developByLabel ?? "Developed By"} ${purchaseInvoice.user?.developBy ?? "N/A"}',
      styles: const PosStyles(align: PosAlign.center),
      linesAfter: 1,
    );
    //--------------------Footer--------------------//

    return _bytes;
  }
}
