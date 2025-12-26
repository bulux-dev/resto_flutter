import '../model.dart';

class PTableDetailsModel extends BaseDetailsModel<PTable> {
  PTableDetailsModel({
    super.message,
    super.data,
  });

  factory PTableDetailsModel.fromJson(Map<String, dynamic> json) {
    return PTableDetailsModel(
      message: json["message"],
      data: json["data"] == null ? null : PTable.fromJson(json["data"]),
    );
  }
}

class PTable extends Equatable {
  final int? id;
  final int? businessId;
  final String? name;
  final int? capacity;
  final int? isBooked;

  TableStatus get status {
    if (isBooked == 1) {
      return TableStatus.hold;
    }
    return TableStatus.empty;
  }

  const PTable({
    this.id,
    this.businessId,
    this.name,
    this.capacity,
    this.isBooked,
  });

  PTable copyWith({
    int? id,
    int? businessId,
    String? name,
    int? capacity,
    int? isBooked,
  }) {
    return PTable(
      id: id ?? this.id,
      businessId: businessId ?? this.businessId,
      name: name ?? this.name,
      capacity: capacity ?? this.capacity,
      isBooked: isBooked ?? this.isBooked,
    );
  }

  factory PTable.fromJson(Map<String, dynamic> json) {
    return PTable(
      id: json["id"],
      businessId: json["business_id"],
      name: json["name"],
      capacity: json["capacity"],
      isBooked: json["is_booked"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "capacity": capacity,
    };
  }

  @override
  List<Object?> get props => [id];
}

typedef TableList = PaginatedListModel<PTable>;
