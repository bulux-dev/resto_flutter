part of '../../manage_user_profile.dart';

@RoutePage()
class EditProfileView extends ConsumerStatefulWidget {
  const EditProfileView({super.key});

  @override
  ConsumerState<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends ConsumerState<EditProfileView> {
  final editingNotifier = ValueNotifier<bool>(false);

  @override
  void initState() {
    if (context.mounted) {
      ref.read(manageUserProfileProvider).initData();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(manageUserProfileProvider);

    final _theme = Theme.of(context);
    final t = Translations.of(context);

    return ValueListenableBuilder(
      valueListenable: editingNotifier,
      builder: (_, isEditing, child) {
        return FormWrapper(
          useDefaultInvoker: isEditing,
          builder: (formContext) {
            return Scaffold(
              appBar: CustomAppBar(
                title: Text(isEditing ? t.pages.profile.editProfile : t.pages.profile.title),
              ),
              body: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // User Image
                    Center(
                      child: SizedBox.square(
                        dimension: 72,
                        child: UserAvatarPicker(
                          image: controller.avatarImage,
                          onPickImage: !isEditing ? null : controller.handleAvatarImage,
                        ),
                      ),
                    ),
                    const SizedBox.square(dimension: 24),

                    // User Profile Fields
                    ...[
                      Text(
                        // 'Profile Information',
                        t.pages.profile.profileInformation,
                        style: _theme.textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox.square(dimension: 16),

                      // Full Name
                      TextFormField(
                        enabled: isEditing,
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
                        enabled: isEditing,
                        controller: controller.userEmailController,
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

                      // Phone Number
                      TextFormField(
                        enabled: isEditing,
                        controller: controller.userPhoneController,
                        keyboardType: TextInputType.phone,
                        autofillHints: const [AutofillHints.telephoneNumber],
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: t.form.phone.label,
                          hintText: t.form.phone.hint,
                        ),
                        validator: FormBuilderValidators.phoneNumber(
                          errorText: t.form.phone.errors.required,
                        ),
                      ),
                    ],
                    const SizedBox.square(dimension: 16),

                    //Business Form Fields
                    if (controller.user?.role?.isShopOwner == true) ...[
                      Text(
                        t.pages.profile.businessInformation,
                        style: _theme.textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox.square(dimension: 16),
                      BusinessProfileFormFields(enableEdit: isEditing),
                    ]
                  ],
                ),
              ),
              bottomNavigationBar: ElevatedButton.icon(
                onPressed: () async {
                  if (!isEditing) {
                    await showAsyncLoadingOverlay(
                      context,
                      asyncFunction: () => Future.delayed(
                        Durations.extralong2,
                        () => editingNotifier.value = true,
                      ),
                    );
                    return;
                  }

                  if (!FormWrapper.validate(formContext)) return;
                  await _handleFormSubmit(context);
                },
                label: Text(isEditing ? t.action.update : t.common.edit),
                icon: isEditing ? null : Icon(FeatherIcons.edit),
              ).fMarginLTRB(24, 12, 24, 16),
            );
          },
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

      editingNotifier.value = false;
      await Future.microtask(ref.read(userRepositoryProvider.notifier).getUser);
      ref.refresh(manageUserProfileProvider).initData();
    }
  }
}
