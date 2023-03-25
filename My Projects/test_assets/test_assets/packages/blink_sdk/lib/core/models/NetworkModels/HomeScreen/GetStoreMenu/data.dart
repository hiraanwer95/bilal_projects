import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'all_section.dart';
part 'data.g.dart';

@JsonSerializable()
class Data {
  Data({
               this.id,
        this.restId,
        this.name,
        this.openingtime,
        this.closingtime,
        this.sun,
        this.mon,
        this.tues,
        this.wed,
        this.thurs,
        this.fri,
        this.sat,
        this.status,
        this.priority,
        this.imgUrl,
        this.isGlobalDelivery,
        this.updatedAt,
        this.updatedBy,
        this.deletedAt,
        this.deletedBy,
        this.all_section,
  });


    int? id;
    int? restId;
    String? name;
    String? openingtime;
    String? closingtime;
    int? sun;
    int? mon;
    int? tues;
    int? wed;
    int? thurs;
    int? fri;
    int? sat;
    int? status;
    int? priority;
    dynamic imgUrl;
    int? isGlobalDelivery;
    DateTime? updatedAt;
    dynamic updatedBy;
    dynamic deletedAt;
    dynamic deletedBy;
    List<AllSection>? all_section;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}
