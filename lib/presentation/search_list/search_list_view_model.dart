import 'package:flutter/material.dart';
import 'package:flutter_image_saerch_clean_architecture/domain/use_case/get_photos_use_case.dart';
import 'package:flutter_image_saerch_clean_architecture/presentation/search_list/search_list_state.dart';

class SearchListViewModel with ChangeNotifier {
  final GetPhotosUseCase _getPhotosUseCase;

  SearchListViewModel({
    required GetPhotosUseCase getPhotosUseCase,
  }) : _getPhotosUseCase = getPhotosUseCase;

  SearchListState _state = const SearchListState();

  SearchListState get state => _state;

  void onSearch(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    _state = state.copyWith(
      photos: await _getPhotosUseCase.execute(query),
      isLoading: false,
    );
    notifyListeners();
  }
}
