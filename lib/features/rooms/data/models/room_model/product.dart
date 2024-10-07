class Product {
  String? product;
  int? count;
  String? id;

  Product({this.product, this.count, this.id});

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        product: json['product'] as String?,
        count: json['count'] as int?,
        id: json['_id'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'product': product,
        'count': count,
        '_id': id,
      };
}
