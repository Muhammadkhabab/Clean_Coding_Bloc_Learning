import 'package:clean_coding_project/blocs/movie_blocs/movie_bloc.dart';
import 'package:clean_coding_project/config/components/network_image_widget.dart';
import 'package:clean_coding_project/config/routes/routes_name.dart';
import 'package:clean_coding_project/dependency_injection/locator.dart';
import 'package:clean_coding_project/services/session_manager/session_controller.dart';
import 'package:clean_coding_project/utlis/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TVShowScreen extends StatefulWidget {
  const TVShowScreen({super.key});

  @override
  State<TVShowScreen> createState() => _TVShowScreenState();
}

class _TVShowScreenState extends State<TVShowScreen> {
  late TvShowBloc _movieBloc;

  @override
  void initState() {
    super.initState();
    _movieBloc = TvShowBloc(tvShowApiRepository: getIt());
  }

  @override
  void dispose() {
    super.dispose();

    _movieBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        actions: [
          IconButton(
            onPressed: () {
              _logout(context);
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: BlocProvider(
        create: (context) => _movieBloc..add(FetchedTvShows()),
        child: BlocBuilder<TvShowBloc, TvShowStates>(
          builder: (BuildContext context, state) {
            switch (state.tvshowModel.status) {
              case Status.loading:
                return Center(child: CircularProgressIndicator());
              case Status.error:
                return Center(child: Text(state.tvshowModel.message!));
              case Status.completed:
                final tvshowsList = state.tvshowModel.data!;
                return ListView.builder(
                  itemCount: tvshowsList.tvShow.length,
                  itemBuilder: (context, index) {
                    final tvShow = tvshowsList.tvShow[index];
                    print(tvshowsList.tvShow[0].name); // Output: The Flash
                    print(tvshowsList.tvShow[0].imageThumbnailPath);

                    return ListTile(
                      leading: NetworkImageWidget(
                        width: 60,
                        height: 60,
                        borderRadius: 5,
                        imageUrl: (tvShow.imageThumbnailPath), // Fallback image
                      ),

                      title: Text(tvShow.name.toString()), // Name of the movie
                      subtitle: Text(
                        tvShow.network.toString(),
                      ), // Network of the movie
                      trailing: Text(
                        tvShow.status.toString(),
                      ), // Status of the movie
                    );
                  },
                );
            }
          },
        ),
      ),
    );
  }

  /// Logs the user_bloc out and redirects to the login screen.
  void _logout(BuildContext context) async {
    await SessionController().clearSession();

    /// Navigate to login screen and remove all previous screens from stack
    Navigator.pushNamed(context, RoutesName.login);
  }
}
