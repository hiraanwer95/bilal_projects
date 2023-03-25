import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'dish_sub_option.dart';
part 'dish_option.g.dart';

@JsonSerializable()
class DishOption {
  DishOption({
    this.id,
    this.name,
    this.desc,
    this.dishId,
    this.linkedOption,
    this.required,
    this.multiselect,
    this.maxMultiSelectCount,
    this.minMultiSelectCount,
    this.priority,
    this.dish_sub_options,
  });

  int? id;
  String? name;
  dynamic desc;
  int? dishId;
  int? linkedOption;
  int? required;
  int? multiselect;
  int? maxMultiSelectCount;
  int? minMultiSelectCount;
  int? priority;
  List<DishSubOption>? dish_sub_options;

  factory DishOption.fromJson(Map<String, dynamic> json) =>
      _$DishOptionFromJson(json);
  Map<String, dynamic> toJson() => _$DishOptionToJson(this);
}
