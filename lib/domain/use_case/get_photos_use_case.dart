import 'package:flutter_image_saerch_clean_architecture/domain/model/photo.dart';
import 'package:flutter_image_saerch_clean_architecture/domain/repository/photo_repository.dart';

class GetPhotosUseCase {
  final PhotoRepository _photoRepository;

  GetPhotosUseCase(this._photoRepository);

  Future<List<Photo>> execute(String query) async {
    final photos = await _photoRepository.getPhotos(query);
    final List<Photo> sortedPhotosList = List.from(photos);

    sortedPhotosList.sort((a, b) => b.views.compareTo(a.views));

    return sortedPhotosList.take(5).toList();
  }
}