import 'package:dio/dio.dart';

class APIServices {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: "https://potterapi-fedeperin.vercel.app/en",
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
    ),
  );

  // get characters
  Future<List<dynamic>> getCharacters(String character) async {
    try {
      final response = await dio.get(
        "/characters",
        queryParameters: {"/search": character},
      );

      print(response);
      return response.data;
    } on DioException catch (e) {
      throw Exception("failed to return data");
    }
  }
}
