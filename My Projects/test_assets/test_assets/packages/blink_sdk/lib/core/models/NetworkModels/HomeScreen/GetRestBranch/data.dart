import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'rest_branch.dart';
part 'data.g.dart';

@JsonSerializable()
class Data {
  Data({
    this.id,
    this.isWhitelabel,
    this.isEp,
    this.menuType,
    this.emWalletSupported,
    this.loyaltyStatus,
    this.loyaltyPercentage,
    this.name,
    this.tags,
    this.tax,
    this.menuInclusiveTax,
    this.avgPrice,
    this.priority,
    this.status,
    this.logo,
    this.favicon,
    this.description,
    this.country,
    this.urlKey,
    this.onboardDate,
    this.freePeriodStartDate,
    this.freePeriodEndDate,
    this.emWalletCashbackPercent,
    this.emWalletCashbackAmount,
    this.emWalletMinorderAmount,
    this.isLogoProvided,
    this.promoAccepting,
    this.createdAt,
    this.updatedAt,
    this.brandType,
    this.assignedAcm,
    this.fpExclusive,
    this.urlMenu,
    this.fcmWebapiKey,
    this.fcmServerKey,
    this.timezone,
    this.currencySymbol,
    this.currency,
    this.autoAccept,
    this.reportingStatus,
    this.paymentGateway,
    this.feedbackEnable,
    this.smsCount,
    this.fbCatalogueEnable,
    this.isStockEnable,
    this.isStockReplenishEmail,
    this.mostSellingEnable,
    this.pickingNPackingEnable,
    this.instantDeliveryLabel,
    this.globalDeliveryLabel,
    this.emailBanner,
    this.smsMarketingEnable,
    this.smsMarketingGateway,
    this.printCategoryGroup,
    this.callRiderSeparate,
    this.restaurantDeviceType,
    this.billingType,
    this.billingAmount,
    this.headOfficeAddress,
    this.email,
    this.stateId,
    this.showOutOfStock,
    this.isReturnEnabled,
    this.creditPoints,
    this.isGrowYourOrderEnabled,
    this.isTwilioEnabled,
    this.otpEnable,
    this.globalAllowedDevice,
    this.instantAllowedDevice,
    this.globalBranchId,
    this.restaurantBranches,
  });

  int? id;
  int? isWhitelabel;
  int? isEp;
  int? menuType;
  int? emWalletSupported;
  int? loyaltyStatus;
  int? loyaltyPercentage;
  String? name;
  String? tags;
  int? tax;
  dynamic menuInclusiveTax;
  int? avgPrice;
  int? priority;
  int? status;
  String? logo;
  dynamic favicon;
  String? description;
  String? country;
  String? urlKey;
  DateTime? onboardDate;
  String? freePeriodStartDate;
  String? freePeriodEndDate;
  dynamic emWalletCashbackPercent;
  dynamic emWalletCashbackAmount;
  dynamic emWalletMinorderAmount;
  int? isLogoProvided;
  int? promoAccepting;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? brandType;
  int? assignedAcm;
  int? fpExclusive;
  dynamic urlMenu;
  dynamic fcmWebapiKey;
  dynamic fcmServerKey;
  String? timezone;
  String? currencySymbol;
  String? currency;
  int? autoAccept;
  int? reportingStatus;
  String? paymentGateway;
  int? feedbackEnable;
  int? smsCount;
  int? fbCatalogueEnable;
  int? isStockEnable;
  int? isStockReplenishEmail;
  int? mostSellingEnable;
  int? pickingNPackingEnable;
  dynamic instantDeliveryLabel;
  dynamic globalDeliveryLabel;
  dynamic emailBanner;
  int? smsMarketingEnable;
  dynamic smsMarketingGateway;
  int? printCategoryGroup;
  int? callRiderSeparate;
  int? restaurantDeviceType;
  int? billingType;
  String? billingAmount;
  String? headOfficeAddress;
  String? email;
  int? stateId;
  int? showOutOfStock;
  int? isReturnEnabled;
  int? creditPoints;
  int? isGrowYourOrderEnabled;
  int? isTwilioEnabled;
  int? otpEnable;
  int? globalAllowedDevice;
  int? instantAllowedDevice;
  dynamic globalBranchId;
  List<RestaurantBranch>? restaurantBranches;
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}
