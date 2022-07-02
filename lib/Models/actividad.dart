// To parse this JSON data, do
//
//     final actividadModel = actividadModelFromJson(jsonString);

import 'dart:convert';

ActividadModel actividadModelFromJson(String str) =>
    ActividadModel.fromJson(json.decode(str));

String actividadModelToJson(ActividadModel data) => json.encode(data.toJson());

class ActividadModel {
  ActividadModel({
    this.activity,
    this.type,
    this.participants,
    this.price,
    this.key,
    this.accessibility,
  });

  String? activity;
  String? type;
  int? participants;
  int? price;
  String? key;
  double? accessibility;

  factory ActividadModel.fromJson(Map<String, dynamic> json) => ActividadModel(
        activity: json["activity"],
        type: json["type"],
        participants: json["participants"],
        price: json["price"],
        key: json["key"],
        accessibility: json["accessibility"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "activity": activity,
        "type": type,
        "participants": participants,
        "price": price,
        "key": key,
        "accessibility": accessibility,
      };
}
