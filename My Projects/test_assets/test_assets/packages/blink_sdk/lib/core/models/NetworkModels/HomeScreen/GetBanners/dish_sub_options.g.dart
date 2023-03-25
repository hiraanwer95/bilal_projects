// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish_sub_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DishSubOption _$DishSubOptionFromJson(Map<String, dynamic> json) =>
    DishSubOption(
      id: json['id'] as int?,
      name: json['name'] as String?,
      desc: json['desc'],
      dishId: json['dishId'] as int?,
      linkedOption: json['linkedOption'] as int?,
      required: json['required'] as int?,
      multiselect: json['multiselect'] as int?,
      maxMultiSelectCount: json['maxMultiSelectCount'] as int?,
      minMultiSelectCount: json['minMultiSelectCount'] as int?,
      priority: json['priority'] as int?,
      dishSubOptions: (json['dishSubOptions'] as List<dynamic>?)
          ?.map((e) => DishSubOption.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DishSubOptionToJson(DishSubOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'desc': instance.desc,
      'dishId': instance.dishId,
      'linkedOption': instance.linkedOption,
      'required': instance.required,
      'multiselect': instance.multiselect,
      'maxMultiSelectCount': instance.maxMultiSelectCount,
      'minMultiSelectCount': instance.minMultiSelectCount,
      'priority': instance.priority,
      'dishSubOptions': instance.dishSubOptions,
    };
