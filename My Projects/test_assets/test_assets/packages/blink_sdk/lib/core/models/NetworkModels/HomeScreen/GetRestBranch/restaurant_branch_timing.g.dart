// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_branch_timing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantBranchTiming _$RestaurantBranchTimingFromJson(
        Map<String, dynamic> json) =>
    RestaurantBranchTiming(
      id: json['id'] as int?,
      restBrId: json['restBrId'] as int?,
      days: json['days'] as int?,
      openingHour: json['openingHour'] as String?,
      closingHour: json['closingHour'] as String?,
      dinnerOpeningHour: json['dinnerOpeningHour'] as String?,
      dinnerClosingHour: json['dinnerClosingHour'] as String?,
    );

Map<String, dynamic> _$RestaurantBranchTimingToJson(
        RestaurantBranchTiming instance) =>
    <String, dynamic>{
      'id': instance.id,
      'restBrId': instance.restBrId,
      'days': instance.days,
      'openingHour': instance.openingHour,
      'closingHour': instance.closingHour,
      'dinnerOpeningHour': instance.dinnerOpeningHour,
      'dinnerClosingHour': instance.dinnerClosingHour,
    };
