// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_restaurant_geo_fences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRestaurantGeoFences _$GetRestaurantGeoFencesFromJson(
        Map<String, dynamic> json) =>
    GetRestaurantGeoFences(
      status: json['status'] as int?,
      msg: json['msg'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetRestaurantGeoFencesToJson(
        GetRestaurantGeoFences instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
    };
