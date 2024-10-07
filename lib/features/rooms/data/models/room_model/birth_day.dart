class BirthDay {
  int? price;

  BirthDay({this.price});

  factory BirthDay.fromJson(Map<String, dynamic> json) => BirthDay(
        price: json['price'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'price': price,
      };
}
