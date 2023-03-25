// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_branch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantBranch _$RestaurantBranchFromJson(Map<String, dynamic> json) =>
    RestaurantBranch(
      id: json['id'] as int?,
      status: json['status'] as int?,
      cityId: json['cityId'] as int?,
      isGlobalDelivery: json['isGlobalDelivery'] as int?,
      areaId: json['areaId'] as int?,
      delivery_type: json['delivery_type'] as int?,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      houseNum: json['houseNum'] as String?,
      street: json['street'] as String?,
      area_name: json['area_name'] as String?,
      isAsapOnly: json['isAsapOnly'] as int?,
      isPreOrderOnly: json['isPreOrderOnly'] as int?,
      sameDayPreOrder: json['sameDayPreOrder'] as int?,
      minPreorderHrs: json['minPreorderHrs'] as int?,
      maxPreorderHrs: json['maxPreorderHrs'] as int?,
      is_dinein: json['is_dinein'] as int?,
    );

Map<String, dynamic> _$RestaurantBranchToJson(RestaurantBranch instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'cityId': instance.cityId,
      'isGlobalDelivery': instance.isGlobalDelivery,
      'areaId': instance.areaId,
      'delivery_type': instance.delivery_type,
      'lat': instance.lat,
      'lng': instance.lng,
      'houseNum': instance.houseNum,
      'street': instance.street,
      'area_name': instance.area_name,
      'isAsapOnly': instance.isAsapOnly,
      'isPreOrderOnly': instance.isPreOrderOnly,
      'sameDayPreOrder': instance.sameDayPreOrder,
      'minPreorderHrs': instance.minPreorderHrs,
      'maxPreorderHrs': instance.maxPreorderHrs,
      'is_dinein': instance.is_dinein,
    };
