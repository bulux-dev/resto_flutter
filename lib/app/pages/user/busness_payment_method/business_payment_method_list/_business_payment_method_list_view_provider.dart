part of 'business_payment_method_list_view.dart';

class BusinessPaymentMethodListViewNotifier extends _BusinessPaymentMethodListViewMixer {
  BusinessPaymentMethodListViewNotifier(super.ref) {
    initPaging();
  }

  late final searchController = TextEditingController();

  @override
  Future<PaginatedListModel<BusinessPaymentMethod>> fetchData(int page) {
    return repo.getBusinessPaymentMethod(
      page: page,
      search: searchController.text,
    );
  }

  EventSub<BusinessPaymentMethodAE>? _apiEventSub;
  @override
  void initRefreshListener() {
    _apiEventSub = ref.read(gEventListenerProvider).on<BusinessPaymentMethodAE>().listen((event) {
      pagingController.refresh();
    });
  }

  @override
  void dispose() {
    _apiEventSub?.cancel();
    super.dispose();
  }
}

final businessPaymentMethodListViewProvider = ChangeNotifierProvider.autoDispose(
  BusinessPaymentMethodListViewNotifier.new,
);

abstract class _BusinessPaymentMethodListViewMixer extends ChangeNotifier
    with PaginatedControllerMixin<BusinessPaymentMethod> {
  _BusinessPaymentMethodListViewMixer(this.ref) : repo = ref.read(businessPaymentMethodRepoProvider);
  final Ref ref;
  final BusinessPaymentMethodRepo repo;
}
