// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as int?,
      restId: json['restId'] as int?,
      name: json['name'] as String?,
      openingtime: json['openingtime'] as String?,
      closingtime: json['closingtime'] as String?,
      sun: json['sun'] as int?,
      mon: json['mon'] as int?,
      tues: json['tues'] as int?,
      wed: json['wed'] as int?,
      thurs: json['thurs'] as int?,
      fri: json['fri'] as int?,
      sat: json['sat'] as int?,
      status: json['status'] as int?,
      priority: json['priority'] as int?,
      imgUrl: json['imgUrl'],
      isGlobalDelivery: json['isGlobalDelivery'] as int?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      updatedBy: json['updatedBy'],
      deletedAt: json['deletedAt'],
      deletedBy: json['deletedBy'],
      all_section: (json['all_section'] as List<dynamic>?)
          ?.map((e) => AllSection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'restId': instance.restId,
      'name': instance.name,
      'openingtime': instance.openingtime,
      'closingtime': instance.closingtime,
      'sun': instance.sun,
      'mon': instance.mon,
      'tues': instance.tues,
      'wed': instance.wed,
      'thurs': instance.thurs,
      'fri': instance.fri,
      'sat': instance.sat,
      'status': instance.status,
      'priority': instance.priority,
      'imgUrl': instance.imgUrl,
      'isGlobalDelivery': instance.isGlobalDelivery,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'updatedBy': instance.updatedBy,
      'deletedAt': instance.deletedAt,
      'deletedBy': instance.deletedBy,
      'all_section': instance.all_section,
    };
