import '../../data/repository/repository.dart';
import '../../pages/common/widgets/widgets.dart' show quickOrderCartProvider;

class AuthStateListener extends BaseRepository {
  AuthStateListener(super.ref) : super(watchEvent: true);

  final _normalProviders = [
    // User Providers
    businessCategoriesProvider,
    subscriptionPlansProvider,

    // Dropdown Providers
    businessPaymentMethodDropdownProvider,
    expenseCategoryDropdownProvider,
    incomeCategoryDropdownProvider,
    taxDropdownProvider,
    taxListProvider,
    taxGroupProvider,
    customerDropdownProvider,
    supplierDropdownProvider,
    tableDropdownProvider,
    allStaffDropdownProvider,
    waiterDropdownProvider,

    // Item Providers
    itemsDropdownProvider,
    itemDetailsProvider,
    itemCategoryDropdownProvider,
    itemUnitDropdownProvider,
    itemMenuDropdownProvider,
    itemModifierGroupDropdownProvider,

    // Cart Providers
    quickOrderCartProvider,

    partyDetailsProvider,
  ];

  void initListener() {
    gEventListener.on<UserAuthEvent>().listen((event) {
      if (event == UserAuthEvent.signedIn) {
        for (var provider in _normalProviders) {
          ref.invalidate(provider);
        }
      }
    });
  }
}

final authStateListenerProvider = Provider(AuthStateListener.new);
