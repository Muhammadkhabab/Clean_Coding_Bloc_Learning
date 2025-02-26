import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'movie__event.dart';
part 'movie__state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  MovieBloc() : super(MovieInitial()) {
    on<MovieEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
