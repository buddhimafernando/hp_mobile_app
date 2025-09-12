class SpellsModel {
  final String spell;
  final String use;
  final int? index;

  SpellsModel({required this.spell, required this.use, this.index});

  factory SpellsModel.fromjson(Map<String, dynamic> json) {
    return SpellsModel(
      spell: json["spell"],
      use: json["use"],
      index: json["int"],
    );
  }
}
