import 'package:bloc/bloc.dart';
import 'package:clean_coding_project/config/data/responces/api_responce.dart';
import 'package:clean_coding_project/models/movie_list/tv_show_model.dart';
import 'package:clean_coding_project/repository/movie_repository/tv_show_api_repository.dart';
import 'package:equatable/equatable.dart';

part 'movie_event.dart';
part 'movie_state.dart';

class TvShowBloc extends Bloc<TvShowEvent, TvShowStates> {
  TvShowApiRepository tvShowApiRepository;
  TvShowBloc({required this.tvShowApiRepository}) : super(TvShowStates(tvshowModel: ApiResponse.loading())) {
    on<FetchedTvShows>(fetchMovies);
  }


  Future<void> fetchMovies(FetchedTvShows event, Emitter<TvShowStates> emit) async {
    await tvShowApiRepository.fetchMovies().then((respnse) {
      emit(state.copyWith(tvshowModel: ApiResponse.completed(respnse)));
    }).catchError((error) {
      emit(state.copyWith(tvshowModel: ApiResponse.error(error.toString())));
    });
  }
}
