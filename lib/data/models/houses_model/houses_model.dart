class HousesModel {
  final String house;
  final String emoji;
  final String founder;
  final List<String> colors;
  final String animal;
  final int index;

  HousesModel({
    required this.house,
    required this.emoji,
    required this.founder,
    required this.colors,
    required this.animal,
    required this.index,
  });

  factory HousesModel.fromJson(Map<String, dynamic> json) {
    return HousesModel(
      house: json["house"],
      emoji: json["emoji"],
      founder: json["founder"],
      colors: json["colors"],
      animal: json["animal"],
      index: json["index"],
    );
  }
}
