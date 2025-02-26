import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_show_model.freezed.dart';
part 'tv_show_model.g.dart';

@freezed
class TVShowModel with _$TVShowModel {
  const factory TVShowModel({
    required int total,
    required int page,
    required int pages,
    required List<TVShow> tv_shows,
  }) = _TVShowModel;

  factory TVShowModel.fromJson(Map<String, dynamic> json) =>
      _$TVShowModelFromJson(json);
}

@freezed
class TVShow with _$TVShow {
  const factory TVShow({
    required int id,
    required String name,
    required String permalink,
    required String start_date,
    String? end_date,
    required String country,
    required String network,
    required String status,
    required String image_thumbnail_path,
  }) = _TVShow;

  factory TVShow.fromJson(Map<String, dynamic> json) => _$TVShowFromJson(json);
}