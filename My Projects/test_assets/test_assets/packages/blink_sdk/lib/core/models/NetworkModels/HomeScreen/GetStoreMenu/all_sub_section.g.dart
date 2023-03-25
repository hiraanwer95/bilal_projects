// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_sub_section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllSubSection _$AllSubSectionFromJson(Map<String, dynamic> json) =>
    AllSubSection(
      id: json['id'] as int?,
      name: json['name'] as String?,
      desc: json['desc'],
      imgUrl: json['imgUrl'],
      dishsectionId: json['dishsectionId'] as int?,
      restbrId: json['restbrId'],
      restId: json['restId'] as int?,
      priority: json['priority'] as int?,
      status: json['status'] as int?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      updatedBy: json['updatedBy'] as String?,
      deletedAt: json['deletedAt'],
      deletedBy: json['deletedBy'],
      dish: (json['dish'] as List<dynamic>?)
          ?.map((e) => Dish.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllSubSectionToJson(AllSubSection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'desc': instance.desc,
      'imgUrl': instance.imgUrl,
      'dishsectionId': instance.dishsectionId,
      'restbrId': instance.restbrId,
      'restId': instance.restId,
      'priority': instance.priority,
      'status': instance.status,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'updatedBy': instance.updatedBy,
      'deletedAt': instance.deletedAt,
      'deletedBy': instance.deletedBy,
      'dish': instance.dish,
    };
