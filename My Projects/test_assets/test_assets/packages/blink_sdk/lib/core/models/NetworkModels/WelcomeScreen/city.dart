import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'geo_fence.dart';
import 'restaurant_branch.dart';
part 'city.g.dart';

@JsonSerializable()
class City {
  City({
   this.id,
    this.state_id,
    this.creationDate,
    this.modifiedDate,
    this.name,
    this.geofences,
    this.restaurant_branches,
  });

  int? id;
  int? state_id;
  dynamic creationDate;
  dynamic modifiedDate;
  String? name;
  List<GeoFence>? geofences;
  List<RestaurantBranch>? restaurant_branches;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
  Map<String, dynamic> toJson() => _$CityToJson(this);
}
