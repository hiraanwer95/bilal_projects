import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'data.dart';
part 'get_store_menu.g.dart';

@JsonSerializable()
class GetStoreMenu {
  GetStoreMenu({
        this.status,
        this.msg,
        this.data,
  });

    int? status;
    String? msg;
    List<Data>? data;

  factory GetStoreMenu.fromJson(Map<String, dynamic> json) => _$GetStoreMenuFromJson(json);
  Map<String, dynamic> toJson() => _$GetStoreMenuToJson(this);
}
