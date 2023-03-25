// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

City _$CityFromJson(Map<String, dynamic> json) => City(
      id: json['id'] as int?,
      state_id: json['state_id'] as int?,
      creationDate: json['creationDate'],
      modifiedDate: json['modifiedDate'],
      name: json['name'] as String?,
      geofences: (json['geofences'] as List<dynamic>?)
          ?.map((e) => GeoFence.fromJson(e as Map<String, dynamic>))
          .toList(),
      restaurant_branches: (json['restaurant_branches'] as List<dynamic>?)
          ?.map((e) => RestaurantBranch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'id': instance.id,
      'state_id': instance.state_id,
      'creationDate': instance.creationDate,
      'modifiedDate': instance.modifiedDate,
      'name': instance.name,
      'geofences': instance.geofences,
      'restaurant_branches': instance.restaurant_branches,
    };
