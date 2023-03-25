import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'data.dart';
part 'branch_geofence.g.dart';

@JsonSerializable()
class BranchGeofence {
  BranchGeofence({
    this.id,
    this.restBrId,
    this.geofenceId,
    this.minOrder,
    this.deliveryCharges,
    this.timeType,
    this.maxDeliveryTime,
    this.createdAt,
    this.actionTime,
    this.actionBy,
    this.restBrIds,
    this.areaName,
    this.geoFence,
    this.lat,
    this.lng,
    this.type,
    this.cityId,
  });

  int? id;
  int? restBrId;
  int? geofenceId;
  int? minOrder;
  int? deliveryCharges;
  int? timeType;
  int? maxDeliveryTime;
  DateTime? createdAt;
  DateTime? actionTime;
  String? actionBy;
  int? restBrIds;
  String? areaName;
  String? geoFence;
  String? lat;
  String? lng;
  int? type;
  int? cityId;
  factory BranchGeofence.fromJson(Map<String, dynamic> json) =>
      _$BranchGeofenceFromJson(json);
  Map<String, dynamic> toJson() => _$BranchGeofenceToJson(this);
}
