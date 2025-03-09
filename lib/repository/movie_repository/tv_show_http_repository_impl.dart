import 'package:clean_coding_project/config/data/network/network_api_services.dart';
import 'package:clean_coding_project/models/movie_list/tv_show_model.dart';
import 'package:clean_coding_project/repository/movie_repository/tv_show_api_repository.dart';
import 'package:clean_coding_project/utlis/app_urls.dart';

class TvShowHttpRepositoryImpl implements TvShowApiRepository {
  final apiSevice = NetworkApiServices();

  @override
  Future<TvShowsListModel> fetchMovies() async {
    final response = await apiSevice.getApi(AppUrls.movoieApiList);
    return TvShowsListModel.fromJson(response);
  }
}
