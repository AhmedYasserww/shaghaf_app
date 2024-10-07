/// YApi QuickType插件生成，具体参考文档:https://plugins.jetbrains.com/plugin/18847-yapi-quicktype/documentation

import 'dart:convert';

EventModel eventModelFromJson(String str) =>
    EventModel.fromJson(json.decode(str));

String eventModelToJson(EventModel data) => json.encode(data.toJson());

class EventModel {
  EventModel({
    required this.cover,
    required this.date,
    required this.createdAt,
    required this.cost,
    required this.v,
    required this.location,
    required this.details,
    required this.id,
    required this.title,
    required this.updatedAt,
  });

  String cover;
  DateTime date;
  DateTime createdAt;
  int cost;
  int v;
  EventModelLocation location;
  List<Detail> details;
  String id;
  String title;
  DateTime updatedAt;

  factory EventModel.fromJson(Map<dynamic, dynamic> json) => EventModel(
        cover: json["cover"],
        date: DateTime.parse(json["date"]),
        createdAt: DateTime.parse(json["createdAt"]),
        cost: json["cost"],
        v: json["__v"],
        location: EventModelLocation.fromJson(json["location"]),
        details:
            List<Detail>.from(json["details"].map((x) => Detail.fromJson(x))),
        id: json["_id"],
        title: json["title"],
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<dynamic, dynamic> toJson() => {
        "cover": cover,
        "date": date.toIso8601String(),
        "createdAt": createdAt.toIso8601String(),
        "cost": cost,
        "__v": v,
        "location": location.toJson(),
        "details": List<dynamic>.from(details.map((x) => x.toJson())),
        "_id": id,
        "title": title,
        "updatedAt": updatedAt.toIso8601String(),
      };
}

class Detail {
  Detail({
    required this.id,
    required this.title,
  });

  String id;
  String title;

  factory Detail.fromJson(Map<dynamic, dynamic> json) => Detail(
        id: json["_id"],
        title: json["title"],
      );

  Map<dynamic, dynamic> toJson() => {
        "_id": id,
        "title": title,
      };
}

class EventModelLocation {
  EventModelLocation({
    required this.createdAt,
    required this.v,
    required this.name,
    required this.location,
    required this.id,
    required this.updatedAt,
  });

  DateTime createdAt;
  int v;
  String name;
  LocationLocation location;
  String id;
  DateTime updatedAt;

  factory EventModelLocation.fromJson(Map<dynamic, dynamic> json) =>
      EventModelLocation(
        createdAt: DateTime.parse(json["createdAt"]),
        v: json["__v"],
        name: json["name"],
        location: LocationLocation.fromJson(json["location"]),
        id: json["_id"],
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<dynamic, dynamic> toJson() => {
        "createdAt": createdAt.toIso8601String(),
        "__v": v,
        "name": name,
        "location": location.toJson(),
        "_id": id,
        "updatedAt": updatedAt.toIso8601String(),
      };
}

class LocationLocation {
  LocationLocation({
    required this.lng,
    required this.lat,
  });

  double lng;
  double lat;

  factory LocationLocation.fromJson(Map<dynamic, dynamic> json) =>
      LocationLocation(
        lng: json["lng"]?.toDouble(),
        lat: json["lat"]?.toDouble(),
      );

  Map<dynamic, dynamic> toJson() => {
        "lng": lng,
        "lat": lat,
      };
}
