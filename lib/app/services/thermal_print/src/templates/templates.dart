import 'dart:typed_data' show Uint8List;

import 'package:esc_pos_utils_plus/esc_pos_utils_plus.dart';
import 'package:image/image.dart' as img;
import 'package:dio/dio.dart' as dio;

import '../../../../core/core.dart' show ThermalPrinterPaperSize, NumberFormatterExtension;
import '../models/models.dart';

part '_purchase_invoice_template.dart';
part '_sale_invoice_template.dart';
part '_kot_ticket_template.dart';
part '_due_collection_invoice_template.dart';

abstract class ThermalInvoiceTemplateBase {
  const ThermalInvoiceTemplateBase({ThermalPrinterPaperSize? paperSize})
      : paperSize = paperSize ?? ThermalPrinterPaperSize.mm803Inch;

  final ThermalPrinterPaperSize paperSize;

  Future<List<int>> get template;

  Future<img.Image?> getNetworkImage(
    String? url, {
    int width = 100,
    int height = 100,
  }) async {
    if (url == null) return null;

    try {
      final _response = await dio.Dio().get<List<int>>(
        url,
        options: dio.Options(responseType: dio.ResponseType.bytes),
      );

      final _image = img.decodeImage(Uint8List.fromList(_response.data!));
      if (_image == null) return null;

      return img.copyResize(
        _image,
        width: width,
        height: height,
        interpolation: img.Interpolation.average,
      );
    } catch (e) {
      return null;
    }
  }
}

extension ThermalPrinterPaperSizeExt on ThermalPrinterPaperSize {
  PaperSize get escPosSize {
    return switch (this) {
      ThermalPrinterPaperSize.mm582Inch => PaperSize.mm58,
      ThermalPrinterPaperSize.mm803Inch => PaperSize.mm80,
    };
  }
}
