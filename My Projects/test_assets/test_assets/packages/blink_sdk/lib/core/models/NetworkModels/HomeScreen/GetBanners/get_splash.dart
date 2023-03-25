import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'data.dart';
part 'get_splash.g.dart';


@JsonSerializable()
class GetSplash {
  GetSplash({
    this.status,
    this.msg,
    this.data,
  });
  int? status;
  String? msg;
  List<Data>? data;

  factory GetSplash.fromJson(Map<String, dynamic> json) => _$GetSplashFromJson(json);
  Map<String, dynamic> toJson() => _$GetSplashToJson(this);
}
