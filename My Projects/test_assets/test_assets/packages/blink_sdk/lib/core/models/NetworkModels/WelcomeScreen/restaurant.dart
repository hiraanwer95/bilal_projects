import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'restaurant.g.dart';

@JsonSerializable()
class Restaurant {
 Restaurant({
        this.id,
        this.isWhitelabel,
        this.isEp,
        this.menuType,
        this.name,
       this.tags,
        this.tax,
        this.menuInclusiveTax,
        this.avgPrice,
        this.priority,
        this.status,
        this.logo,
        this.favicon,
        this.urlKey,
        this.onboardDate,
         this.freePeriodStartDate,
         this.freePeriodEndDate,
        this.description,
        this.emWalletSupported,
        this.emWalletCashbackPercent,
        this.emWalletCashbackAmount,
        this.emWalletMinorderAmount,
        this.isLogoProvided,
        this.promoAccepting,
        this.createdAt,
        this.updatedAt,
        this.loyaltyPercentage,
        this.brandType,
        this.assignedAcm,
        this.fpExclusive,
        this.country,
        this.urlMenu,
        this.currency_symbol,
         this.loyaltyStatus,
        this.fcmWebapiKey,
        this.fcmServerKey,
       this.timezone,
        this.currency,
        this.autoAccept,
        this.reportingStatus,
        this.paymentGateway,
        this.timezoneName,
        this.feedbackEnable,
        this.smsCount,
        this.isStockEnable,
        this.isStockReplenishEmail,
        this.fbCatalogueEnable,
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
        this.showOutOfStock,
        this.isReturnEnabled,
    });

  int? id;
  int? isWhitelabel;
  int? isEp;
  int? menuType;
  String? name;
  String? tags;
  int? tax;
  dynamic menuInclusiveTax;
  int? avgPrice;
  int? priority;
  int? status;
  String? logo;
  dynamic favicon;
  String? urlKey;
  DateTime? onboardDate;
  String? freePeriodStartDate;
  String? freePeriodEndDate;
  dynamic description;
  int? emWalletSupported;
  dynamic emWalletCashbackPercent;
  dynamic emWalletCashbackAmount;
  dynamic emWalletMinorderAmount;
  int? isLogoProvided;
  int? promoAccepting;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? loyaltyPercentage;
  String? brandType;
  int? assignedAcm;
  int? fpExclusive;
  dynamic country;
  dynamic? urlMenu;
  String? currency_symbol;
  int? loyaltyStatus;
  dynamic fcmWebapiKey;
  dynamic fcmServerKey;
  String? timezone;
  String? currency;
  int? autoAccept;
  int? reportingStatus;
  String? paymentGateway;
  dynamic timezoneName;
  int? feedbackEnable;
  int? smsCount;
  int? isStockEnable;
  int? isStockReplenishEmail;
  int? fbCatalogueEnable;
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
  int? showOutOfStock;
  int? isReturnEnabled;

  factory Restaurant.fromJson(Map<String, dynamic> json) =>
      _$RestaurantFromJson(json);
  Map<String, dynamic> toJson() => _$RestaurantToJson(this);
}
