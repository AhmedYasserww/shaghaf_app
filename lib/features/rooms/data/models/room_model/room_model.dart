import 'location.dart';
import 'package.dart';
import 'plan.dart';

class RoomModel {
  String? id;
  String? cover;
  List<dynamic>? attachments;
  String title;
  String description;
  int? seatsNum;
  int? seatsAvailable;
  Location location;
  List<Plan>? plans;
  List<Package>? packages;
  bool? birthDay;
  List<dynamic>? amenities;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  RoomModel({
    this.id,
    this.cover,
    this.attachments,
    required this.title,
    required this.description,
    this.seatsNum,
    this.seatsAvailable,
    required this.location,
    this.plans,
    this.packages,
    this.birthDay,
    this.amenities,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory RoomModel.fromJson(Map<String, dynamic> json) => RoomModel(
        id: json['_id'] as String?,
        cover: json['cover'] as String?,
        attachments: json['attachments'] as List<dynamic>?,
        title: json['title'] as String,
        description: json['description'] as String,
        seatsNum: json['seatsNum'] as int?,
        seatsAvailable: json['seatsAvailable'] as int?,
        location:Location.fromJson(json['location'] as Map<String, dynamic>),
        plans: (json['plans'] as List<dynamic>?)
            ?.map((e) => Plan.fromJson(e as Map<String, dynamic>))
            .toList(),
        packages: (json['packages'] as List<dynamic>?)
            ?.map((e) => Package.fromJson(e as Map<String, dynamic>))
            .toList(),
        birthDay: json['birthDay'] as bool?,
        amenities: json['amenities'] as List<dynamic>?,
        createdAt: json['createdAt'] == null
            ? null
            : DateTime.parse(json['createdAt'] as String),
        updatedAt: json['updatedAt'] == null
            ? null
            : DateTime.parse(json['updatedAt'] as String),
        v: json['__v'] as int?,
      );

  Map<String, dynamic> toJson() => {
        '_id': id,
        'cover': cover,
        'attachments': attachments,
        'title': title,
        'description': description,
        'seatsNum': seatsNum,
        'seatsAvailable': seatsAvailable,
        'location': location?.toJson(),
        'plans': plans?.map((e) => e.toJson()).toList(),
        'packages': packages?.map((e) => e.toJson()).toList(),
        'birthDay': birthDay,
        'amenities': amenities,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        '__v': v,
      };
}
