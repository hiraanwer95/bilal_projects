import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'dish_sub_option.g.dart';

@JsonSerializable()
class DishSubOption {
  DishSubOption({
    this.id,
    this.dishOptId,
    this.name,
    this.desc,
    this.price,
    this.linkedSuboption,
    this.discountPrice,
    this.tpDealRuleCode,
    this.tpToppingCode,
    this.tpCategoryCode,
    this.tpProductCode,
    this.tpComboGroupCode,
  });
  int? id;
  int? dishOptId;
  String? name;
  dynamic desc;
  String? price;
  int? linkedSuboption;
  String? discountPrice;
  String? tpDealRuleCode;
  String? tpToppingCode;
  String? tpCategoryCode;
  String? tpProductCode;
  String? tpComboGroupCode;

  factory DishSubOption.fromJson(Map<String, dynamic> json) =>
      _$DishSubOptionFromJson(json);
  Map<String, dynamic> toJson() => _$DishSubOptionToJson(this);
}
