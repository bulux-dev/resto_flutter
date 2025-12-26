import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../i18n/strings.g.dart';
import '../../../core/core.dart';
import '../../../widgets/widgets.dart';
import '../../../routes/app_routes.gr.dart';
import '../../../data/repository/repository.dart';

part '_sign_up_view_provider.dart';

@RoutePage()
class SignUpView extends ConsumerStatefulWidget {
  const SignUpView({super.key});

  @override
  ConsumerState<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends ConsumerState<SignUpView> {
  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(signupProvider);

    final _theme = Theme.of(context);
    final t = Translations.of(context);

    return FormWrapper(
      builder: (formContext) {
        return Scaffold(
          appBar: CustomAppBar(
            centerTitle: true,
            title: Text(t.common.signUp),
          ),
          extendBodyBehindAppBar: true,
          body: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox.square(
                    dimension: 64,
                    child: Image.asset(DAppImages.appIcon),
                  ),
                  SizedBox.square(dimension: 30),

                  // Prompt
                  Column(
                    children: [
                      Text(
                        t.pages.signUp.title,
                        style: _theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox.square(dimension: 8),
                      Text(
                        t.pages.signUp.subtitle,
                        textAlign: TextAlign.center,
                        style: _theme.textTheme.bodyLarge?.copyWith(
                          color: _theme.colorScheme.secondary,
                        ),
                      ),
                      const SizedBox.square(dimension: 30),

                      // Full Name Field
                      TextFormField(
                        controller: controller.fullNameController,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.name,
                        autofillHints: const [AutofillHints.name],
                        decoration: InputDecoration(
                          labelText: t.form.fullName.label,
                          hintText: t.form.fullName.hint,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return t.form.fullName.errors.required;
                          }

                          return null;
                        },
                      ),
                      const SizedBox.square(dimension: 20),

                      // Email Field
                      TextFormField(
                        controller: controller.emailController,
                        textInputAction: TextInputAction.next,
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

                      // Password Field
                      TextFormField(
                        controller: controller.passwordController,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: controller.obscurePassword,
                        decoration: InputDecoration(
                          labelText: t.form.password.label,
                          hintText: t.form.password.hint,
                          suffixIcon: IconButton(
                            onPressed: controller.toggleObscure,
                            color: _theme.colorScheme.outline,
                            icon: Icon(
                              controller.obscurePassword ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return t.form.password.errors.required;
                          }

                          return null;
                        },
                      ),
                      const SizedBox.square(dimension: 16),

                      // Sign Up Button
                      ElevatedButton(
                        onPressed: () async {
                          if (FormWrapper.validate(formContext)) {
                            return await handleFormSubmit(context);
                          }
                        },
                        child: Text(t.action.signUp),
                      ),
                      const SizedBox.square(dimension: 20),

                      // Sign In Navigator
                      Text.rich(
                        t.pages.signUp.extra.signInNavigator(signIn: (signIn) {
                          return TextSpan(
                            text: signIn,
                            style: TextStyle(
                              color: _theme.colorScheme.primary,
                              fontWeight: FontWeight.w600,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                return context.router.replaceAll(
                                  [SignInRoute()],
                                );
                              },
                          );
                        }),
                        style: _theme.textTheme.bodyMedium?.copyWith(
                          color: _theme.colorScheme.secondary,
                        ),
                      )
                    ],
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
    final controller = ref.read(signupProvider);

    final _result = await showAsyncLoadingOverlay(
      ctx,
      asyncFunction: controller.handleSignUp,
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
        barrierDismissible: false,
        useRootNavigator: false,
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

      await _modalResult.whenComplete(() {
        if (ctx.mounted) {
          ctx.router.push(
            OtpVerificationRoute(
              nextRoute: const MuteHomeRoute(),
              email: controller.emailController.text,
              saveToken: true,
              replaceAllRoutes: true,
            ),
          );
        }
      });
    }
  }
}
