import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'all_section_pivot.dart';
import 'all_sub_section.dart';
part 'all_section.g.dart';

@JsonSerializable()
class AllSection{
  AllSection({
            this.id,
        this.name,
        this.imgUrl,
        this.nameArabic,
        this.desc,
        this.restId,
        this.restbrId,
        this.availableFrom,
        this.availableTill,
        this.isCharity,
        this.sun,
        this.mon,
        this.tues,
        this.wed,
        this.thurs,
        this.fri,
        this.sat,
        this.priority,
        this.discountAvailableFrom,
        this.discountAvailableTill,
        this.lastUpdateAt,
        this.deletedAt,
        this.deletedBy,
        this.lastUpdateBy,
        this.validSource,
        this.status,
        this.isAppOnly,
        this.pivot,
        this.all_sub_section,
  });


     int? id;
    String? name;
    String? imgUrl;
    String? nameArabic;
    String? desc;
    int? restId;
    dynamic restbrId;
    String? availableFrom;
    String? availableTill;
    int? isCharity;
    int? sun;
    int? mon;
    int? tues;
    int? wed;
    int? thurs;
    int? fri;
    int? sat;
    int ?priority;
    dynamic discountAvailableFrom;
    dynamic discountAvailableTill;
    DateTime? lastUpdateAt;
    dynamic deletedAt;
    dynamic deletedBy;
    String? lastUpdateBy;
    String? validSource;
    int? status;
    int? isAppOnly;
    AllSectionPivot? pivot;
    List<AllSubSection>? all_sub_section;


  factory AllSection.fromJson(Map<String, dynamic> json) => _$AllSectionFromJson(json);
  Map<String, dynamic> toJson() => _$AllSectionToJson(this);
}
