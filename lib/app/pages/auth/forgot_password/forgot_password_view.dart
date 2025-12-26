import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';

import '../../../../i18n/strings.g.dart';
import '../../../data/repository/repository.dart';
import '../../../routes/app_routes.gr.dart';
import '../../../widgets/widgets.dart';

part '_forgot_password_view_provider.dart';

@RoutePage()
class ForgotPasswordView extends ConsumerStatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  ConsumerState<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends ConsumerState<ForgotPasswordView> {
  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(forgotPasswordProvider);

    final _theme = Theme.of(context);
    final t = Translations.of(context);

    return FormWrapper(
      builder: (formContext) {
        return Scaffold(
          appBar: CustomAppBar(
            centerTitle: true,
            title: Text(t.common.forgotPassword),
          ),
          extendBodyBehindAppBar: true,
          body: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Text(
                    t.pages.forgotPassword.title,
                    style: _theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox.square(dimension: 8),
                  Text(
                    t.pages.forgotPassword.subtitle,
                    textAlign: TextAlign.center,
                    style: _theme.textTheme.bodyLarge,
                  ),
                  const SizedBox.square(dimension: 30),

                  // Email Field
                  TextFormField(
                    controller: controller.emailController,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.emailAddress,
                    autofillHints: const [AutofillHints.email],
                    decoration: InputDecoration(
                      labelText: t.form.email.label,
                      hintText: t.form.email.hint,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return t.form.email.errors.required;
                      }
                      if (!value.isEmail) {
                        return t.form.email.errors.invalid;
                      }
                      return null;
                    },
                  ),
                  const SizedBox.square(dimension: 20),

                  // Sign In Button
                  ElevatedButton(
                    onPressed: () async {
                      if (FormWrapper.validate(formContext)) {
                        return await handleFormSubmit(context);
                      }
                    },
                    child: Text(t.action.kContinue),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ).unfocusPrimary();
  }

  Future<void> handleFormSubmit(BuildContext ctx) async {
    final controller = ref.read(forgotPasswordProvider);

    final _result = await showAsyncLoadingOverlay(
      ctx,
      asyncFunction: controller.handleForgotPassword,
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
      final _modalResult = showCustomDialog(
        context: ctx,
        builder: (popContext) {
          Future.delayed(const Duration(milliseconds: 1500), () {
            if (popContext.mounted) {
              Navigator.of(popContext).pop();
            }
          });
          return PopScope(
            canPop: false,
            child: VerificationDialog(email: controller.emailController.text),
          );
        },
      );

      _modalResult.whenComplete(() async {
        final _email = controller.emailController.text;
        if (ctx.mounted) {
          ctx.router.push(
            OtpVerificationRoute(
              email: _email,
              nextRoute: ResetPasswordRoute(email: _email),
            ),
          );
        }
      });
    }
  }
}
