import 'package:flutter_image_saerch_clean_architecture/data/data_source/photo_api.dart';
import 'package:flutter_image_saerch_clean_architecture/data/mapper/photo_mapper.dart';
import 'package:flutter_image_saerch_clean_architecture/domain/model/photo.dart';
import 'package:flutter_image_saerch_clean_architecture/domain/repository/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _photoApi;

  PhotoRepositoryImpl(this._photoApi);

  @override
  Future<List<Photo>> getPhotos(String query) async {
    final photoResultDto = await _photoApi.getPhotoResults(query);

    if (photoResultDto.hits == null) {
      return [];
    }

    return photoResultDto.hits!.map((e) => e.toPhoto()).toList();
  }
}
