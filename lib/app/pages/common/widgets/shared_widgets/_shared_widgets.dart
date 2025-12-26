import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
// import 'package:open_filex/open_filex.dart';
import 'package:printing/printing.dart';
import 'package:share_plus/share_plus.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../widgets/widgets.dart';
import '../../../../data/repository/repository.dart';
import '../widgets.dart';
export '_pdf_generator_providers.dart';
export '_thermal_invoice_providers.dart';

abstract class SharedWidgets {
  //------------------------Sign Out------------------------//
  static Future<void> handleSignOut(
    BuildContext ctx, {
    List<ProviderBase>? disposeProviders,
  }) async {
    final t = Translations.of(ctx);

    final _confirmation = await showAdaptiveDialog<bool>(
      context: ctx,
      builder: (popContext) => InfoDialog.confirmation(
        // title: 'Log out?',
        title: t.pages.confirmationDialog.title,
        // description: 'Are you sure to logout?',
        description: t.pages.confirmationDialog.message,
        onDecide: (v) => Navigator.of(popContext).pop(v),
        swapAction: true,
        // acceptionText: 'No',
        acceptionText: t.pages.confirmationDialog.acceptationText,
        // rejectionText: 'Log Out',
        rejectionText: t.pages.confirmationDialog.rejectionText,
      ),
    );

    if (ctx.mounted && _confirmation == false) {
      final provider = ProviderScope.containerOf(ctx);

      final _result = await showAsyncLoadingOverlay(
        ctx,
        asyncFunction: () => Future.microtask(
          provider.read(userRepositoryProvider.notifier).signOut,
        ),
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

        return ctx.router.replacePath<void>('/auth/sign-in');
      }
    }
  }
  //------------------------Sign Out------------------------//

  //------------------------Scan Barcode------------------------//
  static Future<String?> scanBarcode(BuildContext context) async {
    try {
      final _result = await SimpleBarcodeScanner.scanBarcode(
        context,
        delayMillis: 2000,
        isShowFlashIcon: true,
        child: Text('data'),
      );

      if (_result != null && _result.trim().toLowerCase() != '-1') {
        return _result;
      }
    } catch (e) {
      if (context.mounted) {
        showCustomSnackBar(
          context,
          content: Text(e.toString()),
          customSnackBarType: CustomOverlayType.error,
        );
      }
    }

    return null;
  }
  //------------------------Scan Barcode------------------------//

  //-------------------------Warn If Exeed Limit------------------------//
  static void warnIfExeedLimit(
    BuildContext context,
    num maxLimit,
    num currentValue, {
    String message = 'You have reached your limit.',
    void Function()? onExeeded,
  }) {
    if (currentValue > maxLimit) {
      showCustomSnackBar(
        context,
        content: Text(message),
        customSnackBarType: CustomOverlayType.info,
      );
      onExeeded?.call();
      return;
    }
  }
  //-------------------------Warn If Exeed Limit------------------------//

  //------------------------Get Item Details------------------------//
  static Future<PItem?> getItemDetails(
    BuildContext ctx,
    int id,
  ) async {
    try {
      final _details = await showAsyncLoadingOverlay(
        ctx,
        asyncFunction: () => ProviderScope.containerOf(ctx).read(itemsRepoProvider).getItemDetails(id),
      );

      if (ctx.mounted && _details.data != null) {
        return _details.data!;
      }
    } catch (error) {
      if (ctx.mounted) {
        showCustomSnackBar(
          ctx,
          content: Text(error.toString()),
          customSnackBarType: CustomOverlayType.error,
        );
      }
    }
    return null;
  }
  //------------------------Get Item Details------------------------//

  //------------------------Open File------------------------//
  static Future<void> openFile(
    BuildContext ctx,
    Future<File> Function() getFile,
  ) async {
    try {
      final file = await Future.microtask(getFile);

      // final _result = await OpenFilex.open(file.path);

      final _result = await SharePlus.instance.share(
        ShareParams(files: [XFile(file.path)]),
      );

      if (ctx.mounted) {
        if (_result.status == ShareResultStatus.unavailable) {
          showCustomSnackBar(
            ctx,
            content: Text(_result.raw),
            customSnackBarType: CustomOverlayType.error,
          );
        }
      }
    } catch (e) {
      if (ctx.mounted) {
        showCustomSnackBar(
          ctx,
          content: Text(e.toString()),
          customSnackBarType: CustomOverlayType.error,
        );
      }
    }
  }
  //------------------------Open File------------------------//

  //------------------------Print PDF------------------------//
  static Future<void> printPDF(
    BuildContext ctx,
    Future<File> Function() getPDF,
  ) async {
    try {
      final pdfFile = await Future.microtask(getPDF);
      await Printing.layoutPdf(
        onLayout: (format) async => await Future.sync(pdfFile.readAsBytes),
      );
    } catch (e) {
      if (ctx.mounted) {
        showCustomSnackBar(
          ctx,
          content: Text(e.toString()),
          customSnackBarType: CustomOverlayType.error,
        );
      }
    }
  }
  //------------------------Print PDF------------------------//

  //------------------------Online Payment------------------------//
  static Future<bool> handleOnlinePayment(
    BuildContext ctx, {
    required int paymentId,
    num? payableAmount,
  }) async {
    Future<Either<String, String>?> onlinePayment() async {
      return await ctx.router.pushWidget<Either<String, String>>(
        OnlinePaymentView(
          paymentId: paymentId,
          payableAmount: payableAmount,
          onPayment: ctx.router.maybePop,
        ),
      );
    }

    while (true) {
      final _paymentResult = await onlinePayment();
      if (ctx.mounted && _paymentResult != null) {
        if (_paymentResult.isFailure) {
          final didRetry = await ctx.router.pushWidget<bool>(
            PaymentStatusView(
              onPressed: () => ctx.router.maybePop(true),
              status: PaymentStatusViewType.fail,
            ),
          );

          if (didRetry == true) continue;

          return false;
        }

        return true;
      }

      return false;
    }
  }
  //------------------------Online Payment------------------------//

  /*
  //------------------------Download Overlay------------------------//
  static Future<void> handleDownloadOverlay(
    BuildContext ctx,
    String? urlPath,
  ) async {
    if (urlPath == null || urlPath.trim().isEmpty) {
      showCustomSnackBar(
        ctx,
        // content: const Text('Invalid URL!'),
        content: Text(t.exceptions.invalidDownloadUrl),
        customSnackBarType: CustomOverlayType.error,
      );
      return;
    }

    final _result = await showFileDownloadOverlay(
      ctx,
      urlPath: urlPath,
      saveFile: true,
    );

    if (!ctx.mounted) return;

    if (_result.isFailure) {
      showCustomSnackBar(
        ctx,
        content: Text(_result.left!),
        customSnackBarType: CustomOverlayType.error,
      );
      return;
    }

    Future<void> openFile() async {
      try {
        final _openResult = await OpenFile.open(_result.right!.path);
        if (ctx.mounted && _openResult.type != ResultType.done) {
          showCustomSnackBar(
            ctx,
            content: Text(_openResult.message),
            customSnackBarType: CustomOverlayType.error,
          );
        }
      } catch (e) {
        if (ctx.mounted) {
          showCustomSnackBar(
            ctx,
            // content: Text('Error opening file: $e'),
            content: Text(t.exceptions.errorOpeningFile(error: e.toString())),
            customSnackBarType: CustomOverlayType.error,
          );
        }
      }
    }

    showCustomSnackBar(
      ctx,
      // content: const Text('File downloaded successfully!'),
      content: Text(t.common.downloadSuccess),
      action: SnackBarAction(
        // label: 'Open',
        label: t.action.open,
        onPressed: openFile,
        backgroundColor: Theme.of(ctx).colorScheme.onPrimary.withAlpha(50),
      ),
    );
  }
  //------------------------Download Overlay------------------------//

  //-------------Change Property Visibility (Landlord)-------------//
  static Future<void> handleChangePropertyStatus(
    BuildContext context,
    Future<String> Function() callback, {
    bool showFloating = false,
  }) async {
    late final ({bool isError, String message}) _response;

    try {
      final _result = await showAsyncLoadingOverlay(
        context,
        asyncFunction: () => Future.microtask(callback),
      );
      _response = (isError: false, message: _result);
    } catch (e) {
      _response = (isError: true, message: e.toString());
    }

    if (context.mounted) {
      final _theme = Theme.of(context);
      if (showFloating) {
        showCustomSnackBar(
          context,
          snackBar: CustomSnackBar(
            content: Text(
              _response.message,
              style: _theme.textTheme.bodyLarge?.copyWith(
                color: CustomOverlayType.success.foregroundColor,
              ),
            ),
            behavior: SnackBarBehavior.floating,
            backgroundColor: _response.isError
                ? CustomOverlayType.error.backgroundColor
                : CustomOverlayType.success.backgroundColor,
            hitTestBehavior: HitTestBehavior.opaque,
          ),
        );
        return;
      }

      showCustomSnackBar(
        context,
        content: Text(_response.message),
        customSnackBarType: _response.isError
            ? CustomOverlayType.error
            : CustomOverlayType.success,
      );
      return;
    }
  }
  //-------------Change Property Visibility (Landlord)-------------//

  //-------------Launch URL-------------//
  static Future<void> handleLaunchURL(BuildContext context, String url) async {
    try {
      final parsedUrl = Uri.tryParse(url);
      if (parsedUrl == null || !parsedUrl.hasScheme) {
        throw FormatException('Invalid URL format');
      }

      final launched = await launchUrl(
        parsedUrl,
        mode: LaunchMode.externalApplication,
      );

      if (!launched && context.mounted) {
        showCustomSnackBar(
          context,
          content: Text('No application found to handle $url'),
          customSnackBarType: CustomOverlayType.error,
        );
      }
    } catch (e, stackTrace) {
      if (context.mounted) {
        showCustomSnackBar(
          context,
          content: Text('Failed to launch URL: ${e.toString()}'),
          customSnackBarType: CustomOverlayType.error,
        );
      }
      // Consider logging the error for debugging
      debugPrint('URL Launch Error: $e\n$stackTrace');
    }
  }
  //-------------Launch URL-------------//
  */
}
