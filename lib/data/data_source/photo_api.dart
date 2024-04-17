import 'dart:convert';

import 'package:flutter_image_saerch_clean_architecture/data/dto/photo_result_dto.dart';
import 'package:http/http.dart' as http;

class PhotoApi {
  final _key = '43170943-e45c9b7159f8d7bc72ec9892f';
  final _url = 'https://pixabay.com/api/?key=';

  Future<PhotoResultDto> getPhotoResults(String query) async {
    final replaced = query.replaceAll(' ', '+');

    final http.Response response =
        await http.get(Uri.parse('$_url$_key&q=$replaced&image_type=photo'));

    final json = jsonDecode(response.body);

    return PhotoResultDto.fromJson(json);
  }
}
