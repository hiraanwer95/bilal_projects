// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_rest_branch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRestaurantBranch _$GetRestaurantBranchFromJson(Map<String, dynamic> json) =>
    GetRestaurantBranch(
      status: json['status'] as int?,
      msg: json['msg'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetRestaurantBranchToJson(
        GetRestaurantBranch instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
    };
