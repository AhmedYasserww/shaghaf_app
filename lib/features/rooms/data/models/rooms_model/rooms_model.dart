/// YApi QuickType插件生成，具体参考文档:https://plugins.jetbrains.com/plugin/18847-yapi-quicktype/documentation

import 'dart:convert';

RoomsModel roomsModelFromJson(String str) => RoomsModel.fromJson(json.decode(str));

String roomsModelToJson(RoomsModel data) => json.encode(data.toJson());

class RoomsModel {
    RoomsModel({
        required this.birthDay,
        required this.amenities,
        required this.seatsNum,
        required this.attachments,
        required this.description,
        required this.title,
        required this.packages,
        required this.seatsAvailable,
        required this.cover,
        required this.createdAt,
        required this.plans,
        required this.v,
        required this.location,
        required this.id,
        required this.updatedAt,
    });

    bool birthDay;
    List<dynamic> amenities;
    int seatsNum;
    List<String> attachments;
    String description;
    String title;
    List<Package> packages;
    int seatsAvailable;
    String cover;
    DateTime createdAt;
    List<Plan> plans;
    int v;
    RoomsModelLocation location;
    String id;
    DateTime updatedAt;

    factory RoomsModel.fromJson(Map<dynamic, dynamic> json) => RoomsModel(
        birthDay: json["birthDay"],
        amenities: List<dynamic>.from(json["amenities"].map((x) => x)),
        seatsNum: json["seatsNum"],
        attachments: List<String>.from(json["attachments"].map((x) => x)),
        description: json["description"],
        title: json["title"],
        packages: List<Package>.from(json["packages"].map((x) => Package.fromJson(x))),
        seatsAvailable: json["seatsAvailable"],
        cover: json["cover"],
        createdAt: DateTime.parse(json["createdAt"]),
        plans: List<Plan>.from(json["plans"].map((x) => Plan.fromJson(x))),
        v: json["__v"],
        location: RoomsModelLocation.fromJson(json["location"]),
        id: json["_id"],
        updatedAt: DateTime.parse(json["updatedAt"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "birthDay": birthDay,
        "amenities": List<dynamic>.from(amenities.map((x) => x)),
        "seatsNum": seatsNum,
        "attachments": List<dynamic>.from(attachments.map((x) => x)),
        "description": description,
        "title": title,
        "packages": List<dynamic>.from(packages.map((x) => x.toJson())),
        "seatsAvailable": seatsAvailable,
        "cover": cover,
        "createdAt": createdAt.toIso8601String(),
        "plans": List<dynamic>.from(plans.map((x) => x.toJson())),
        "__v": v,
        "location": location.toJson(),
        "_id": id,
        "updatedAt": updatedAt.toIso8601String(),
    };
}

class RoomsModelLocation {
    RoomsModelLocation({
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

    factory RoomsModelLocation.fromJson(Map<dynamic, dynamic> json) => RoomsModelLocation(
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

    factory LocationLocation.fromJson(Map<dynamic, dynamic> json) => LocationLocation(
        lng: json["lng"]?.toDouble(),
        lat: json["lat"]?.toDouble(),
    );

    Map<dynamic, dynamic> toJson() => {
        "lng": lng,
        "lat": lat,
    };
}

class Package {
    Package({
        required this.duration,
        required this.createdAt,
        required this.extraPrice,
        required this.price,
        required this.v,
        required this.id,
        required this.title,
        required this.products,
        required this.updatedAt,
    });

    int duration;
    DateTime createdAt;
    int extraPrice;
    int price;
    int v;
    String id;
    String title;
    List<Product> products;
    DateTime updatedAt;

    factory Package.fromJson(Map<dynamic, dynamic> json) => Package(
        duration: json["duration"],
        createdAt: DateTime.parse(json["createdAt"]),
        extraPrice: json["extraPrice"],
        price: json["price"],
        v: json["__v"],
        id: json["_id"],
        title: json["title"],
        products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
        updatedAt: DateTime.parse(json["updatedAt"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "duration": duration,
        "createdAt": createdAt.toIso8601String(),
        "extraPrice": extraPrice,
        "price": price,
        "__v": v,
        "_id": id,
        "title": title,
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
        "updatedAt": updatedAt.toIso8601String(),
    };
}

class Product {
    Product({
        required this.product,
        required this.count,
        required this.id,
    });

    String product;
    int count;
    String id;

    factory Product.fromJson(Map<dynamic, dynamic> json) => Product(
        product: json["product"],
        count: json["count"],
        id: json["_id"],
    );

    Map<dynamic, dynamic> toJson() => {
        "product": product,
        "count": count,
        "_id": id,
    };
}

class Plan {
    Plan({
        required this.shared,
        required this.birthDay,
        required this.createdAt,
        required this.private,
        required this.v,
        required this.id,
        required this.type,
        required this.title,
        required this.updatedAt,
    });

    Shared shared;
    BirthDay birthDay;
    DateTime createdAt;
    BirthDay private;
    int v;
    String id;
    String type;
    String title;
    DateTime updatedAt;

    factory Plan.fromJson(Map<dynamic, dynamic> json) => Plan(
        shared: Shared.fromJson(json["shared"]),
        birthDay: BirthDay.fromJson(json["birthDay"]),
        createdAt: DateTime.parse(json["createdAt"]),
        private: BirthDay.fromJson(json["private"]),
        v: json["__v"],
        id: json["_id"],
        type: json["type"],
        title: json["title"],
        updatedAt: DateTime.parse(json["updatedAt"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "shared": shared.toJson(),
        "birthDay": birthDay.toJson(),
        "createdAt": createdAt.toIso8601String(),
        "private": private.toJson(),
        "__v": v,
        "_id": id,
        "type": type,
        "title": title,
        "updatedAt": updatedAt.toIso8601String(),
    };
}

class BirthDay {
    BirthDay({
        required this.price,
    });

    int price;

    factory BirthDay.fromJson(Map<dynamic, dynamic> json) => BirthDay(
        price: json["price"],
    );

    Map<dynamic, dynamic> toJson() => {
        "price": price,
    };
}

class Shared {
    Shared({
        required this.hourOne,
        required this.hourFour,
        required this.hourThree,
        required this.hourTwo,
    });

    int hourOne;
    int hourFour;
    int hourThree;
    int hourTwo;

    factory Shared.fromJson(Map<dynamic, dynamic> json) => Shared(
        hourOne: json["hourOne"],
        hourFour: json["hourFour"],
        hourThree: json["hourThree"],
        hourTwo: json["hourTwo"],
    );

    Map<dynamic, dynamic> toJson() => {
        "hourOne": hourOne,
        "hourFour": hourFour,
        "hourThree": hourThree,
        "hourTwo": hourTwo,
    };
}
