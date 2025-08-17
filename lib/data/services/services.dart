import 'package:dio/dio.dart';
import 'package:hp_explore_mobile/data/models/characters_model/characters_model.dart';
import 'package:hp_explore_mobile/data/models/houses_model/houses_model.dart';

class APIServices {
  final Dio dio = Dio(
      BaseOptions(
        baseUrl: "https://potterapi-fedeperin.vercel.app/en",
        connectTimeout: Duration(seconds: 10),
        receiveTimeout: Duration(seconds: 10),
      ),
    )
    ..interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        // responseHeader: true,
        responseBody: true,
        error: true,
        logPrint: (obj) => print(obj), // you can replace with logger package
      ),
    );

  // get characters
  Future<List<CharactersModel>> getCharacters(String? character) async {
    try {
      final response = await dio.get(
        "/characters",
        queryParameters: {"/search": character},
      );

      final data = response.data as List<dynamic>;
      return data
          .map((json) => CharactersModel.fromJson(json as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw Exception("failed to return data");
    }
  }

  // get houses
  Future<List<HousesModel>> getHouses() async {
    try {
      final response = await dio.get("/houses");

      final data = response.data as List<dynamic>;
      return data
          .map((json) => HousesModel.fromJson(json as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw Exception("failed to return data");
    }
  }
}
