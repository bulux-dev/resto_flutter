part of 'templates.dart';

class SaleThermalInvoiceTemplate extends ThermalInvoiceTemplateBase {
  SaleThermalInvoiceTemplate(this.saleInvoice, {this.printKOT = false})
      : super(paperSize: saleInvoice.user?.invoiceSize);
  final SalePurchaseThermalInvoiceData saleInvoice;
  final bool printKOT;

  @override
  Future<List<int>> get template async {
    List<int> _bytes = [];
    final _profile = await CapabilityProfile.load();
    final _generator = Generator(paperSize.escPosSize, _profile);

    _bytes += await switch (paperSize) {
      ThermalPrinterPaperSize.mm582Inch => _mm58(_generator),
      ThermalPrinterPaperSize.mm803Inch => _mm80(_generator),
    };

    // KOT Ticket
    if (printKOT) {
      _bytes += await KOTTicketTemplate(saleInvoice).template;
    }

    _bytes += _generator.cut();
    return _bytes;
  }

  Future<List<int>> _mm58(Generator generator) async {
    List<int> _bytes = [];

    final _logo = await getNetworkImage(
      saleInvoice.user?.invoiceLogo?.remote,
    );

    // Business Logo
    if (_logo != null) {
      _bytes += generator.image(_logo);
    }

    // Business Name
    _bytes += generator.text(
      saleInvoice.user?.business?.companyName ?? "N/A",
      styles: const PosStyles(
        align: PosAlign.center,
        height: PosTextSize.size2,
        width: PosTextSize.size2,
      ),
      linesAfter: 1,
    );

    // Seller Info
    _bytes += generator.text(
      'Vendedor: ${saleInvoice.user?.name ?? "N/A"}',
      styles: const PosStyles(align: PosAlign.center),
    );

    // Shop Address
    if (saleInvoice.user?.business?.address != null) {
      _bytes += generator.text(
        saleInvoice.user!.business!.address!,
        styles: const PosStyles(
          align: PosAlign.center,
        ),
      );
    }

    // VAT Info
    if (saleInvoice.user?.business?.vatName != null) {
      _bytes += generator.text(
        "${saleInvoice.user?.business?.vatName ?? 'VAT No'}: ${saleInvoice.user?.business?.vatNo ?? ''}",
        styles: const PosStyles(align: PosAlign.center),
      );
    }

    // Business Phone Number
    if (saleInvoice.user?.business?.phoneNumber != null) {
      _bytes += generator.text(
        'Tel: ${saleInvoice.user?.business?.phoneNumber ?? 'N/A'}',
        styles: const PosStyles(align: PosAlign.center),
        linesAfter: 1,
      );
    }

    // Supplier Name
    _bytes += generator.text(
      'Cliente: ${saleInvoice.party?.name ?? 'Guest'}',
      styles: const PosStyles(align: PosAlign.left),
    );

    // Customer Phone Number
    if (saleInvoice.party?.phone != null) {
      _bytes += generator.text(
        'Mobile: ${saleInvoice.party?.phone ?? 'Not Provided'}',
        styles: const PosStyles(align: PosAlign.left),
      );
    }

    // Invoice Number
    _bytes += generator.text(
      'Factura: ${saleInvoice.invoiceNumber}',
      styles: const PosStyles(align: PosAlign.left),
      linesAfter: 1,
    );
    _bytes += generator.hr();

    //--------------------Product Table--------------------//
    // Header simple para 58mm
    _bytes += generator.text(
      'Producto           Cant.  Total',
      styles: const PosStyles(align: PosAlign.left, bold: true),
    );
    _bytes += generator.hr();

    // Items - formato simple con espacios fijos
    saleInvoice.items?.forEach((item) {
      String productName = item.name ?? 'N/D';
      if (productName.length > 14) {
        productName = productName.substring(0, 14);
      }
      
      // Completar con espacios hasta 16 caracteres
      while (productName.length < 16) {
        productName += ' ';
      }
      
      String quantity = item.quantity.toString();
      if (quantity.length == 1) quantity = ' $quantity';
      
      String total = 'Q${item.total.toStringAsFixed(2)}'; // Cambiar $ por Q
      
      // Formato fijo: "Producto        Qty Total"
      _bytes += generator.text(
        '$productName$quantity  $total',
        styles: const PosStyles(align: PosAlign.left),
      );
      
      // Mostrar variación si existe
      if (item.variation != null && item.variation!.isNotEmpty) {
        _bytes += generator.text(
          '  (${item.variation})',
          styles: const PosStyles(align: PosAlign.left),
        );
      }
      
      // Opciones en líneas separadas
      for (var option in item.options) {
        _bytes += generator.text(
          '  +${option.name}: Q${option.price.toStringAsFixed(2)}', // Cambiar $ por Q
          styles: const PosStyles(align: PosAlign.left),
        );
      }
    });
    _bytes += generator.hr();

    //--------------------Product Table--------------------//

    //--------------------Summary--------------------//
    // Sub Total
    String subLabel = 'Subtotal:';
    while (subLabel.length < 18) {
      subLabel += ' ';
    }
    String subValue = 'Q${(saleInvoice.subtotal ?? saleInvoice.totalAmount ?? 0).toStringAsFixed(2)}';
    _bytes += generator.text(
      subLabel + subValue,
      styles: const PosStyles(align: PosAlign.left),
    );
    _bytes += generator.emptyLines(1);
    // Sub Total
    // _bytes += generator.row(
    //   [
        // PosColumn(
        //   text: 'Sub Total (${saleInvoice.items?.length ?? 0} Items)',
        //   width: 8,
        //   styles: const PosStyles(align: PosAlign.left),
        // ),
    //     PosColumn(
    //       text: saleInvoice.subtotal.toString(),
    //       width: 4,
    //       styles: const PosStyles(align: PosAlign.right),
    //     ),
    //   ],
    // );

    // Discount
    // if (saleInvoice.hasDiscount) {
    //   _bytes += generator.row(
    //     [
    //       PosColumn(
    //         text: 'Discount ${saleInvoice.discountPercent ?? 0}%',
    //         width: 8,
    //         styles: const PosStyles(align: PosAlign.left),
    //       ),
    //       PosColumn(
    //         text: (saleInvoice.discountAmount ?? 0).toString(),
    //         width: 4,
    //         styles: const PosStyles(align: PosAlign.right),
    //       ),
    //     ],
    //   );
    // }

    // VAT/Tax
    // if (saleInvoice.vat != null) {
    //   _bytes += generator.row(
    //     [
    //       PosColumn(
    //         text: "${saleInvoice.vat?.name ?? 'VAT'} ${saleInvoice.vat?.rate ?? 0}%",
    //         width: 8,
    //         styles: const PosStyles(align: PosAlign.left),
    //       ),
    //       PosColumn(
    //         text: (saleInvoice.vatAmount ?? 0).toString(),
    //         width: 4,
    //         styles: const PosStyles(align: PosAlign.right),
    //       ),
    //     ],
    //   );
    // }

    // Tip
    // if (saleInvoice.hasTip) {
    //   _bytes += generator.row(
    //     [
    //       PosColumn(
    //         text: "Tip",
    //         width: 8,
    //         styles: const PosStyles(align: PosAlign.left),
    //       ),
    //       PosColumn(
    //         text: (saleInvoice.tipAmount ?? 0).toString(),
    //         width: 4,
    //         styles: const PosStyles(align: PosAlign.right),
    //       ),
    //     ],
    //   );
    // }

    // Delivery Charge
    // if (saleInvoice.hasDeliveryCharge) {
    //   _bytes += generator.row(
    //     [
    //       PosColumn(
    //         text: "Delivery Charge",
    //         width: 8,
    //         styles: const PosStyles(align: PosAlign.left),
    //       ),
    //       PosColumn(
    //         text: (saleInvoice.deliveryCharge ?? 0).toString(),
    //         width: 4,
    //         styles: const PosStyles(align: PosAlign.right),
    //       ),
    //     ],
    //   );
    // }

    // Total Payable
    String totalLabel = 'Total:';
    while (totalLabel.length < 18) {
      totalLabel += ' ';
    }
    String totalValue = 'Q${(saleInvoice.totalAmount ?? 0).toStringAsFixed(2)}';
    _bytes += generator.text(
      totalLabel + totalValue,
      styles: const PosStyles(align: PosAlign.left, bold: true),
    );

    // Paid Amount
    String paidLabel = 'Pagado:';
    while (paidLabel.length < 18) {
      paidLabel += ' ';
    }
    String paidValue = 'Q${(saleInvoice.paidAmount ?? 0).toStringAsFixed(2)}';
    _bytes += generator.text(
      paidLabel + paidValue,
      styles: const PosStyles(align: PosAlign.left),
    );

    // Due Amount
    if ((saleInvoice.dueAmount ?? 0) > 0) {
      String dueLabel = 'Pendiente:';
      while (dueLabel.length < 18) {
        dueLabel += ' ';
      }
      String dueValue = 'Q${(saleInvoice.dueAmount ?? 0).toStringAsFixed(2)}';
      _bytes += generator.text(
        dueLabel + dueValue,
        styles: const PosStyles(align: PosAlign.left),
      );
    }

    // Payment Method
    String payLabel = 'Pago:';
    while (payLabel.length < 18) {
      payLabel += ' ';
    }
    String payValue = saleInvoice.paymentMethod ?? 'Pendiente';
    _bytes += generator.text(
      payLabel + payValue,
      styles: const PosStyles(align: PosAlign.left),
    );
    _bytes += generator.hr(ch: '=', linesAfter: 1);
    //--------------------Summary--------------------//

    //--------------------Footer--------------------//
    // Thank You
    _bytes += generator.text(
      'Gracias por su compra!',
      styles: const PosStyles(align: PosAlign.center, bold: true),
    );

    // Purchase Date Time
    _bytes += generator.text(
      saleInvoice.dateTime ?? 'N/A',
      styles: const PosStyles(align: PosAlign.center),
      linesAfter: 1,
    );

    /*
    // Note
    _bytes += generator.text(
      'Note: Goods once sold will not be taken back or exchanged.',
      styles: const PosStyles(align: PosAlign.center, bold: false),
      linesAfter: 1,
    );
    */

    // QR Code - Eliminado por configuración del cliente
    // _bytes += generator.qrcode(AppConfig.orgDomain);
    _bytes += generator.text(
      'Desarrollado por: TechnoMart',
      styles: const PosStyles(align: PosAlign.center),
      linesAfter: 1,
    );
    //--------------------Footer--------------------//

    return _bytes;
  }

  Future<List<int>> _mm80(Generator generator) async {
    List<int> _bytes = [];

    final _logo = await getNetworkImage(
      saleInvoice.user?.invoiceLogo?.remote,
    );

    // Business Logo
    if (_logo != null) {
      final _grayscale = img.grayscale(img.copyResize(_logo, width: 184));
      _bytes += generator.imageRaster(_grayscale, imageFn: PosImageFn.bitImageRaster);
    }

    // Business Name
    _bytes += generator.text(
      saleInvoice.user?.business?.companyName ?? "N/A",
      styles: const PosStyles(
        align: PosAlign.center,
        height: PosTextSize.size2,
        width: PosTextSize.size2,
      ),
      linesAfter: 1,
    );

    // Shop Address
    if (saleInvoice.user?.business?.address != null) {
      _bytes += generator.text(
        'Address: ${saleInvoice.user!.business!.address!}',
        styles: const PosStyles(
          align: PosAlign.center,
        ),
      );
    }

    // Business Phone Number
    if (saleInvoice.user?.business?.phoneNumber != null) {
      _bytes += generator.text(
        'Mobile: ${saleInvoice.user!.business!.phoneNumber}',
        styles: const PosStyles(align: PosAlign.center),
      );
    }

    // VAT Info
    if (saleInvoice.user?.business?.vatName != null) {
      _bytes += generator.text(
        "${saleInvoice.user?.business?.vatName ?? 'VAT No'}: ${saleInvoice.user?.business?.vatNo ?? ''}",
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
          text: 'Order No: ${saleInvoice.invoiceNumber ?? 'Not Provided'}',
          width: 6,
          styles: const PosStyles(align: PosAlign.left),
        ),

        // Invoice Date
        PosColumn(
          text: 'Date: ${saleInvoice.invoiceDate}',
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
          text: 'Name: ${saleInvoice.party?.name ?? 'Guest'}',
          width: 6,
          styles: const PosStyles(align: PosAlign.left),
        ),

        // Invoice Time
        PosColumn(
          text: 'Time: ${saleInvoice.invoiceTime}',
          width: 6,
          styles: const PosStyles(align: PosAlign.right),
        ),
      ],
    );

    // Customer Mobile & Sales By
    _bytes += generator.row(
      [
        // Customer Mobile
        PosColumn(
          text: 'Mobile: ${saleInvoice.party?.phone ?? ''}',
          width: 6,
          styles: const PosStyles(align: PosAlign.left),
        ),

        // Sales By
        PosColumn(
          text: 'Sales By: ${saleInvoice.user?.name ?? "N/A"}',
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
        text: 'U.Price',
        width: 2,
        styles: const PosStyles(align: PosAlign.right, bold: true),
      ),
      PosColumn(
        text: 'Amount',
        width: 2,
        styles: const PosStyles(align: PosAlign.right, bold: true),
      ),
    ]);
    _bytes += generator.hr();

    // Items
    saleInvoice.items?.asMap().entries.forEach((entry) {
      final _name = [
        entry.value.name ?? 'Not Defined',
        ...entry.value.options.map((option) => '•${option.name}:${option.price}'),
      ];
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
            text: _name.join(entry.value.options.isNotEmpty ? '\n' : ''),
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

          // U.Price
          PosColumn(
            text: entry.value.unitPrice.commaSeparated(),
            width: 2,
            styles: const PosStyles(align: PosAlign.right),
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
          text: (saleInvoice.subtotal ?? 0).commaSeparated(),
          width: 3,
          styles: const PosStyles(align: PosAlign.right),
        ),
      ],
    );

    // Discount
    if (saleInvoice.hasDiscount) {
      _bytes += generator.row(
        [
          PosColumn(
            text: 'Discount ${saleInvoice.discountPercent ?? 0}%:',
            width: 9,
            styles: const PosStyles(align: PosAlign.right),
          ),
          PosColumn(
            text: (saleInvoice.discountAmount ?? 0).toString(),
            width: 3,
            styles: const PosStyles(align: PosAlign.right),
          ),
        ],
      );
    }

    // VAT/Tax
    if (saleInvoice.hasVat) {
      _bytes += generator.row(
        [
          PosColumn(
            text: "${saleInvoice.vat?.name ?? 'VAT'} ${saleInvoice.vat?.rate ?? 0}%:",
            width: 9,
            styles: const PosStyles(align: PosAlign.right),
          ),
          PosColumn(
            text: (saleInvoice.vatAmount ?? 0).commaSeparated(),
            width: 3,
            styles: const PosStyles(align: PosAlign.right),
          ),
        ],
      );
    }

    // Tip
    if (saleInvoice.hasTip) {
      _bytes += generator.row(
        [
          PosColumn(
            text: "Tip:",
            width: 9,
            styles: const PosStyles(align: PosAlign.right),
          ),
          PosColumn(
            text: (saleInvoice.tipAmount ?? 0).commaSeparated(),
            width: 3,
            styles: const PosStyles(align: PosAlign.right),
          ),
        ],
      );
    }

    // Delivery Charge
    if (saleInvoice.hasDeliveryCharge) {
      _bytes += generator.row(
        [
          PosColumn(
            text: "Delivery Charge:",
            width: 9,
            styles: const PosStyles(align: PosAlign.right),
          ),
          PosColumn(
            text: (saleInvoice.deliveryCharge ?? 0).commaSeparated(),
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
          text: (saleInvoice.totalAmount ?? 0).commaSeparated(),
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
        text: (saleInvoice.paidAmount ?? 0).toString(),
        width: 3,
        styles: const PosStyles(align: PosAlign.right),
      ),
    ]);

    // Due Amount
    if (saleInvoice.hasDue) {
      _bytes += generator.row(
        [
          PosColumn(
            text: 'Due Amount:',
            width: 9,
            styles: const PosStyles(align: PosAlign.right),
          ),
          PosColumn(
            text: (saleInvoice.dueAmount ?? 0).commaSeparated(),
            width: 3,
            styles: const PosStyles(align: PosAlign.right),
          ),
        ],
      );
    }
    _bytes += generator.hr();

    // Payment Type
    _bytes += generator.text(
      'Payment Type: ${saleInvoice.paymentMethod ?? 'N/A'}',
      linesAfter: 1,
    );
    //--------------------Summary--------------------//

    //--------------------Footer--------------------//
    // Gratitude/Post Sale Message
    if (saleInvoice.user?.gratitudeMessage != null) {
      _bytes += generator.text(
        saleInvoice.user?.gratitudeMessage ?? '',
        styles: const PosStyles(align: PosAlign.center, bold: true),
      );
      _bytes += generator.text(
        saleInvoice.dateTime ?? '',
        styles: const PosStyles(align: PosAlign.center),
        linesAfter: 1,
      );
    }

    // Note
    if (saleInvoice.user?.invoiceNoteLabel != null || saleInvoice.user?.invoiceNote != null) {
      _bytes += generator.text(
        '${saleInvoice.user?.invoiceNoteLabel ?? ''}: ${saleInvoice.user?.invoiceNote ?? ''}',
        styles: const PosStyles(align: PosAlign.center),
        linesAfter: 1,
      );
    }

    // QR Code - Eliminado por configuración del cliente
    // _bytes += generator.qrcode(saleInvoice.user?.developByLink ?? AppConfig.orgDomain);
    _bytes += generator.text(
      '${saleInvoice.user?.developByLabel ?? "Developed By"} ${saleInvoice.user?.developBy ?? "N/A"}',
      styles: const PosStyles(align: PosAlign.center),
      linesAfter: 1,
    );
    //--------------------Footer--------------------//

    return _bytes;
  }
}
