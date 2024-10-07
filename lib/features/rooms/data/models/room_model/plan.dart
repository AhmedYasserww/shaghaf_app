import 'birth_day.dart';
import 'private.dart';
import 'shared.dart';

class Plan {
  Shared? shared;
  Private? private;
  BirthDay? birthDay;
  String? id;
  String? type;
  dynamic icon;
  String? title;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  Plan({
    this.shared,
    this.private,
    this.birthDay,
    this.id,
    this.type,
    this.icon,
    this.title,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory Plan.fromJson(Map<String, dynamic> json) => Plan(
        shared: json['shared'] == null
            ? null
            : Shared.fromJson(json['shared'] as Map<String, dynamic>),
        private: json['private'] == null
            ? null
            : Private.fromJson(json['private'] as Map<String, dynamic>),
        birthDay: json['birthDay'] == null
            ? null
            : BirthDay.fromJson(json['birthDay'] as Map<String, dynamic>),
        id: json['_id'] as String?,
        type: json['type'] as String?,
        icon: json['icon'] as dynamic,
        title: json['title'] as String?,
        createdAt: json['createdAt'] == null
            ? null
            : DateTime.parse(json['createdAt'] as String),
        updatedAt: json['updatedAt'] == null
            ? null
            : DateTime.parse(json['updatedAt'] as String),
        v: json['__v'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'shared': shared?.toJson(),
        'private': private?.toJson(),
        'birthDay': birthDay?.toJson(),
        '_id': id,
        'type': type,
        'icon': icon,
        'title': title,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        '__v': v,
      };
}
