import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'city.dart';
import 'restaurant.dart';
part 'data.g.dart';

@JsonSerializable()
class Data {
  Data({
    this.cities,
    this.restaurant,
    this.globalBranch,
  });
  List<City>? cities;
  Restaurant? restaurant;
  dynamic globalBranch;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}
