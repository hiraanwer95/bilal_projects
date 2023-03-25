// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_store_menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetStoreMenu _$GetStoreMenuFromJson(Map<String, dynamic> json) => GetStoreMenu(
      status: json['status'] as int?,
      msg: json['msg'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetStoreMenuToJson(GetStoreMenu instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
    };
