// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllSection _$AllSectionFromJson(Map<String, dynamic> json) => AllSection(
      id: json['id'] as int?,
      name: json['name'] as String?,
      imgUrl: json['imgUrl'] as String?,
      nameArabic: json['nameArabic'] as String?,
      desc: json['desc'] as String?,
      restId: json['restId'] as int?,
      restbrId: json['restbrId'],
      availableFrom: json['availableFrom'] as String?,
      availableTill: json['availableTill'] as String?,
      isCharity: json['isCharity'] as int?,
      sun: json['sun'] as int?,
      mon: json['mon'] as int?,
      tues: json['tues'] as int?,
      wed: json['wed'] as int?,
      thurs: json['thurs'] as int?,
      fri: json['fri'] as int?,
      sat: json['sat'] as int?,
      priority: json['priority'] as int?,
      discountAvailableFrom: json['discountAvailableFrom'],
      discountAvailableTill: json['discountAvailableTill'],
      lastUpdateAt: json['lastUpdateAt'] == null
          ? null
          : DateTime.parse(json['lastUpdateAt'] as String),
      deletedAt: json['deletedAt'],
      deletedBy: json['deletedBy'],
      lastUpdateBy: json['lastUpdateBy'] as String?,
      validSource: json['validSource'] as String?,
      status: json['status'] as int?,
      isAppOnly: json['isAppOnly'] as int?,
      pivot: json['pivot'] == null
          ? null
          : AllSectionPivot.fromJson(json['pivot'] as Map<String, dynamic>),
      all_sub_section: (json['all_sub_section'] as List<dynamic>?)
          ?.map((e) => AllSubSection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllSectionToJson(AllSection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imgUrl': instance.imgUrl,
      'nameArabic': instance.nameArabic,
      'desc': instance.desc,
      'restId': instance.restId,
      'restbrId': instance.restbrId,
      'availableFrom': instance.availableFrom,
      'availableTill': instance.availableTill,
      'isCharity': instance.isCharity,
      'sun': instance.sun,
      'mon': instance.mon,
      'tues': instance.tues,
      'wed': instance.wed,
      'thurs': instance.thurs,
      'fri': instance.fri,
      'sat': instance.sat,
      'priority': instance.priority,
      'discountAvailableFrom': instance.discountAvailableFrom,
      'discountAvailableTill': instance.discountAvailableTill,
      'lastUpdateAt': instance.lastUpdateAt?.toIso8601String(),
      'deletedAt': instance.deletedAt,
      'deletedBy': instance.deletedBy,
      'lastUpdateBy': instance.lastUpdateBy,
      'validSource': instance.validSource,
      'status': instance.status,
      'isAppOnly': instance.isAppOnly,
      'pivot': instance.pivot,
      'all_sub_section': instance.all_sub_section,
    };
