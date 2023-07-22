import 'dart:convert';
import 'dart:io';

import '../model/base_model.dart';
import 'package:http/http.dart' as http;

class BasaService {
  final baseUrl = "https://jsonplaceholder.typicode.com";

  Future<dynamic> get<T extends IBaseModel>(String path,
      {required IBaseModel model}) async {
    final response = await http.get(Uri.parse("$baseUrl/$path"));

    switch (response.statusCode) {
      case HttpStatus.ok:
        return _jsonBodyParser<T>(model, response.body);

      default:
        throw response.body;
    }
  }

  dynamic _jsonBodyParser<T>(IBaseModel model, String body) {
    final jsonbody = jsonDecode(body);
    if (jsonbody is List) {
      return jsonbody.map((e) => model.fromJson(e)).toList().cast<T>();
    } else {
      return jsonbody;
    }
  }
}
