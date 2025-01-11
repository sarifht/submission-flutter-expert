import 'package:cached_network_image/cached_network_image.dart';
import 'package:ditonton/common/constants.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/genre.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/domain/entities/tv_series_detail.dart';
import 'package:ditonton/presentation/provider/tv_series/tv_series_detail_notifier.dart';
import 'package:ditonton/presentation/widgets/shimmer_recommendation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

class TvSeriesDetailPage extends StatefulWidget {
  static const routeName = "/detail-tv-series";
  final int id;

  const TvSeriesDetailPage({super.key, required this.id});

  @override
  State<TvSeriesDetailPage> createState() => _TvSeriesDetailPageState();
}

class _TvSeriesDetailPageState extends State<TvSeriesDetailPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final notifier =
          Provider.of<TvSeriesDetailNotifier>(context, listen: false);
      notifier.fetchTvSeriesDetail(widget.id);
      notifier.loadWatchlistStatusTvSeries(widget.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<TvSeriesDetailNotifier>(
        builder: (context, data, child) {
          switch (data.tvSeriesState) {
            case RequestState.loading:
              return const Center(child: CircularProgressIndicator());
            case RequestState.loaded:
              return SafeArea(
                child: DetailContentTvSeries(
                  data.tvSeries,
                  data.tvSeriesRecommendations,
                  data.isAddedToWatchlistTvSeries,
                ),
              );
            default:
              return Center(child: Text(data.message));
          }
        },
      ),
    );
  }
}

class DetailContentTvSeries extends StatelessWidget {
  final TvSeriesDetail tvSeries;
  final List<TvSeries> recommendations;
  final bool isAddedToWatchlistTvSeries;

  const DetailContentTvSeries(
    this.tvSeries,
    this.recommendations,
    this.isAddedToWatchlistTvSeries, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        CachedNetworkImage(
          imageUrl: 'https://image.tmdb.org/t/p/w500${tvSeries.posterPath}',
          width: screenWidth,
          placeholder: (context, url) =>
              const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
        Container(
          margin: const EdgeInsets.only(top: 56),
          child: DraggableScrollableSheet(
            builder: (context, scrollController) => Container(
              decoration: const BoxDecoration(
                color: kRichBlack,
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              ),
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tvSeries.name, style: kHeading5),
                    _buildWatchlistButton(context),
                    Text(_showGenres(tvSeries.genres)),
                    _buildRatingBar(tvSeries),
                    const SizedBox(height: 16),
                    Text('Overview', style: kHeading6),
                    Text(tvSeries.overview),
                    const SizedBox(height: 16),
                    Text('Language', style: kHeading6),
                    Text(_showLanguage(tvSeries.languages)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildWatchlistButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        final notifier =
            Provider.of<TvSeriesDetailNotifier>(context, listen: false);
        if (!isAddedToWatchlistTvSeries) {
          await notifier.addWatchlistTvSeries(tvSeries);
        } else {
          await notifier.removeFromWatchlistTvSeries(tvSeries);
        }

        final message = notifier.watchlistMessage;
        if (message == TvSeriesDetailNotifier.watchlistAddSuccessMessage ||
            message == TvSeriesDetailNotifier.watchlistRemoveSuccessMessage) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(message)));
        } else {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(content: Text(message)),
          );
        }
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(isAddedToWatchlistTvSeries ? Icons.check : Icons.add),
          const Text('Watchlist'),
        ],
      ),
    );
  }

  Widget _buildRatingBar(TvSeriesDetail tvSeries) {
    return Row(
      children: [
        RatingBarIndicator(
          rating: tvSeries.voteAverage / 2,
          itemCount: 5,
          itemBuilder: (context, index) =>
              const Icon(Icons.star, color: kMikadoYellow),
          itemSize: 24,
        ),
        Text('${tvSeries.voteAverage}'),
      ],
    );
  }

  String _showGenres(List<Genre> genres) {
    return genres.map((genre) => genre.name).join(', ');
  }

  String _showLanguage(List<String> languages) {
    return languages.join(', ');
  }
}
