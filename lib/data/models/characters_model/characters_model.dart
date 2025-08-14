import 'package:flutter/foundation.dart';

class CharactersModel {
  final String fullName;
  final String nickname;
  final String hogwartsHouse;
  final String interpretedBy;
  final List children;
  final String image;
  final String birthdate;
  final int index;

  CharactersModel({
    required this.fullName,
    required this.nickname,
    required this.hogwartsHouse,
    required this.interpretedBy,
    required this.children,
    required this.image,
    required this.birthdate,
    required this.index,
  });

  factory CharactersModel.fromJson(Map<String, dynamic> json) {
    return CharactersModel(
      fullName: json['fullName'],
      nickname: json["nickname"],
      hogwartsHouse: json["hogwartsHouse"],
      interpretedBy: json["interpretedBy"],
      children: json["children"],
      image: json["image"],
      birthdate: json["birthdate"],
      index: json["index"],
    );
  }
}
