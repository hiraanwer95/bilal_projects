// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as int?,
      isWhitelabel: json['isWhitelabel'] as int?,
      isEp: json['isEp'] as int?,
      menuType: json['menuType'] as int?,
      emWalletSupported: json['emWalletSupported'] as int?,
      loyaltyStatus: json['loyaltyStatus'] as int?,
      loyaltyPercentage: json['loyaltyPercentage'] as int?,
      name: json['name'] as String?,
      tags: json['tags'] as String?,
      tax: json['tax'] as int?,
      menuInclusiveTax: json['menuInclusiveTax'],
      avgPrice: json['avgPrice'] as int?,
      priority: json['priority'] as int?,
      status: json['status'] as int?,
      logo: json['logo'] as String?,
      favicon: json['favicon'],
      description: json['description'] as String?,
      country: json['country'] as String?,
      urlKey: json['urlKey'] as String?,
      onboardDate: json['onboardDate'] == null
          ? null
          : DateTime.parse(json['onboardDate'] as String),
      freePeriodStartDate: json['freePeriodStartDate'] as String?,
      freePeriodEndDate: json['freePeriodEndDate'] as String?,
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
      brandType: json['brandType'] as String?,
      assignedAcm: json['assignedAcm'] as int?,
      fpExclusive: json['fpExclusive'] as int?,
      urlMenu: json['urlMenu'],
      fcmWebapiKey: json['fcmWebapiKey'],
      fcmServerKey: json['fcmServerKey'],
      timezone: json['timezone'] as String?,
      currencySymbol: json['currencySymbol'] as String?,
      currency: json['currency'] as String?,
      autoAccept: json['autoAccept'] as int?,
      reportingStatus: json['reportingStatus'] as int?,
      paymentGateway: json['paymentGateway'] as String?,
      feedbackEnable: json['feedbackEnable'] as int?,
      smsCount: json['smsCount'] as int?,
      fbCatalogueEnable: json['fbCatalogueEnable'] as int?,
      isStockEnable: json['isStockEnable'] as int?,
      isStockReplenishEmail: json['isStockReplenishEmail'] as int?,
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
      billingType: json['billingType'] as int?,
      billingAmount: json['billingAmount'] as String?,
      headOfficeAddress: json['headOfficeAddress'] as String?,
      email: json['email'] as String?,
      stateId: json['stateId'] as int?,
      showOutOfStock: json['showOutOfStock'] as int?,
      isReturnEnabled: json['isReturnEnabled'] as int?,
      creditPoints: json['creditPoints'] as int?,
      isGrowYourOrderEnabled: json['isGrowYourOrderEnabled'] as int?,
      isTwilioEnabled: json['isTwilioEnabled'] as int?,
      otpEnable: json['otpEnable'] as int?,
      globalAllowedDevice: json['globalAllowedDevice'] as int?,
      instantAllowedDevice: json['instantAllowedDevice'] as int?,
      globalBranchId: json['globalBranchId'],
      restaurantBranches: (json['restaurantBranches'] as List<dynamic>?)
          ?.map((e) => RestaurantBranch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'isWhitelabel': instance.isWhitelabel,
      'isEp': instance.isEp,
      'menuType': instance.menuType,
      'emWalletSupported': instance.emWalletSupported,
      'loyaltyStatus': instance.loyaltyStatus,
      'loyaltyPercentage': instance.loyaltyPercentage,
      'name': instance.name,
      'tags': instance.tags,
      'tax': instance.tax,
      'menuInclusiveTax': instance.menuInclusiveTax,
      'avgPrice': instance.avgPrice,
      'priority': instance.priority,
      'status': instance.status,
      'logo': instance.logo,
      'favicon': instance.favicon,
      'description': instance.description,
      'country': instance.country,
      'urlKey': instance.urlKey,
      'onboardDate': instance.onboardDate?.toIso8601String(),
      'freePeriodStartDate': instance.freePeriodStartDate,
      'freePeriodEndDate': instance.freePeriodEndDate,
      'emWalletCashbackPercent': instance.emWalletCashbackPercent,
      'emWalletCashbackAmount': instance.emWalletCashbackAmount,
      'emWalletMinorderAmount': instance.emWalletMinorderAmount,
      'isLogoProvided': instance.isLogoProvided,
      'promoAccepting': instance.promoAccepting,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'brandType': instance.brandType,
      'assignedAcm': instance.assignedAcm,
      'fpExclusive': instance.fpExclusive,
      'urlMenu': instance.urlMenu,
      'fcmWebapiKey': instance.fcmWebapiKey,
      'fcmServerKey': instance.fcmServerKey,
      'timezone': instance.timezone,
      'currencySymbol': instance.currencySymbol,
      'currency': instance.currency,
      'autoAccept': instance.autoAccept,
      'reportingStatus': instance.reportingStatus,
      'paymentGateway': instance.paymentGateway,
      'feedbackEnable': instance.feedbackEnable,
      'smsCount': instance.smsCount,
      'fbCatalogueEnable': instance.fbCatalogueEnable,
      'isStockEnable': instance.isStockEnable,
      'isStockReplenishEmail': instance.isStockReplenishEmail,
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
      'billingType': instance.billingType,
      'billingAmount': instance.billingAmount,
      'headOfficeAddress': instance.headOfficeAddress,
      'email': instance.email,
      'stateId': instance.stateId,
      'showOutOfStock': instance.showOutOfStock,
      'isReturnEnabled': instance.isReturnEnabled,
      'creditPoints': instance.creditPoints,
      'isGrowYourOrderEnabled': instance.isGrowYourOrderEnabled,
      'isTwilioEnabled': instance.isTwilioEnabled,
      'otpEnable': instance.otpEnable,
      'globalAllowedDevice': instance.globalAllowedDevice,
      'instantAllowedDevice': instance.instantAllowedDevice,
      'globalBranchId': instance.globalBranchId,
      'restaurantBranches': instance.restaurantBranches,
    };