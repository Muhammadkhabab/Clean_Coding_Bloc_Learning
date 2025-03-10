import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_show_model.freezed.dart';
part 'tv_show_model.g.dart';

/// Freezed class representing the entire API response for TV Shows.
@freezed
class TvShowsListModel with _$TvShowsListModel {
  /// Factory constructor for creating a [TvShowsListModel] instance.
  factory TvShowsListModel({
    @Default(0) int total, // Total number of TV shows
    @Default(0) int page, // Current page number
    @Default(0) int pages, // Total number of pages
    @Default([]) @JsonKey(name: 'tv_shows') List<TvShows> tvShow, // List of TV shows
  }) = _TvShowsListModel;

  /// Factory constructor for creating a [TvShowsListModel] instance from JSON.
  factory TvShowsListModel.fromJson(Map<String, dynamic> json) =>
      _$TvShowsListModelFromJson(json);
}

/// Freezed class representing a single TV show.
@freezed
class TvShows with _$TvShows {
  /// Factory constructor for creating a [TvShows] instance.
  factory TvShows({
    @Default(0) int id, // Unique ID of the TV show
    @JsonKey(name: 'name') @Default('') String name, // Name of the TV show
    @Default('') String permalink, // Permalink of the TV show
    @JsonKey(name: 'start_date') @Default('') String startDate, // Start date of the TV show
    @JsonKey(name: 'end_date') @Default('') String endDate, // End date of the TV show (nullable)
    @Default('') String country, // Country of the TV show
    @Default('') String network, // Network of the TV show
    @Default('') String status, // Status of the TV show (Running/Ended)
    @JsonKey(name: 'image_thumbnail_path') @Default('') String imageThumbnailPath, // TV show image
  }) = _TvShows;

  /// Factory constructor for creating a [TvShows] instance from JSON.
  factory TvShows.fromJson(Map<String, dynamic> json) =>
      _$TvShowsFromJson(json);
}
