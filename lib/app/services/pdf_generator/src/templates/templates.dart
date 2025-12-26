import 'package:pdf/widgets.dart' as pw;

export '_report_pdf_template.dart';
export '_sale_purchase_invoice_template.dart';

abstract class PDFTemplateBase {
  Future<pw.Page> get page;
  String get fileName;

  Future<pw.Document> generateTemplate() async {
    try {
      final _document = pw.Document();
      _document.addPage(await page);
      return _document;
    } catch (e) {
      throw Exception(e);
    }
  }
}
