part of 'printing_option_view.dart';

class PrintingOptionViewNotifier extends ChangeNotifier {
  PrintingOptionViewNotifier(this.ref) : _repo = ref.read(userRepositoryProvider.notifier);
  final Ref ref;
  final UserRepository _repo;

  //-------------------------Form Field Props-------------------------//
  DynamicFileType? avatarImage = DynamicFileType();
  void handleAvatarImage(File? value) {
    if (value == null || value.path.isEmpty) return;
    avatarImage = DynamicFileType(local: value);
    notifyListeners();
  }

  late final shopNameController = TextEditingController(),
      businessPhoneController = TextEditingController(),
      shopAddressController = TextEditingController(),
      noteLabelController = TextEditingController(),
      noteController = TextEditingController(),
      postSaleMessage = TextEditingController();

  bool enablePrintingOption = false;
  void togglePrintingOption([bool? value]) {
    enablePrintingOption = value ?? !enablePrintingOption;
    notifyListeners();
  }

  ThermalPrinterPaperSize? selectedPaperSize = ThermalPrinterPaperSize.mm803Inch;
  void handleSelectPaperSize(ThermalPrinterPaperSize? size) {
    selectedPaperSize = size;
    notifyListeners();
  }
  //-------------------------Form Field Props-------------------------//

  void initEdit() {
    ref.read(userRepositoryProvider).whenData((data) {
      avatarImage = data?.invoiceLogo;
      shopNameController.text = data?.business?.companyName ?? '';
      businessPhoneController.text = data?.business?.phoneNumber ?? '';
      shopAddressController.text = data?.business?.address ?? '';
      noteLabelController.text = data?.invoiceNoteLabel ?? '';
      noteController.text = data?.invoiceNote ?? '';
      postSaleMessage.text = data?.gratitudeMessage ?? '';
      selectedPaperSize = data?.invoiceSize;
      enablePrintingOption = ref.read(autoPrintStateProvider);
    });
  }

  Future<Either<String?, User?>> handleManagePrintingOption() {
    final user = ref.read(userRepositoryProvider).value;
    final _data = (ref.read(userRepositoryProvider).value ?? User()).copyWith(
      invoiceLogo: avatarImage,
      invoiceNoteLabel: noteLabelController.text,
      invoiceNote: noteController.text,
      gratitudeMessage: postSaleMessage.text,
      invoiceSize: selectedPaperSize,
      business: user?.business?.copyWith(
        companyName: shopNameController.text,
        phoneNumber: businessPhoneController.text,
        address: shopAddressController.text,
      ),
    );

    return Future.microtask(() => _repo.updateProfile(_data));
  }
}

final printingOptionViewProvider = ChangeNotifierProvider.autoDispose(
  PrintingOptionViewNotifier.new,
);
