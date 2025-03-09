import 'package:clean_coding_project/models/movie_list/tv_show_model.dart';

abstract class TvShowApiRepository {
    Future<TvShowsListModel> fetchMovies();
}