import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'language_json.g.dart';

@JsonSerializable()
class LanguageJSON {
  LanguageJSON({
    this.id,
    this.name,
    this.name_local,
    this.index,
    this.alignment,
    this.code,
  });

  int? id;
  String? name;
  String? name_local;
  int? index;
  String? alignment;
  String? code;
  factory LanguageJSON.fromJson(Map<String, dynamic> json) =>
      _$LanguageJSONFromJson(json);
  Map<String, dynamic> toJson() => _$LanguageJSONToJson(this);
}
