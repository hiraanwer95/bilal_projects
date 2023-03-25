import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'area.dart';
import 'branch_geofence.dart';
import 'city.dart';
import 'restaurant_branch_contact.dart';
import 'restaurant_branch_timing.dart';
part 'rest_branch.g.dart';

@JsonSerializable()
class RestaurantBranch {
  RestaurantBranch({
        this.id,
        this.status,
        this.createdAt,
        this.stageType,
        this.reviewsCount,
        this.restId,
        this.isGlobalDelivery,
        this.isdelivery,
        this.ownerId,
        this.restType,
        this.payType,
        this.deliveryType,
        this.excludeDeliveryChargesAmount,
        this.urlKey,
        this.tpOutletCode,
        this.houseNum,
        this.street,
        this.areaId,
        this.cityId,
        this.postalCode,
        this.countryId,
        this.stateId,
        this.lat,
        this.lng,
        this.rating,
        this.ratingCount,
        this.totalRating,
        this.photosCount,
        this.deliveryChargesThreshold,
        this.minorder,
        this.isPermanantClosed,
        this.permanentCloseReason,
        this.isTemporaryClosed,
        this.tempCloseReason,
        this.tempCloseBy,
        this.popularitems,
        this.checkinCount,
        this.taxPercentage,
        this.taxPercentageOnline,
        this.vendorEmail,
        this.vendorNtn,
        this.isAsapOnly,
        this.isPreOrderOnly,
        this.sameDayPreOrder,
        this.minPreorderHrs,
        this.maxPreorderHrs,
        this.tpLiveToggleReason,
        this.disclaimer,
        this.csmName,
        this.billingAmount,
        this.orderPrepTimeInMin,
        this.deliveryCompany,
        this.isDinein,
        this.isWhatsapp,
        this.smsNotifyContact,
        this.orderNotifyEnabled,
        this.fbrPosChargeEnabled,
        this.fbrPosChargeValue,
        this.allowedDevices,
        this.area,
        this.city,
        this.state,
        this.restaurantBranchTimings,
        this.restaurantBranchContacts,
        this.branchGeofences,
    });

    int? id;
    int? status;
    DateTime? createdAt;
    int? stageType;
    int? reviewsCount;
    int? restId;
    int? isGlobalDelivery;
    int? isdelivery;
    int? ownerId;
    int? restType;
    int? payType;
    int? deliveryType;
    dynamic excludeDeliveryChargesAmount;
    String? urlKey;
    String? tpOutletCode;
    String? houseNum;
    String? street;
    int? areaId;
    int? cityId;
    dynamic postalCode;
    int? countryId;
    int? stateId;
    double? lat;
    double? lng;
    String? rating;
    int? ratingCount;
    String? totalRating;
    int? photosCount;
    int? deliveryChargesThreshold;
    int? minorder;
    int? isPermanantClosed;
    dynamic permanentCloseReason;
    int? isTemporaryClosed;
    dynamic tempCloseReason;
    dynamic tempCloseBy;
    String? popularitems;
    int? checkinCount;
    int? taxPercentage;
    int? taxPercentageOnline;
    String? vendorEmail;
    String? vendorNtn;
    int? isAsapOnly;
    int? isPreOrderOnly;
    int? sameDayPreOrder;
    int? minPreorderHrs;
    int? maxPreorderHrs;
    dynamic tpLiveToggleReason;
    String? disclaimer;
    String? csmName;
    String? billingAmount;
    int? orderPrepTimeInMin;
    String? deliveryCompany;
    int? isDinein;
    int? isWhatsapp;
    String? smsNotifyContact;
    int? orderNotifyEnabled;
    int? fbrPosChargeEnabled;
    String? fbrPosChargeValue;
    int? allowedDevices;
    Area? area;
    City? city;
    City? state;
    List<RestaurantBranchTiming>? restaurantBranchTimings;
    List<RestaurantBranchContact>? restaurantBranchContacts;
    List<BranchGeofence>? branchGeofences;



  factory RestaurantBranch.fromJson(Map<String, dynamic> json) => _$RestaurantBranchFromJson(json);
  Map<String, dynamic> toJson() => _$RestaurantBranchToJson(this);
}
