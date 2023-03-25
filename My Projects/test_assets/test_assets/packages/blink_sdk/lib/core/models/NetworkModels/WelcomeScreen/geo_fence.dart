import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'geo_fence.g.dart';

enum ActionBy { USAMADAK, HASSAN }

@JsonSerializable()
class GeoFence {
  GeoFence({
     this.id,
     this.rest_brIds,
     this.area_name,
     this.geoFence,
     this.lat,
     this.lng,
     this.type,
     this.cityId,
     this.createdAt,
     this.rest_brId,
     this.geofenceId,
     this.minOrder,
     this.deliveryCharges,
     this.timeType,
     this.maxDeliveryTime,
     this.actionTime,
     this.actionBy,
  });
  int? id;
  int? rest_brIds;
  String? area_name;
  String? geoFence;
  String? lat;
  String? lng;
  int? type;
  int? cityId;
  DateTime? createdAt;
  int? rest_brId;
  int? geofenceId;
  int? minOrder;
  int? deliveryCharges;
  int? timeType;
  int? maxDeliveryTime;
  DateTime? actionTime;
  ActionBy? actionBy;
  factory GeoFence.fromJson(Map<String, dynamic> json) =>
      _$GeoFenceFromJson(json);
  Map<String, dynamic> toJson() => _$GeoFenceToJson(this);
}
