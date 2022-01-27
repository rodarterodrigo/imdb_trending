import 'package:dartz/dartz.dart';
import 'package:imdb_trending/app/core/shared/domain/failures/failures.dart';
import 'package:imdb_trending/app/modules/trending/movies/domain/entities/movie_list.dart';
import 'package:imdb_trending/app/modules/trending/movies/domain/failures/time_window_empty_failure.dart';
import 'package:imdb_trending/app/modules/trending/movies/domain/repositories/get_trending_movies_repository.dart';

abstract class GetTrendingMoviesByTimeWindowAbstraction {
  Future<Either<Failures, MovieList>> call(String timeWindow, int page);
}

class GetTrendingMoviesByTimeWindow
    implements GetTrendingMoviesByTimeWindowAbstraction {
  final GetTrendingMoviesRepository repository;

  const GetTrendingMoviesByTimeWindow(this.repository);

  @override
  Future<Either<Failures, MovieList>> call(String timeWindow, int page) async =>
      timeWindow.isEmpty
          ? const Left(TimeWindowEmptyFailure(
              'Selecione a janela de tempo para exibir a listagem'))
          : await repository(timeWindow, page);
}
