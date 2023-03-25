import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'dish_branch_stock.g.dart';

@JsonSerializable()
class DishBranchStock {
  DishBranchStock({
        this.id,
        this.dishId,
        this.restBrId,
        this.stock,
        this.updatedAt,
  });

  int? id;
  int? dishId;
  int? restBrId;
  int? stock;
  DateTime? updatedAt;

  factory DishBranchStock.fromJson(Map<String, dynamic> json) =>
      _$DishBranchStockFromJson(json);
  Map<String, dynamic> toJson() => _$DishBranchStockToJson(this);
}
