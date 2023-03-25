import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'data.dart';
part 'get_rest_branch.g.dart';

@JsonSerializable()
class GetRestaurantBranch {
   GetRestaurantBranch({
        this.status,
        this.msg,
        this.data,
    });

    int? status;
    String? msg;
    Data? data;

  factory GetRestaurantBranch.fromJson(Map<String, dynamic> json) =>
      _$GetRestaurantBranchFromJson(json);
  Map<String, dynamic> toJson() => _$GetRestaurantBranchToJson(this);
}
