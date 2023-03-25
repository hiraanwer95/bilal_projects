// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LanguageJSON _$LanguageJSONFromJson(Map<String, dynamic> json) => LanguageJSON(
      id: json['id'] as int?,
      name: json['name'] as String?,
      name_local: json['name_local'] as String?,
      index: json['index'] as int?,
      alignment: json['alignment'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$LanguageJSONToJson(LanguageJSON instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_local': instance.name_local,
      'index': instance.index,
      'alignment': instance.alignment,
      'code': instance.code,
    };
