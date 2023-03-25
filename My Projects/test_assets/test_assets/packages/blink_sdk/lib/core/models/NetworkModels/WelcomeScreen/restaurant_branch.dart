import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'restaurant_branch.g.dart';

@JsonSerializable()
class RestaurantBranch {
    RestaurantBranch({
        this.id,
        this.status,
        this.cityId,
        this.isGlobalDelivery,
        this.areaId,
        this.delivery_type,
        this.lat,
        this.lng,
        this.houseNum,
         this.street,
        this.area_name,
       this.isAsapOnly,
        this.isPreOrderOnly,
        this.sameDayPreOrder,
        this.minPreorderHrs,
        this.maxPreorderHrs,
        this.is_dinein,
    });
  int? id;
  int? status;
  int? cityId;
  int? isGlobalDelivery;
  int? areaId;
  int? delivery_type;
  double? lat;
  double? lng;
  String? houseNum;
  String? street;
  String? area_name;
  int? isAsapOnly;
  int? isPreOrderOnly;
  int? sameDayPreOrder;
  int? minPreorderHrs;
  int? maxPreorderHrs;
  int? is_dinein;

  factory RestaurantBranch.fromJson(Map<String, dynamic> json) =>
      _$RestaurantBranchFromJson(json);
  Map<String, dynamic> toJson() => _$RestaurantBranchToJson(this);
}
