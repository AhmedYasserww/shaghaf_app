import 'product.dart';

class Package {
  String? id;
  String? title;
  int? duration;
  int? extraPrice;
  int? price;
  List<Product>? products;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  Package({
    this.id,
    this.title,
    this.duration,
    this.extraPrice,
    this.price,
    this.products,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory Package.fromJson(Map<String, dynamic> json) => Package(
        id: json['_id'] as String?,
        title: json['title'] as String?,
        duration: json['duration'] as int?,
        extraPrice: json['extraPrice'] as int?,
        price: json['price'] as int?,
        products: (json['products'] as List<dynamic>?)
            ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
            .toList(),
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
        'title': title,
        'duration': duration,
        'extraPrice': extraPrice,
        'price': price,
        'products': products?.map((e) => e.toJson()).toList(),
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        '__v': v,
      };
}
