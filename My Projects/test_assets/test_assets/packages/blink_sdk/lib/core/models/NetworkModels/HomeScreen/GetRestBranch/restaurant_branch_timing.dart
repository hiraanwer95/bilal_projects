import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'data.dart';
part 'restaurant_branch_timing.g.dart';

@JsonSerializable()
class RestaurantBranchTiming {
  RestaurantBranchTiming({
    this.id,
    this.restBrId,
    this.days,
    this.openingHour,
    this.closingHour,
    this.dinnerOpeningHour,
    this.dinnerClosingHour,
  });

  int? id;
  int? restBrId;
  int? days;
  String? openingHour;
  String? closingHour;
  String? dinnerOpeningHour;
  String? dinnerClosingHour;

  factory RestaurantBranchTiming.fromJson(Map<String, dynamic> json) =>
      _$RestaurantBranchTimingFromJson(json);
  Map<String, dynamic> toJson() => _$RestaurantBranchTimingToJson(this);
}
