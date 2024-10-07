class Private {
  int? price;

  Private({this.price});

  factory Private.fromJson(Map<String, dynamic> json) => Private(
        price: json['price'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'price': price,
      };
}
