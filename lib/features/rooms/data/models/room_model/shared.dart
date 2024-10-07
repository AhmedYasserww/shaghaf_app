class Shared {
  int? hourOne;
  int? hourTwo;
  int? hourThree;
  int? hourFour;

  Shared({this.hourOne, this.hourTwo, this.hourThree, this.hourFour});

  factory Shared.fromJson(Map<String, dynamic> json) => Shared(
        hourOne: json['hourOne'] as int?,
        hourTwo: json['hourTwo'] as int?,
        hourThree: json['hourThree'] as int?,
        hourFour: json['hourFour'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'hourOne': hourOne,
        'hourTwo': hourTwo,
        'hourThree': hourThree,
        'hourFour': hourFour,
      };
}
