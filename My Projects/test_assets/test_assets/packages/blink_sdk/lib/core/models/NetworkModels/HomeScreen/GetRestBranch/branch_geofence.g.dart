// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_geofence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BranchGeofence _$BranchGeofenceFromJson(Map<String, dynamic> json) =>
    BranchGeofence(
      id: json['id'] as int?,
      restBrId: json['restBrId'] as int?,
      geofenceId: json['geofenceId'] as int?,
      minOrder: json['minOrder'] as int?,
      deliveryCharges: json['deliveryCharges'] as int?,
      timeType: json['timeType'] as int?,
      maxDeliveryTime: json['maxDeliveryTime'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      actionTime: json['actionTime'] == null
          ? null
          : DateTime.parse(json['actionTime'] as String),
      actionBy: json['actionBy'] as String?,
      restBrIds: json['restBrIds'] as int?,
      areaName: json['areaName'] as String?,
      geoFence: json['geoFence'] as String?,
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      type: json['type'] as int?,
      cityId: json['cityId'] as int?,
    );

Map<String, dynamic> _$BranchGeofenceToJson(BranchGeofence instance) =>
    <String, dynamic>{
      'id': instance.id,
      'restBrId': instance.restBrId,
      'geofenceId': instance.geofenceId,
      'minOrder': instance.minOrder,
      'deliveryCharges': instance.deliveryCharges,
      'timeType': instance.timeType,
      'maxDeliveryTime': instance.maxDeliveryTime,
      'createdAt': instance.createdAt?.toIso8601String(),
      'actionTime': instance.actionTime?.toIso8601String(),
      'actionBy': instance.actionBy,
      'restBrIds': instance.restBrIds,
      'areaName': instance.areaName,
      'geoFence': instance.geoFence,
      'lat': instance.lat,
      'lng': instance.lng,
      'type': instance.type,
      'cityId': instance.cityId,
    };
