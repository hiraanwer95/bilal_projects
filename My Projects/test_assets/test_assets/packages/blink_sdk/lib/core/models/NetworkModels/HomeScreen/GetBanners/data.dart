import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'dish.dart';
part 'data.g.dart';

@JsonSerializable()
class Data {
  Data({
    this.id,
    this.language,
    this.status,
    this.repeat,
    this.title,
    this.detail,
    this.actionTitle,
    this.image_url,
    this.webBannerImage,
    this.startDate,
    this.endDate,
    this.startTime,
    this.endTime,
    this.priority,
    this.cities,
    this.openUrl,
    this.actionBy,
    this.restId,
    this.dishId,
    this.restBrId,
    this.timezoneName,
    this.isCharity,
    this.brandName,
    this.isHomefeature,
    this.dish,
  });
  int? id;
  String? language;
  int? status;
  int? repeat;
  String? title;
  String? detail;
  String? actionTitle;
  String? image_url;
  dynamic webBannerImage;
  DateTime? startDate;
  DateTime? endDate;
  dynamic startTime;
  dynamic endTime;
  int? priority;
  String? cities;
  String? openUrl;
  String? actionBy;
  int? restId;
  int? dishId;
  dynamic restBrId;
  dynamic timezoneName;
  int? isCharity;
  dynamic brandName;
  int? isHomefeature;
  Dish? dish;
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}
