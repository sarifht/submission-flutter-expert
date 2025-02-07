import 'package:core/domain/entities/season_detail.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tv_series/domain/usecases/get_detail_season.dart';

import '../../../../core/test/helpers/test_helper.mocks.dart';

void main() {
  late GetDetailSeason usecase;
  late MockTvSeriesRepository mockTvSeriesRepository;

  setUp(() {
    mockTvSeriesRepository = MockTvSeriesRepository();
    usecase = GetDetailSeason(mockTvSeriesRepository);
  });

  const tId = 1;
  const tSeasonNumber = 1;
  final tSeasonDetail = SeasonDetail(
    id: tId,
    seasonNumber: tSeasonNumber,
    name: 'Season 1',
    overview: 'Overview of season 1',
    airDate: '2024-01-01',
    posterPath: '/poster.jpg',
    episodes: [],
  );

  test('should get detail season from repository', () async {
    // arrange
    when(mockTvSeriesRepository.getSeasionDetail(tId, tSeasonNumber))
        .thenAnswer((_) async => Right(tSeasonDetail));
    // act
    final result = await usecase.execute(tId, tSeasonNumber);
    // assert
    expect(result, Right(tSeasonDetail));
  });
}
