import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'dish_sub_options.g.dart';

@JsonSerializable()
class DishSubOption {
  DishSubOption({
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
  factory DishSubOption.fromJson(Map<String, dynamic> json) => _$DishSubOptionFromJson(json);
  Map<String, dynamic> toJson() => _$DishSubOptionToJson(this);
}
