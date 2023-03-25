// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

City _$CityFromJson(Map<String, dynamic> json) => City(
      id: json['id'] as int?,
      stateId: json['stateId'] as int?,
      creationDate: json['creationDate'],
      modifiedDate: json['modifiedDate'],
      name: json['name'] as String?,
      countryId: json['countryId'] as int?,
    );

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'id': instance.id,
      'stateId': instance.stateId,
      'creationDate': instance.creationDate,
      'modifiedDate': instance.modifiedDate,
      'name': instance.name,
      'countryId': instance.countryId,
    };
