// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_branch_contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantBranchContact _$RestaurantBranchContactFromJson(
        Map<String, dynamic> json) =>
    RestaurantBranchContact(
      id: json['id'] as int?,
      restBrId: json['restBrId'] as int?,
      contact: json['contact'] as String?,
      type: json['type'] as int?,
      contactPerson: json['contactPerson'] as String?,
    );

Map<String, dynamic> _$RestaurantBranchContactToJson(
        RestaurantBranchContact instance) =>
    <String, dynamic>{
      'id': instance.id,
      'restBrId': instance.restBrId,
      'contact': instance.contact,
      'type': instance.type,
      'contactPerson': instance.contactPerson,
    };
