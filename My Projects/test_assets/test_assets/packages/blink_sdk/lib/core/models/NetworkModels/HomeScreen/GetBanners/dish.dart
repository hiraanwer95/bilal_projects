import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'dish_option.dart';
part 'dish.g.dart';

@JsonSerializable()
class Dish {
  Dish({
     this.id,
        this.tpProductCode,
        this.tpCategoryCode,
        this.tpDealCode,
        this.tpUom,
        this.tpTreatAsCombo,
        this.peopleFed,
        this.brandName,
        this.name,
        this.desc,
        this.restId,
        this.price,
        this.basePrice,
        this.discountPrice,
        this.taxAmount,
        this.itemCost,
        this.totalStock,
        this.searchTags,
        this.img_url,
        this.isdeal,
        this.totalOrders,
        this.subsectionId,
        this.restbrId,
        this.stock,
        this.availability,
        this.specialDeliveryType,
        this.status,
        this.priority,
        this.allowedQty,
        this.lastUpdateAt,
        this.lastUpdateBy,
        this.applyCommission,
        this.linkedPromotion,
        this.emShare,
        this.isPromoDish,
        this.isUpsellingItem,
        this.isAppOnly,
        this.restaurantShare,
        this.tpShare,
        this.preparationTimeMins,
        this.calories,
        this.createdAt,
        this.isAddedToFbcat,
        this.isGlobalDelivery,
        this.minStockNotify,
        this.maxStockAllowed,
        this.dishOptions,
        this.dishBranchStatus,
        this.dishImages,
  });
  int? id;
  String? tpProductCode;
  String? tpCategoryCode;
  String? tpDealCode;
  String? tpUom;
  dynamic tpTreatAsCombo;
  int? peopleFed;
  String? brandName;
  String? name;
  String? desc;
  int? restId;
  String? price;
  String? basePrice;
  String? discountPrice;
  String? taxAmount;
  dynamic itemCost;
  dynamic totalStock;
  dynamic searchTags;
  String? img_url;
  int? isdeal;
  int? totalOrders;
  int? subsectionId;
  dynamic restbrId;
  dynamic stock;
  int? availability;
  String? specialDeliveryType;
  int? status;
  int? priority;
  int? allowedQty;
  DateTime? lastUpdateAt;
  String? lastUpdateBy;
  int? applyCommission;
  dynamic linkedPromotion;
  dynamic emShare;
  int? isPromoDish;
  int? isUpsellingItem;
  int? isAppOnly;
  dynamic restaurantShare;
  dynamic tpShare;
  int? preparationTimeMins;
  int? calories;
  DateTime? createdAt;
  int? isAddedToFbcat;
  int? isGlobalDelivery;
  int? minStockNotify;
  int? maxStockAllowed;
  List<DishOption>? dishOptions;
  dynamic dishBranchStatus;
  List<dynamic>? dishImages;
  factory Dish.fromJson(Map<String, dynamic> json) => _$DishFromJson(json);
  Map<String, dynamic> toJson() => _$DishToJson(this);
}
