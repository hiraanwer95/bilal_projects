// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish_branch_stock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DishBranchStock _$DishBranchStockFromJson(Map<String, dynamic> json) =>
    DishBranchStock(
      id: json['id'] as int?,
      dishId: json['dishId'] as int?,
      restBrId: json['restBrId'] as int?,
      stock: json['stock'] as int?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$DishBranchStockToJson(DishBranchStock instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dishId': instance.dishId,
      'restBrId': instance.restBrId,
      'stock': instance.stock,
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
