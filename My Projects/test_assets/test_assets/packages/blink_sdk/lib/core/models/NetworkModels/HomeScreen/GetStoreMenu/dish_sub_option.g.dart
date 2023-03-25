// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish_sub_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DishSubOption _$DishSubOptionFromJson(Map<String, dynamic> json) =>
    DishSubOption(
      id: json['id'] as int?,
      dishOptId: json['dishOptId'] as int?,
      name: json['name'] as String?,
      desc: json['desc'],
      price: json['price'] as String?,
      linkedSuboption: json['linkedSuboption'] as int?,
      discountPrice: json['discountPrice'] as String?,
      tpDealRuleCode: json['tpDealRuleCode'] as String?,
      tpToppingCode: json['tpToppingCode'] as String?,
      tpCategoryCode: json['tpCategoryCode'] as String?,
      tpProductCode: json['tpProductCode'] as String?,
      tpComboGroupCode: json['tpComboGroupCode'] as String?,
    );

Map<String, dynamic> _$DishSubOptionToJson(DishSubOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dishOptId': instance.dishOptId,
      'name': instance.name,
      'desc': instance.desc,
      'price': instance.price,
      'linkedSuboption': instance.linkedSuboption,
      'discountPrice': instance.discountPrice,
      'tpDealRuleCode': instance.tpDealRuleCode,
      'tpToppingCode': instance.tpToppingCode,
      'tpCategoryCode': instance.tpCategoryCode,
      'tpProductCode': instance.tpProductCode,
      'tpComboGroupCode': instance.tpComboGroupCode,
    };
