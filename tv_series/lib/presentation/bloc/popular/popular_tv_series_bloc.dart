import 'package:core/domain/entities/tv_series.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tv_series/domain/usecases/get_popular_tv_series.dart';

part 'popular_tv_series_event.dart';
part 'popular_tv_series_state.dart';

class PopularTvSeriesBloc
    extends Bloc<PopularTvSeriesEvent, PopularTvSeriesState> {
  final GetPopularTvSeries _getPopularTvSeries;

  PopularTvSeriesBloc(this._getPopularTvSeries)
      : super(PopularTvSeriesInitial()) {
    on<FetchPopularTvSseries>((event, emit) async {
      emit(PopularTvSeriesLoading());

      final result = await _getPopularTvSeries.execute();

      result.fold(
        (failure) {
          emit(PopularTvSeriesError(failure.message));
        },
        (data) {
          if (data.isNotEmpty) {
            emit(PopularTvSeriesHasData(data));
          } else {
            emit(PopularTvSeriesEmpty());
          }
        },
      );
    });
  }
}
