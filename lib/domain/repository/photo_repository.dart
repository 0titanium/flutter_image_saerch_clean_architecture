import 'package:flutter_image_saerch_clean_architecture/domain/model/photo.dart';

abstract interface class PhotoRepository {
  Future<List<Photo>> getPhotos(String query);
}
