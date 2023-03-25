// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_splash.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetSplash _$GetSplashFromJson(Map<String, dynamic> json) => GetSplash(
      status: json['status'] as int?,
      msg: json['msg'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetSplashToJson(GetSplash instance) => <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
    };
