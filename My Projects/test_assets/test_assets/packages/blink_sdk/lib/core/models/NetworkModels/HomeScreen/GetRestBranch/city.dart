import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'data.dart';
part 'city.g.dart';

@JsonSerializable()
class City {
 City({
        this.id,
        this.stateId,
        this.creationDate,
        this.modifiedDate,
        this.name,
        this.countryId,
    });

    int? id;
    int? stateId;
    dynamic creationDate;
    dynamic modifiedDate;
    String? name;
    int? countryId;

  factory City.fromJson(Map<String, dynamic> json) =>
      _$CityFromJson(json);
  Map<String, dynamic> toJson() => _$CityToJson(this);
}
