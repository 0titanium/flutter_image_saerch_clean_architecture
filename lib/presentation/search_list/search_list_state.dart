import 'package:flutter_image_saerch_clean_architecture/domain/model/photo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_list_state.freezed.dart';

part 'search_list_state.g.dart';

@freezed
class SearchListState with _$SearchListState {
  const factory SearchListState({
    @Default([])List<Photo> photos,
    @Default(false)bool isLoading,
  }) = _SearchListState;

  factory SearchListState.fromJson(Map<String, Object?> json) => _$SearchListStateFromJson(json);
}