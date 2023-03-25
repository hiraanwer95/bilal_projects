// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Restaurant _$RestaurantFromJson(Map<String, dynamic> json) => Restaurant(
      id: json['id'] as int?,
      isWhitelabel: json['isWhitelabel'] as int?,
      isEp: json['isEp'] as int?,
      menuType: json['menuType'] as int?,
      name: json['name'] as String?,
      tags: json['tags'] as String?,
      tax: json['tax'] as int?,
      menuInclusiveTax: json['menuInclusiveTax'],
      avgPrice: json['avgPrice'] as int?,
      priority: json['priority'] as int?,
      status: json['status'] as int?,
      logo: json['logo'] as String?,
      favicon: json['favicon'],
      urlKey: json['urlKey'] as String?,
      onboardDate: json['onboardDate'] == null
          ? null
          : DateTime.parse(json['onboardDate'] as String),
      freePeriodStartDate: json['freePeriodStartDate'] as String?,
      freePeriodEndDate: json['freePeriodEndDate'] as String?,
      description: json['description'],
      emWalletSupported: json['emWalletSupported'] as int?,
      emWalletCashbackPercent: json['emWalletCashbackPercent'],
      emWalletCashbackAmount: json['emWalletCashbackAmount'],
      emWalletMinorderAmount: json['emWalletMinorderAmount'],
      isLogoProvided: json['isLogoProvided'] as int?,
      promoAccepting: json['promoAccepting'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      loyaltyPercentage: json['loyaltyPercentage'] as int?,
      brandType: json['brandType'] as String?,
      assignedAcm: json['assignedAcm'] as int?,
      fpExclusive: json['fpExclusive'] as int?,
      country: json['country'],
      urlMenu: json['urlMenu'],
      currency_symbol: json['currency_symbol'] as String?,
      loyaltyStatus: json['loyaltyStatus'] as int?,
      fcmWebapiKey: json['fcmWebapiKey'],
      fcmServerKey: json['fcmServerKey'],
      timezone: json['timezone'] as String?,
      currency: json['currency'] as String?,
      autoAccept: json['autoAccept'] as int?,
      reportingStatus: json['reportingStatus'] as int?,
      paymentGateway: json['paymentGateway'] as String?,
      timezoneName: json['timezoneName'],
      feedbackEnable: json['feedbackEnable'] as int?,
      smsCount: json['smsCount'] as int?,
      isStockEnable: json['isStockEnable'] as int?,
      isStockReplenishEmail: json['isStockReplenishEmail'] as int?,
      fbCatalogueEnable: json['fbCatalogueEnable'] as int?,
      mostSellingEnable: json['mostSellingEnable'] as int?,
      pickingNPackingEnable: json['pickingNPackingEnable'] as int?,
      instantDeliveryLabel: json['instantDeliveryLabel'],
      globalDeliveryLabel: json['globalDeliveryLabel'],
      emailBanner: json['emailBanner'],
      smsMarketingEnable: json['smsMarketingEnable'] as int?,
      smsMarketingGateway: json['smsMarketingGateway'],
      printCategoryGroup: json['printCategoryGroup'] as int?,
      callRiderSeparate: json['callRiderSeparate'] as int?,
      restaurantDeviceType: json['restaurantDeviceType'] as int?,
      showOutOfStock: json['showOutOfStock'] as int?,
      isReturnEnabled: json['isReturnEnabled'] as int?,
    );

Map<String, dynamic> _$RestaurantToJson(Restaurant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isWhitelabel': instance.isWhitelabel,
      'isEp': instance.isEp,
      'menuType': instance.menuType,
      'name': instance.name,
      'tags': instance.tags,
      'tax': instance.tax,
      'menuInclusiveTax': instance.menuInclusiveTax,
      'avgPrice': instance.avgPrice,
      'priority': instance.priority,
      'status': instance.status,
      'logo': instance.logo,
      'favicon': instance.favicon,
      'urlKey': instance.urlKey,
      'onboardDate': instance.onboardDate?.toIso8601String(),
      'freePeriodStartDate': instance.freePeriodStartDate,
      'freePeriodEndDate': instance.freePeriodEndDate,
      'description': instance.description,
      'emWalletSupported': instance.emWalletSupported,
      'emWalletCashbackPercent': instance.emWalletCashbackPercent,
      'emWalletCashbackAmount': instance.emWalletCashbackAmount,
      'emWalletMinorderAmount': instance.emWalletMinorderAmount,
      'isLogoProvided': instance.isLogoProvided,
      'promoAccepting': instance.promoAccepting,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'loyaltyPercentage': instance.loyaltyPercentage,
      'brandType': instance.brandType,
      'assignedAcm': instance.assignedAcm,
      'fpExclusive': instance.fpExclusive,
      'country': instance.country,
      'urlMenu': instance.urlMenu,
      'currency_symbol': instance.currency_symbol,
      'loyaltyStatus': instance.loyaltyStatus,
      'fcmWebapiKey': instance.fcmWebapiKey,
      'fcmServerKey': instance.fcmServerKey,
      'timezone': instance.timezone,
      'currency': instance.currency,
      'autoAccept': instance.autoAccept,
      'reportingStatus': instance.reportingStatus,
      'paymentGateway': instance.paymentGateway,
      'timezoneName': instance.timezoneName,
      'feedbackEnable': instance.feedbackEnable,
      'smsCount': instance.smsCount,
      'isStockEnable': instance.isStockEnable,
      'isStockReplenishEmail': instance.isStockReplenishEmail,
      'fbCatalogueEnable': instance.fbCatalogueEnable,
      'mostSellingEnable': instance.mostSellingEnable,
      'pickingNPackingEnable': instance.pickingNPackingEnable,
      'instantDeliveryLabel': instance.instantDeliveryLabel,
      'globalDeliveryLabel': instance.globalDeliveryLabel,
      'emailBanner': instance.emailBanner,
      'smsMarketingEnable': instance.smsMarketingEnable,
      'smsMarketingGateway': instance.smsMarketingGateway,
      'printCategoryGroup': instance.printCategoryGroup,
      'callRiderSeparate': instance.callRiderSeparate,
      'restaurantDeviceType': instance.restaurantDeviceType,
      'showOutOfStock': instance.showOutOfStock,
      'isReturnEnabled': instance.isReturnEnabled,
    };
