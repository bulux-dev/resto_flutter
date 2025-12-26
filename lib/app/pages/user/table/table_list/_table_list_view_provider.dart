part of 'table_list_view.dart';

class TableListViewNotifier extends _TableListViewMixer {
  TableListViewNotifier(super.ref);

  late final searchController = TextEditingController();

  @override
  Future<PaginatedListModel<PTable>> fetchData(int page) {
    return repo.getTables(
      page: page,
      search: searchController.text,
    );
  }

  EventSub<TableAE>? _apiEventSub;
  @override
  void initRefreshListener() {
    _apiEventSub = ref.read(gEventListenerProvider).on<TableAE>().listen((event) {
      pagingController.refresh();
    });
  }

  @override
  void dispose() {
    _apiEventSub?.cancel();
    super.dispose();
  }
}

final tableListViewProvider = ChangeNotifierProvider.autoDispose(
  TableListViewNotifier.new,
);

abstract class _TableListViewMixer extends ChangeNotifier with PaginatedControllerMixin<PTable> {
  _TableListViewMixer(this.ref) : repo = ref.read(tableRepoProvider) {
    initPaging();
  }
  final Ref ref;
  final TableRepository repo;
}
