// Class for api tags

class EndPoints {
  // static const baseUrl =
  //     "https://staging.eatmubarak.pk/services-laravel/public/application/app/";

  //  static const baseUrl =  "https://stg-api.blinkco.io/application/app/";
  static const baseUrl = "https://api.blinkco.io/application/app/";

  static getRestaurantGeofences(restaurantId) =>
      "getRestaurantGeofences?restId=${restaurantId}}";
  static getSplashForBanners(restaurantId, restaurantBranchId) =>
      "getSplash?restId=${restaurantId}&rest_brId=${restaurantBranchId}";

  static getStoreMenu(restaurantId, restaurantBranchId) =>
      "getStoreMenu?restId=${restaurantId}&rest_brId=${restaurantBranchId}";

  static getRestaurantBranch(restaurantId, restaurantBranchId) =>
      "getRestaurantBranch?restId=${restaurantId}&rest_brId=${restaurantBranchId}";
}
