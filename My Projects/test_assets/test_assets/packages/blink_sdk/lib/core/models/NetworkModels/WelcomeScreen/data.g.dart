// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      cities: (json['cities'] as List<dynamic>?)
          ?.map((e) => City.fromJson(e as Map<String, dynamic>))
          .toList(),
      restaurant: json['restaurant'] == null
          ? null
          : Restaurant.fromJson(json['restaurant'] as Map<String, dynamic>),
      globalBranch: json['globalBranch'],
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'cities': instance.cities,
      'restaurant': instance.restaurant,
      'globalBranch': instance.globalBranch,
    };
