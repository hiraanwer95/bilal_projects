import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'dish_pivot.g.dart';

@JsonSerializable()
class DishPivot {
  DishPivot({
    this.subsectionId,
    this.dishId,
  });

  int? subsectionId;
  int? dishId;

  factory DishPivot.fromJson(Map<String, dynamic> json) =>
      _$DishPivotFromJson(json);
  Map<String, dynamic> toJson() => _$DishPivotToJson(this);
}
