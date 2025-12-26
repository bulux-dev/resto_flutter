import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../i18n/strings.g.dart';
import '../../../core/core.dart';
import '../../../data/repository/repository.dart';
import '../../../widgets/widgets.dart';
import '../../../routes/app_routes.gr.dart';

part '_sign_in_view_provider.dart';

@RoutePage()
class SignInView extends ConsumerStatefulWidget {
  const SignInView({super.key});

  @override
  ConsumerState<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends ConsumerState<SignInView> {
  final selectedUserTypeNotifier = ValueNotifier<StaffTypeInterface>(RestaurantUser.owner);

  @override
  void initState() {
    super.initState();
    ref.read(signinProvider).handleRememberMe();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(signinProvider);

    final _theme = Theme.of(context);
    final t = Translations.of(context);

    return FormWrapper(
      builder: (formContext) {
        return Scaffold(
          appBar: CustomAppBar(
            centerTitle: true,
            title: Text(t.common.signIn),
          ),
          extendBodyBehindAppBar: true,
          body: SafeArea(
            child: ValueListenableBuilder(
              valueListenable: selectedUserTypeNotifier,
              builder: (_, selectedUserType, __) {
                return SingleChildScrollView(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox.square(dimension: 40),
                      SizedBox.square(
                        dimension: 64,
                        child: Image.asset(DAppImages.appIcon),
                      ),
                      SizedBox.square(dimension: 30),

                      Text(
                        // 'Welcome Back',
                        t.pages.signIn.title,
                        style: _theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox.square(dimension: 8),
                      Text(
                        t.pages.signIn.subtitle,
                        textAlign: TextAlign.center,
                        style: _theme.textTheme.bodyLarge?.copyWith(
                          color: _theme.colorScheme.secondary,
                        ),
                      ),
                      const SizedBox.square(dimension: 30),

                      // Email Field
                      TextFormField(
                        controller: controller.emailController,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        autofillHints: const [AutofillHints.email],
                        decoration: InputDecoration(
                          labelText: switch (selectedUserType) {
                            RestaurantUser.owner => t.form.email.label,
                            _ => t.form.loginUserName.label,
                          },
                          hintText: switch (selectedUserType) {
                            RestaurantUser.owner => t.form.email.label,
                            _ => t.form.loginUserName.hint,
                          },
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return switch (selectedUserType) {
                              RestaurantUser.owner => t.form.email.errors.required,
                              _ => t.form.loginUserName.errors.required,
                            };
                          }

                          if (selectedUserType == RestaurantUser.owner && !value.isEmail) {
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

                      // Remember Me & Forgot Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Remember Me
                          Text.rich(
                            TextSpan(
                              children: [
                                WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: SizedBox.fromSize(
                                    size: Size.square(20),
                                    child: Checkbox(
                                      value: controller.rememberMe,
                                      onChanged: controller.toggleRememberMe,
                                    ),
                                  ).fMarginOnly(right: 8),
                                ),
                                TextSpan(
                                  text: t.pages.signIn.extra.rememberMe,
                                  recognizer: TapGestureRecognizer()..onTap = controller.toggleRememberMe,
                                ),
                              ],
                            ),
                          ),

                          // Forgot Password
                          // Comentado epiob
                          // if (selectedUserType == RestaurantUser.owner)
                          //   Text.rich(
                          //     TextSpan(
                          //       text: t.pages.signIn.extra.forgotPassword,
                          //       recognizer: TapGestureRecognizer()
                          //         ..onTap = () {
                          //           context.router.push(
                          //             const ForgotPasswordRoute(),
                          //           );
                          //         },
                          //     ),
                          //   ),
                        ],
                      ),
                      const SizedBox.square(dimension: 20),

                      // Sign In Button
                      ElevatedButton(
                        onPressed: () async {
                          if (FormWrapper.validate(formContext)) {
                            return await handleFormSubmit(context);
                          }
                        },
                        child: Text(t.action.signIn),
                      ),
                      const SizedBox.square(dimension: 20),

                      // User Type Selector
                      // SimpleResponsiveGridRow(
                      //   verticalSpacing: 12,
                      //   horizontalSpacing: 12,
                      //   children: List.generate(_StaffTypeEnumX.allowedLogins.length, (index) {
                      //     final _button = _StaffTypeEnumX.allowedLogins[index];
                      //     final _isSelected = selectedUserType == _button;

                      //     return SimpleResponsiveGridCol(
                      //       flex: index == 0 ? 12 : 6,
                      //       child: SizedBox(
                      //         height: 44,
                      //         child: FilledButton(
                      //           onPressed: () => selectedUserTypeNotifier.set(_button),
                      //           style: FilledButton.styleFrom(
                      //             backgroundColor: _isSelected ? _button.buttonColor : Colors.transparent,
                      //             foregroundColor: _isSelected ? Colors.white : _button.buttonColor,
                      //             side: _isSelected
                      //                 ? null
                      //                 : BorderSide(
                      //                     color: _button.buttonColor, strokeAlign: BorderSide.strokeAlignCenter),
                      //           ),
                      //           child: Text(_button.label(context)),
                      //         ),
                      //       ),
                      //     );
                      //   }),
                      // ),
                      // const SizedBox.square(dimension: 20),

                      // Sign Up Navigator
                      // Comentado epiob
                      // 
                      // if (selectedUserType == RestaurantUser.owner)
                      //   Text.rich(
                      //     t.pages.signIn.extra.signUpNavigator(
                      //       getStarted: (getStarted) {
                      //         return TextSpan(
                      //             text: getStarted,
                      //             style: TextStyle(
                      //               color: _theme.colorScheme.primary,
                      //               fontWeight: FontWeight.w600,
                      //             ),
                      //             recognizer: TapGestureRecognizer()
                      //               ..onTap = () {
                      //                 context.router.push(const SignUpRoute());
                      //               });
                      //       },
                      //     ),
                      //   ),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    ).unfocusPrimary();
  }

  Future<void> handleFormSubmit(BuildContext ctx) async {
    final controller = ref.read(signinProvider);

    final _result = await showAsyncLoadingOverlay(
      ctx,
      asyncFunction: controller.handleSignIn,
    );

    if (ctx.mounted) {
      if (_result.isFailure) {
        if (_result.left == HttpStatus.created.toString()) {
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
                child: VerificationDialog(
                  email: controller.emailController.text,
                ),
              );
            },
          );

          _modalResult.whenComplete(() async {
            final _email = controller.emailController.text;
            if (ctx.mounted) {
              ctx.router.push(
                OtpVerificationRoute(
                  email: _email,
                  nextRoute: MuteHomeRoute(),
                  replaceAllRoutes: true,
                  saveToken: true,
                ),
              );
            }
          });

          return;
        }

        showCustomSnackBar(
          ctx,
          content: Text(_result.left!),
          customSnackBarType: CustomOverlayType.error,
        );
        return;
      }
      return ctx.router.replacePath<void>('/mute-home');
    }
  }
}

enum RestaurantUser implements StaffTypeInterface {
  owner;

  @override
  String label(BuildContext context) {
    return Translations.of(context).common.restaurant;
  }

  @override
  String get stringValue => 'restaurant';
}

// extension _StaffTypeEnumX on StaffTypeInterface {
//   Color get buttonColor {
//     return switch (this) {
//       RestaurantUser.owner => const Color(0xff18A538),
//       StaffTypeEnum.waiter => const Color(0xff0088FF),
//       StaffTypeEnum.chefs => const Color(0xffCB30E0),
//       _ => Colors.transparent,
//     };
//   }

//   static List<StaffTypeInterface> allowedLogins = [
//     RestaurantUser.owner,
//     StaffTypeEnum.waiter,
//     StaffTypeEnum.chefs,
//   ];
// }
