import 'genre.dart';
import 'season.dart';
import 'package:equatable/equatable.dart';

class TvSeriesDetail extends Equatable {
  const TvSeriesDetail({
    required this.adult,
    required this.backdropPath,
    required this.firstAirDate,
    required this.genres,
    required this.id,
    required this.lastAirDate,
    required this.name,
    required this.numberOfEpisodes,
    required this.numberOfSeasons,
    required this.overview,
    required this.posterPath,
    required this.seasons,
    required this.status,
    required this.tagline,
    required this.type,
    required this.voteAverage,
    required this.voteCount,
    required this.languages,
  });

  final bool adult;
  final String? backdropPath;
  final String firstAirDate;
  final List<Genre> genres;
  final int id;
  final String lastAirDate;
  final String name;
  final int numberOfEpisodes;
  final int numberOfSeasons;
  final String overview;
  final String? posterPath;
  final List<Season> seasons;
  final String status;
  final String tagline;
  final String type;
  final double voteAverage;
  final int voteCount;
  final List<String> languages;

  @override
  List<Object?> get props => [
        adult,
        backdropPath,
        firstAirDate,
        genres,
        id,
        lastAirDate,
        name,
        numberOfEpisodes,
        numberOfSeasons,
        overview,
        posterPath,
        seasons,
        status,
        tagline,
        type,
        voteAverage,
        voteCount,
        languages,
      ];
}
