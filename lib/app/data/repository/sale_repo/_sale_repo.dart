import '../repository.dart';

part '_quotation_repo_mixin.dart';

class SaleRepository extends BaseRepository with QuotationRepoMixin {
  SaleRepository(super.ref) : super(putAuthHeader: true);

  //-----------------------Get Sale List-----------------------//
  Future<SaleList> getSaleList({
    int page = 1,
    String? search,
    String? fromDate,
    String? toDate,
    String? status,
    String? salesType,
    String? paymentStatus,
    bool noPaging = false,
  }) async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.sale(),
        queryParameters: {
          "page": page,
          "from_date": fromDate,
          "to_date": toDate,
          "search": search,
          "status": status,
          "sales_type": salesType,
          "payment_status": paymentStatus,
          if (noPaging) "no_paginate": 1,
        }.removeNullValue,
      );

      return SaleList.fromJson(
        _response.data,
        (sale) => Sale.fromJson(sale),
      );
    } on DioException catch (e) {
      final _message = e.response?.data['message'] ?? 'Failed to get sale list';
      throw Exception(_message);
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //-----------------------Get Sale List-----------------------//

  //-----------------------Get Sale Details-----------------------//
  Future<SaleDetailsModel> getSaleDetails(int id) async {
    try {
      final _response = await dioClient.get(DAPIEndpoints.sale(id));

      return SaleDetailsModel.fromJson(_response.data);
    } on DioException catch (e) {
      final _message = e.response?.data['message'] ?? 'Failed to get sale details';
      throw Exception(_message);
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //-----------------------Get Sale Details-----------------------//

  //-----------------------Get Sales for Top Products Analysis-----------------------//
  /// Obtiene ventas de los últimos 7 días para análisis de productos más vendidos
  Future<SaleList> getSalesForAnalysis() async {
    try {
      final DateTime now = DateTime.now();
      final DateTime weekAgo = now.subtract(const Duration(days: 7));
      
      final _response = await dioClient.get(
        DAPIEndpoints.sale(),
        queryParameters: {
          "from_date": weekAgo.toIso8601String().split('T')[0], // Solo fecha
          "to_date": now.toIso8601String().split('T')[0], // Solo fecha
          "no_paginate": 1, // Sin paginación para obtener todos los datos
        }.removeNullValue,
      );

      return SaleList.fromJson(
        _response.data,
        (sale) => Sale.fromJson(sale),
      );
    } on DioException catch (e) {
      final _message = e.response?.data['message'] ?? 'Failed to get sales for analysis';
      throw Exception(_message);
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //-----------------------Get Sales for Top Products Analysis-----------------------//

  //-----------------------Manage Sale-----------------------//
  Future<Either<String, SaleDetailsModel>> manageSale(
    Sale data,
  ) async {
    final _formData = data.toJson();
    if (data.id != null) {
      _formData['_method'] = 'put';
    }

    try {
      final _response = await dioClient.post(
        DAPIEndpoints.sale(data.id),
        data: _formData,
      );

      final _data = SaleDetailsModel.fromJson(_response.data);

      gEventListener.fire<SaleAE>(SaleModifiedAE());
      if (_data.data?.quotationId != null) {
        gEventListener.fire<QuotationAE>(QuotationModifiedAE());
      }
      if (_data.data?.tableId != null) {
        gEventListener.fire<TableAE>(TableModifiedAE());
      }

      return Either.success(_data);
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data['message'] ?? e.message ?? 'Something went wrong please try again',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //-----------------------Manage Sale-----------------------//

  //--------------------Delete Sale--------------------//
  Future<Either<String, String>> deleteSale(int id) async {
    try {
      final _response = await dioClient.delete(
        DAPIEndpoints.sale(id),
      );

      final _saleData = SaleDetailsModel.fromJson(_response.data);

      gEventListener.fire<SaleAE>(SaleDeletedAE(id));
      if (_saleData.data?.tableId != null) {
        gEventListener.fire<TableAE>(TableModifiedAE());
      }

      return Either.success(_saleData.message ?? 'Deleted successfully');
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data['message'] ?? 'Something went wrong, please try again',
      );
    } catch (e) {
      return Either.failure('An unexpected error occurred: $e');
    }
  }
  //--------------------Delete Sale--------------------//

  //--------------------Sale Report List--------------------//
  Future<SaleReportList> getSaleReportList({
    int page = 1,
    String? search,
    String? fromDate,
    String? toDate,
    bool noPaging = false,
  }) async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.saleReport,
        queryParameters: {
          "page": page,
          "from_date": fromDate,
          "to_date": toDate,
          "search": search,
          if (noPaging) "no_paginate": 1,
        }.removeNullValue,
      );

      return SaleReportList.fromJson(
        _response.data,
        (sale) => SaleReport.fromJson(sale),
      );
    } on DioException catch (e) {
      final _message = e.response?.data['message'] ?? 'Failed to get purchase list';
      throw Exception(_message);
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }

  //--------------------Sale Report List--------------------//

  //--------------------Complete Pending Payment--------------------//
  Future<Either<String, SaleDetailsModel>> completePendingPayment(
    Sale data,
  ) async {
    final _formData = DioFormData.fromMap({
      "_method": "put",
      ...data.toJsonForPayment(),
    });

    try {
      final _response = await dioClient.post(
        DAPIEndpoints.kotPay(data.id!),
        data: _formData,
      );

      gEventListener.fire<SaleAE>(SaleModifiedAE());

      return Either.success(SaleDetailsModel.fromJson(_response.data));
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data['message'] ?? e.message ?? 'Something went wrong please try again',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //--------------------Complete Pending Payment--------------------//
}

final saleRepoProvider = Provider.autoDispose<SaleRepository>(
  SaleRepository.new,
);

//---------------------------Api Events---------------------------//
abstract class SaleAE extends BaseApiEvent {
  const SaleAE();
}

class SaleModifiedAE extends SaleAE {
  const SaleModifiedAE();
}

class SaleDeletedAE extends SaleAE {
  final int id;
  const SaleDeletedAE(this.id);
}
//---------------------------Api Events---------------------------//
