import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'data.dart';
part 'area.g.dart';

@JsonSerializable()
class Area {
  Area({
        this.id,
        this.name,
        this.cityId,
    });

    int? id;
    String? name;
    int? cityId;

  factory Area.fromJson(Map<String, dynamic> json) =>
      _$AreaFromJson(json);
  Map<String, dynamic> toJson() => _$AreaToJson(this);
}
