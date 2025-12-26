part of '../income_list_view.dart';

class IncomeCategoryListViewNotifier extends ChangeNotifier
    with PaginatedControllerMixin<IncomeCategory> {
  IncomeCategoryListViewNotifier(this.ref)
      : repo = ref.watch(incomeRepoProvider) {
    initPaging();
  }

  final Ref ref;
  final IncomeRepository repo;

  late final searchController = TextEditingController();

  @override
  Future<PaginatedListModel<IncomeCategory>> fetchData(int page) {
    return Future.microtask(
      () => repo.getIncomeCategories(
        page: page,
        search: searchController.text,
      ),
    );
  }

  EventSub<IncomeApiEvent>? _apiEventSub;
  @override
  void initRefreshListener() {
    _apiEventSub =
        ref.read(gEventListenerProvider).on<IncomeApiEvent>().listen((event) {
      if (event == IncomeApiEvent.category) {
        pagingController.refresh();
      }
    });
  }

  @override
  void dispose() {
    _apiEventSub?.cancel();
    super.dispose();
  }
}

final incomeCategoryListViewProvider = ChangeNotifierProvider.autoDispose(
  IncomeCategoryListViewNotifier.new,
);
