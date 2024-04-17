import 'package:flutter_image_saerch_clean_architecture/data/dto/photo_result_dto.dart';
import 'package:flutter_image_saerch_clean_architecture/domain/model/photo.dart';

extension ToPhoto on Hits {
  Photo toPhoto() {
    return Photo(
      id: id!.toInt(),
      url: previewURL ?? '',
      largeImageUrl: largeImageURL ?? '',
      tags: tags ?? '',
    );
  }
}
