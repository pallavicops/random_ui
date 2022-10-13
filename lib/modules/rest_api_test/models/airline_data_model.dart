// To parse this JSON data, do
//
//     final airlineDataModel = airlineDataModelFromJson(jsonString);

import 'dart:convert';

List<AirlineDataModel> airlineDataModelFromJson(String str) =>
    List<AirlineDataModel>.from(
        json.decode(str).map((x) => AirlineDataModel.fromJson(x)));

String airlineDataModelToJson(List<AirlineDataModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AirlineDataModel {
  AirlineDataModel({
    required this.id,
    required this.name,
    required this.country,
    required this.logo,
    required this.slogan,
    required this.headQuaters,
    required this.website,
    required this.established,
  });

  String id;
  String? name;
  String? country;
  String? logo;
  String? slogan;
  String? headQuaters;
  String? website;
  String? established;

  factory AirlineDataModel.fromJson(Map<String, dynamic> json) =>
      AirlineDataModel(
        id: json["id"] == null ? '0' : json["id"].toString(),
        name: json["name"],
        country: json["country"],
        logo: json["logo"],
        slogan: json["slogan"],
        headQuaters: json["head_quaters"],
        website: json["website"],
        established: json["established"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "country": country,
        "logo": logo,
        "slogan": slogan,
        "head_quaters": headQuaters,
        "website": website,
        "established": established,
      };
}
