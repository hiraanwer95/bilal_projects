// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as int?,
      language: json['language'] as String?,
      status: json['status'] as int?,
      repeat: json['repeat'] as int?,
      title: json['title'] as String?,
      detail: json['detail'] as String?,
      actionTitle: json['actionTitle'] as String?,
      image_url: json['image_url'] as String?,
      webBannerImage: json['webBannerImage'],
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      startTime: json['startTime'],
      endTime: json['endTime'],
      priority: json['priority'] as int?,
      cities: json['cities'] as String?,
      openUrl: json['openUrl'] as String?,
      actionBy: json['actionBy'] as String?,
      restId: json['restId'] as int?,
      dishId: json['dishId'] as int?,
      restBrId: json['restBrId'],
      timezoneName: json['timezoneName'],
      isCharity: json['isCharity'] as int?,
      brandName: json['brandName'],
      isHomefeature: json['isHomefeature'] as int?,
      dish: json['dish'] == null
          ? null
          : Dish.fromJson(json['dish'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'language': instance.language,
      'status': instance.status,
      'repeat': instance.repeat,
      'title': instance.title,
      'detail': instance.detail,
      'actionTitle': instance.actionTitle,
      'image_url': instance.image_url,
      'webBannerImage': instance.webBannerImage,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'priority': instance.priority,
      'cities': instance.cities,
      'openUrl': instance.openUrl,
      'actionBy': instance.actionBy,
      'restId': instance.restId,
      'dishId': instance.dishId,
      'restBrId': instance.restBrId,
      'timezoneName': instance.timezoneName,
      'isCharity': instance.isCharity,
      'brandName': instance.brandName,
      'isHomefeature': instance.isHomefeature,
      'dish': instance.dish,
    };
