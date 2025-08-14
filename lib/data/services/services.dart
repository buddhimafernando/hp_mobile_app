import 'package:dio/dio.dart';
import 'package:hp_explore_mobile/data/models/characters_model/characters_model.dart';

class APIServices {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: "https://potterapi-fedeperin.vercel.app/en",
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
    ),
  );

  // get characters
  Future<List<CharactersModel>> getCharacters(String? character) async {
    try {
      final response = await dio.get(
        "/characters",
        queryParameters: {"/search": character},
      );
      // print(response);
      final data = response.data as List<dynamic>;
      return data
          .map((json) => CharactersModel.fromJson(json as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      print(e.toString());
      throw Exception("failed to return data");
    }
  }
}
