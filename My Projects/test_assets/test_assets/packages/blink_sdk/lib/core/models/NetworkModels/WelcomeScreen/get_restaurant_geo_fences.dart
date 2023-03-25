import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'data.dart';

part 'get_restaurant_geo_fences.g.dart';

@JsonSerializable()
class GetRestaurantGeoFences {
  GetRestaurantGeoFences({
     this.status,
     this.msg,
     this.data,
  });
  int? status;
  String? msg;
  Data? data;

  factory GetRestaurantGeoFences.fromJson(Map<String, dynamic> json) =>
      _$GetRestaurantGeoFencesFromJson(json);
  Map<String, dynamic> toJson() => _$GetRestaurantGeoFencesToJson(this);
}
