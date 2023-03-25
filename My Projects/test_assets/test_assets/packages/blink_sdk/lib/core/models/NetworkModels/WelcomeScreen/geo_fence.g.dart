// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_fence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeoFence _$GeoFenceFromJson(Map<String, dynamic> json) => GeoFence(
      id: json['id'] as int?,
      rest_brIds: json['rest_brIds'] as int?,
      area_name: json['area_name'] as String?,
      geoFence: json['geoFence'] as String?,
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      type: json['type'] as int?,
      cityId: json['cityId'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      rest_brId: json['rest_brId'] as int?,
      geofenceId: json['geofenceId'] as int?,
      minOrder: json['minOrder'] as int?,
      deliveryCharges: json['deliveryCharges'] as int?,
      timeType: json['timeType'] as int?,
      maxDeliveryTime: json['maxDeliveryTime'] as int?,
      actionTime: json['actionTime'] == null
          ? null
          : DateTime.parse(json['actionTime'] as String),
      actionBy: $enumDecodeNullable(_$ActionByEnumMap, json['actionBy']),
    );

Map<String, dynamic> _$GeoFenceToJson(GeoFence instance) => <String, dynamic>{
      'id': instance.id,
      'rest_brIds': instance.rest_brIds,
      'area_name': instance.area_name,
      'geoFence': instance.geoFence,
      'lat': instance.lat,
      'lng': instance.lng,
      'type': instance.type,
      'cityId': instance.cityId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'rest_brId': instance.rest_brId,
      'geofenceId': instance.geofenceId,
      'minOrder': instance.minOrder,
      'deliveryCharges': instance.deliveryCharges,
      'timeType': instance.timeType,
      'maxDeliveryTime': instance.maxDeliveryTime,
      'actionTime': instance.actionTime?.toIso8601String(),
      'actionBy': _$ActionByEnumMap[instance.actionBy],
    };

const _$ActionByEnumMap = {
  ActionBy.USAMADAK: 'USAMADAK',
  ActionBy.HASSAN: 'HASSAN',
};
