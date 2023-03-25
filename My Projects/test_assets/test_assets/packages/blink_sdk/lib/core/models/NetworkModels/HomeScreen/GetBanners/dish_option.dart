import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'dish_sub_options.dart';
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
        this.dishSubOptions,
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
    List<DishSubOption>? dishSubOptions;
  factory DishOption.fromJson(Map<String, dynamic> json) => _$DishOptionFromJson(json);
  Map<String, dynamic> toJson() => _$DishOptionToJson(this);
}
