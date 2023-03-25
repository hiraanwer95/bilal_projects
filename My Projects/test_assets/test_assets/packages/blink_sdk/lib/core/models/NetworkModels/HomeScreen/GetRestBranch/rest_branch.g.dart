// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_branch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantBranch _$RestaurantBranchFromJson(Map<String, dynamic> json) =>
    RestaurantBranch(
      id: json['id'] as int?,
      status: json['status'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      stageType: json['stageType'] as int?,
      reviewsCount: json['reviewsCount'] as int?,
      restId: json['restId'] as int?,
      isGlobalDelivery: json['isGlobalDelivery'] as int?,
      isdelivery: json['isdelivery'] as int?,
      ownerId: json['ownerId'] as int?,
      restType: json['restType'] as int?,
      payType: json['payType'] as int?,
      deliveryType: json['deliveryType'] as int?,
      excludeDeliveryChargesAmount: json['excludeDeliveryChargesAmount'],
      urlKey: json['urlKey'] as String?,
      tpOutletCode: json['tpOutletCode'] as String?,
      houseNum: json['houseNum'] as String?,
      street: json['street'] as String?,
      areaId: json['areaId'] as int?,
      cityId: json['cityId'] as int?,
      postalCode: json['postalCode'],
      countryId: json['countryId'] as int?,
      stateId: json['stateId'] as int?,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      rating: json['rating'] as String?,
      ratingCount: json['ratingCount'] as int?,
      totalRating: json['totalRating'] as String?,
      photosCount: json['photosCount'] as int?,
      deliveryChargesThreshold: json['deliveryChargesThreshold'] as int?,
      minorder: json['minorder'] as int?,
      isPermanantClosed: json['isPermanantClosed'] as int?,
      permanentCloseReason: json['permanentCloseReason'],
      isTemporaryClosed: json['isTemporaryClosed'] as int?,
      tempCloseReason: json['tempCloseReason'],
      tempCloseBy: json['tempCloseBy'],
      popularitems: json['popularitems'] as String?,
      checkinCount: json['checkinCount'] as int?,
      taxPercentage: json['taxPercentage'] as int?,
      taxPercentageOnline: json['taxPercentageOnline'] as int?,
      vendorEmail: json['vendorEmail'] as String?,
      vendorNtn: json['vendorNtn'] as String?,
      isAsapOnly: json['isAsapOnly'] as int?,
      isPreOrderOnly: json['isPreOrderOnly'] as int?,
      sameDayPreOrder: json['sameDayPreOrder'] as int?,
      minPreorderHrs: json['minPreorderHrs'] as int?,
      maxPreorderHrs: json['maxPreorderHrs'] as int?,
      tpLiveToggleReason: json['tpLiveToggleReason'],
      disclaimer: json['disclaimer'] as String?,
      csmName: json['csmName'] as String?,
      billingAmount: json['billingAmount'] as String?,
      orderPrepTimeInMin: json['orderPrepTimeInMin'] as int?,
      deliveryCompany: json['deliveryCompany'] as String?,
      isDinein: json['isDinein'] as int?,
      isWhatsapp: json['isWhatsapp'] as int?,
      smsNotifyContact: json['smsNotifyContact'] as String?,
      orderNotifyEnabled: json['orderNotifyEnabled'] as int?,
      fbrPosChargeEnabled: json['fbrPosChargeEnabled'] as int?,
      fbrPosChargeValue: json['fbrPosChargeValue'] as String?,
      allowedDevices: json['allowedDevices'] as int?,
      area: json['area'] == null
          ? null
          : Area.fromJson(json['area'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
      state: json['state'] == null
          ? null
          : City.fromJson(json['state'] as Map<String, dynamic>),
      restaurantBranchTimings: (json['restaurantBranchTimings']
              as List<dynamic>?)
          ?.map(
              (e) => RestaurantBranchTiming.fromJson(e as Map<String, dynamic>))
          .toList(),
      restaurantBranchContacts:
          (json['restaurantBranchContacts'] as List<dynamic>?)
              ?.map((e) =>
                  RestaurantBranchContact.fromJson(e as Map<String, dynamic>))
              .toList(),
      branchGeofences: (json['branchGeofences'] as List<dynamic>?)
          ?.map((e) => BranchGeofence.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RestaurantBranchToJson(RestaurantBranch instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'stageType': instance.stageType,
      'reviewsCount': instance.reviewsCount,
      'restId': instance.restId,
      'isGlobalDelivery': instance.isGlobalDelivery,
      'isdelivery': instance.isdelivery,
      'ownerId': instance.ownerId,
      'restType': instance.restType,
      'payType': instance.payType,
      'deliveryType': instance.deliveryType,
      'excludeDeliveryChargesAmount': instance.excludeDeliveryChargesAmount,
      'urlKey': instance.urlKey,
      'tpOutletCode': instance.tpOutletCode,
      'houseNum': instance.houseNum,
      'street': instance.street,
      'areaId': instance.areaId,
      'cityId': instance.cityId,
      'postalCode': instance.postalCode,
      'countryId': instance.countryId,
      'stateId': instance.stateId,
      'lat': instance.lat,
      'lng': instance.lng,
      'rating': instance.rating,
      'ratingCount': instance.ratingCount,
      'totalRating': instance.totalRating,
      'photosCount': instance.photosCount,
      'deliveryChargesThreshold': instance.deliveryChargesThreshold,
      'minorder': instance.minorder,
      'isPermanantClosed': instance.isPermanantClosed,
      'permanentCloseReason': instance.permanentCloseReason,
      'isTemporaryClosed': instance.isTemporaryClosed,
      'tempCloseReason': instance.tempCloseReason,
      'tempCloseBy': instance.tempCloseBy,
      'popularitems': instance.popularitems,
      'checkinCount': instance.checkinCount,
      'taxPercentage': instance.taxPercentage,
      'taxPercentageOnline': instance.taxPercentageOnline,
      'vendorEmail': instance.vendorEmail,
      'vendorNtn': instance.vendorNtn,
      'isAsapOnly': instance.isAsapOnly,
      'isPreOrderOnly': instance.isPreOrderOnly,
      'sameDayPreOrder': instance.sameDayPreOrder,
      'minPreorderHrs': instance.minPreorderHrs,
      'maxPreorderHrs': instance.maxPreorderHrs,
      'tpLiveToggleReason': instance.tpLiveToggleReason,
      'disclaimer': instance.disclaimer,
      'csmName': instance.csmName,
      'billingAmount': instance.billingAmount,
      'orderPrepTimeInMin': instance.orderPrepTimeInMin,
      'deliveryCompany': instance.deliveryCompany,
      'isDinein': instance.isDinein,
      'isWhatsapp': instance.isWhatsapp,
      'smsNotifyContact': instance.smsNotifyContact,
      'orderNotifyEnabled': instance.orderNotifyEnabled,
      'fbrPosChargeEnabled': instance.fbrPosChargeEnabled,
      'fbrPosChargeValue': instance.fbrPosChargeValue,
      'allowedDevices': instance.allowedDevices,
      'area': instance.area,
      'city': instance.city,
      'state': instance.state,
      'restaurantBranchTimings': instance.restaurantBranchTimings,
      'restaurantBranchContacts': instance.restaurantBranchContacts,
      'branchGeofences': instance.branchGeofences,
    };
