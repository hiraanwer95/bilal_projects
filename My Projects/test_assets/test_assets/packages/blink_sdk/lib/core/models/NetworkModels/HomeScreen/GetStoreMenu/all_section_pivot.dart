import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'all_section_pivot.g.dart';

@JsonSerializable()
class AllSectionPivot {
  AllSectionPivot({
    this.menuId,
    this.sectionId,
  });

  int? menuId;
  int? sectionId;
  factory AllSectionPivot.fromJson(Map<String, dynamic> json) =>
      _$AllSectionPivotFromJson(json);
  Map<String, dynamic> toJson() => _$AllSectionPivotToJson(this);
}
