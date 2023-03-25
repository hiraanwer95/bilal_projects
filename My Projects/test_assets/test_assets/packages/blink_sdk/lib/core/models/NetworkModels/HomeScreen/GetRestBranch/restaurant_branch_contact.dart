import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'data.dart';
part 'restaurant_branch_contact.g.dart';

@JsonSerializable()
class RestaurantBranchContact {
    RestaurantBranchContact({
        this.id,
        this.restBrId,
        this.contact,
        this.type,
        this.contactPerson,
    });

    int? id;
    int? restBrId;
    String? contact;
    int? type;
    String? contactPerson;
  factory RestaurantBranchContact.fromJson(Map<String, dynamic> json) =>
      _$RestaurantBranchContactFromJson(json);
  Map<String, dynamic> toJson() => _$RestaurantBranchContactToJson(this);
}
