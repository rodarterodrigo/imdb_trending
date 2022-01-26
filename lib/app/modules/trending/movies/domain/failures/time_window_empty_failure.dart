import 'package:imdb_trending/app/modules/trending/movies/domain/failures/trending_movies_failures.dart';

class TimeWindowEmptyFailure implements TrendingMovieFailures {
  @override
  final String message;

  const TimeWindowEmptyFailure(this.message);
}