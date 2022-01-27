import 'package:imdb_trending/app/modules/trending/movies/domain/entities/movie_list.dart';
import 'package:imdb_trending/app/modules/trending/movies/presentation/blocs/get_trending_movies_bloc/states/trending_movies_list_states.dart';

class GetTrendingMoviesListSuccessState extends TrendingMoviesListStates {
  final MovieList movieListPage;

  const GetTrendingMoviesListSuccessState(this.movieListPage);
}
