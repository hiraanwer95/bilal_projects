import 'dart:async';
import "package:dio/dio.dart";
import 'api_client.dart';
import 'end_points.dart';

class ApiCalls {
  final HttpService _httpService = HttpService();
  Future<Response> getRestaurantGeofences(restaurantId) async =>
      await _httpService.get(
          EndPoints.getRestaurantGeofences(restaurantId), null);

  Future<Response> getSplashForBanners(
          restaurantId, restaurantBranchId) async =>
      await _httpService.get(
          EndPoints.getSplashForBanners(restaurantId, restaurantBranchId),
          null);

  Future<Response> getStoreMenu(restaurantId, restaurantBranchId) async =>
      await _httpService.get(
          EndPoints.getStoreMenu(restaurantId, restaurantBranchId), null);

  Future<Response> getRestaurantBranch(
          restaurantId, restaurantBranchId) async =>
      await _httpService.get(
          EndPoints.getRestaurantBranch(restaurantId, restaurantBranchId),
          null);

  // Future<Response> postExample(prizeId, isAuthenticate) async => await _httpService
  //     .post(EndPoints.postEndPointExample, {});
  // Future<Response> updateExample(params) async =>
  //     await _httpService.put(EndPoints.updateEndPointExample, params);

}
