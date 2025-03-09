part of 'movie_bloc.dart';

class TvShowStates extends Equatable {
  const TvShowStates({required this.tvshowModel});

  final ApiResponse<TvShowsListModel> tvshowModel;

  TvShowStates copyWith({ApiResponse<TvShowsListModel>? tvshowModel}) {
    return TvShowStates(tvshowModel: tvshowModel ?? this.tvshowModel);
  }

  @override
  List<Object> get props => [tvshowModel];
}
