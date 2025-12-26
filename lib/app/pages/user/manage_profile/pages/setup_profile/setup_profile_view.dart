part of '../../manage_user_profile.dart';

@RoutePage()
class SetupProfileView extends ConsumerStatefulWidget {
  const SetupProfileView({super.key});

  @override
  ConsumerState<SetupProfileView> createState() => _SetupProfileViewState();
}

class _SetupProfileViewState extends ConsumerState<SetupProfileView> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(manageUserProfileProvider).initData();
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(manageUserProfileProvider);

    final _theme = Theme.of(context);
    final t = Translations.of(context);

    return FormWrapper(
      builder: (formContext) {
        return Scaffold(
          appBar: CustomAppBar(
            centerTitle: true,
            title: Text(t.common.customizeProfile),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // User Image
                Text(
                  // Logo or Image,
                  t.common.imageOrLogo,
                  style: _theme.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox.square(dimension: 12),
                Center(
                  child: SizedBox.square(
                    dimension: 100,
                    child: UserAvatarPicker(
                      image: controller.avatarImage,
                      onPickImage: controller.handleAvatarImage,
                    ),
                  ),
                ),
                const SizedBox.square(dimension: 24),

                // Form Fields
                const BusinessProfileFormFields(fromSetupProfile: true),
              ],
            ),
          ),
          bottomNavigationBar: ElevatedButton(
            onPressed: () async {
              if (FormWrapper.validate(formContext)) {
                return await _handleFormSubmit(context);
              }
            },
            child: Text(t.action.kContinue),
          ).fMarginSymmetric(horizontal: 16, vertical: 12),
        );
      },
    ).unfocusPrimary();
  }

  Future<void> _handleFormSubmit(BuildContext ctx) async {
    final _result = await showAsyncLoadingOverlay(
      ctx,
      asyncFunction: ref.read(manageUserProfileProvider).handleUpdateProfile,
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

      final currProv = ref.read(appLocaleServiceProvider);
      currProv.saveLocale(
        currProv.activeLocale.copyWith(
          currencyName: _result.right?.businessCurrency?.name,
          currencyCode: _result.right?.businessCurrency?.code,
          currencySymbol: _result.right?.businessCurrency?.symbol,
        ),
      );

      ref.read(gEventListenerProvider).fire<UserAuthEvent>(UserAuthEvent.signedIn);

      ctx.router.replaceAll([
        CongratulationRoute(
          nextRoute: const MuteHomeRoute(),
          replaceAll: true,
        ),
      ]);
    }
  }
}
