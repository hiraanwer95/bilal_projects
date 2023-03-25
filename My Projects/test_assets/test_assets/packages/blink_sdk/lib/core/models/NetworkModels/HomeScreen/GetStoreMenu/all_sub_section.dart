import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'dish.dart';
part 'all_sub_section.g.dart';

@JsonSerializable()
class AllSubSection{
  AllSubSection({
        this.id,
        this.name,
        this.desc,
        this.imgUrl,
        this.dishsectionId,
        this.restbrId,
        this.restId,
        this.priority,
        this.status,
        this.updatedAt,
        this.updatedBy,
        this.deletedAt,
        this.deletedBy,
        this.dish,
  });


    int ? id;
    String? name;
    dynamic desc;
    dynamic imgUrl;
    int? dishsectionId;
    dynamic restbrId;
    int? restId;
    int? priority;
    int? status;
    DateTime? updatedAt;
    String? updatedBy;
    dynamic deletedAt;
    dynamic deletedBy;
    List<Dish>? dish;


  factory AllSubSection.fromJson(Map<String, dynamic> json) => _$AllSubSectionFromJson(json);
  Map<String, dynamic> toJson() => _$AllSubSectionToJson(this);
}
