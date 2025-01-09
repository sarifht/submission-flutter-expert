// Mocks generated by Mockito 5.4.4 from annotations
// in ditonton/test/presentation/pages/tv_series/tv_series_detail_page_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i12;
import 'dart:ui' as _i13;

import 'package:ditonton/common/state_enum.dart' as _i9;
import 'package:ditonton/domain/entities/tv_series.dart' as _i10;
import 'package:ditonton/domain/entities/tv_series_detail.dart' as _i7;
import 'package:ditonton/domain/usecases/tv_series/get_tv_series_detail.dart'
    as _i2;
import 'package:ditonton/domain/usecases/tv_series/get_tv_series_recommendations.dart'
    as _i3;
import 'package:ditonton/domain/usecases/tv_series/get_watchlist_status_tv_series.dart'
    as _i4;
import 'package:ditonton/domain/usecases/tv_series/remove_watchlist_tv_series.dart'
    as _i6;
import 'package:ditonton/domain/usecases/tv_series/save_watchlist_tv_series.dart'
    as _i5;
import 'package:ditonton/presentation/provider/tv_series/tv_series_detail_notifier.dart'
    as _i8;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i11;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeGetTvSeriesDetail_0 extends _i1.SmartFake
    implements _i2.GetTvSeriesDetail {
  _FakeGetTvSeriesDetail_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGetTvSeriesRecommendations_1 extends _i1.SmartFake
    implements _i3.GetTvSeriesRecommendations {
  _FakeGetTvSeriesRecommendations_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGetWatchlistStatusTvSeries_2 extends _i1.SmartFake
    implements _i4.GetWatchlistStatusTvSeries {
  _FakeGetWatchlistStatusTvSeries_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSaveWatchlistTvSeries_3 extends _i1.SmartFake
    implements _i5.SaveWatchlistTvSeries {
  _FakeSaveWatchlistTvSeries_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRemoveWatchlistTvSeries_4 extends _i1.SmartFake
    implements _i6.RemoveWatchlistTvSeries {
  _FakeRemoveWatchlistTvSeries_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTvSeriesDetail_5 extends _i1.SmartFake
    implements _i7.TvSeriesDetail {
  _FakeTvSeriesDetail_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [TvSeriesDetailNotifier].
///
/// See the documentation for Mockito's code generation for more information.
class MockTvSeriesDetailNotifier extends _i1.Mock
    implements _i8.TvSeriesDetailNotifier {
  MockTvSeriesDetailNotifier() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.GetTvSeriesDetail get getTvSeriesDetail => (super.noSuchMethod(
        Invocation.getter(#getTvSeriesDetail),
        returnValue: _FakeGetTvSeriesDetail_0(
          this,
          Invocation.getter(#getTvSeriesDetail),
        ),
      ) as _i2.GetTvSeriesDetail);

  @override
  _i3.GetTvSeriesRecommendations get getTvSeriesRecommendations =>
      (super.noSuchMethod(
        Invocation.getter(#getTvSeriesRecommendations),
        returnValue: _FakeGetTvSeriesRecommendations_1(
          this,
          Invocation.getter(#getTvSeriesRecommendations),
        ),
      ) as _i3.GetTvSeriesRecommendations);

  @override
  _i4.GetWatchlistStatusTvSeries get getWatchlistStatusTvSeries =>
      (super.noSuchMethod(
        Invocation.getter(#getWatchlistStatusTvSeries),
        returnValue: _FakeGetWatchlistStatusTvSeries_2(
          this,
          Invocation.getter(#getWatchlistStatusTvSeries),
        ),
      ) as _i4.GetWatchlistStatusTvSeries);

  @override
  _i5.SaveWatchlistTvSeries get saveWatchlistTvSeries => (super.noSuchMethod(
        Invocation.getter(#saveWatchlistTvSeries),
        returnValue: _FakeSaveWatchlistTvSeries_3(
          this,
          Invocation.getter(#saveWatchlistTvSeries),
        ),
      ) as _i5.SaveWatchlistTvSeries);

  @override
  _i6.RemoveWatchlistTvSeries get removeWatchlistTvSeries =>
      (super.noSuchMethod(
        Invocation.getter(#removeWatchlistTvSeries),
        returnValue: _FakeRemoveWatchlistTvSeries_4(
          this,
          Invocation.getter(#removeWatchlistTvSeries),
        ),
      ) as _i6.RemoveWatchlistTvSeries);

  @override
  _i7.TvSeriesDetail get tvSeries => (super.noSuchMethod(
        Invocation.getter(#tvSeries),
        returnValue: _FakeTvSeriesDetail_5(
          this,
          Invocation.getter(#tvSeries),
        ),
      ) as _i7.TvSeriesDetail);

  @override
  _i9.RequestState get tvSeriesState => (super.noSuchMethod(
        Invocation.getter(#tvSeriesState),
        returnValue: _i9.RequestState.empty,
      ) as _i9.RequestState);

  @override
  List<_i10.TvSeries> get tvSeriesRecommendations => (super.noSuchMethod(
        Invocation.getter(#tvSeriesRecommendations),
        returnValue: <_i10.TvSeries>[],
      ) as List<_i10.TvSeries>);

  @override
  _i9.RequestState get recommendationsState => (super.noSuchMethod(
        Invocation.getter(#recommendationsState),
        returnValue: _i9.RequestState.empty,
      ) as _i9.RequestState);

  @override
  String get message => (super.noSuchMethod(
        Invocation.getter(#message),
        returnValue: _i11.dummyValue<String>(
          this,
          Invocation.getter(#message),
        ),
      ) as String);

  @override
  bool get isAddedToWatchlistTvSeries => (super.noSuchMethod(
        Invocation.getter(#isAddedToWatchlistTvSeries),
        returnValue: false,
      ) as bool);

  @override
  String get watchlistMessage => (super.noSuchMethod(
        Invocation.getter(#watchlistMessage),
        returnValue: _i11.dummyValue<String>(
          this,
          Invocation.getter(#watchlistMessage),
        ),
      ) as String);

  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
      ) as bool);

  @override
  _i12.Future<void> fetchTvSeriesDetail(int? id) => (super.noSuchMethod(
        Invocation.method(
          #fetchTvSeriesDetail,
          [id],
        ),
        returnValue: _i12.Future<void>.value(),
        returnValueForMissingStub: _i12.Future<void>.value(),
      ) as _i12.Future<void>);

  @override
  _i12.Future<void> addWatchlistTvSeries(_i7.TvSeriesDetail? tvSeries) =>
      (super.noSuchMethod(
        Invocation.method(
          #addWatchlistTvSeries,
          [tvSeries],
        ),
        returnValue: _i12.Future<void>.value(),
        returnValueForMissingStub: _i12.Future<void>.value(),
      ) as _i12.Future<void>);

  @override
  _i12.Future<void> removeFromWatchlistTvSeries(_i7.TvSeriesDetail? tvSeries) =>
      (super.noSuchMethod(
        Invocation.method(
          #removeFromWatchlistTvSeries,
          [tvSeries],
        ),
        returnValue: _i12.Future<void>.value(),
        returnValueForMissingStub: _i12.Future<void>.value(),
      ) as _i12.Future<void>);

  @override
  _i12.Future<void> loadWatchlistStatusTvSeries(int? id) => (super.noSuchMethod(
        Invocation.method(
          #loadWatchlistStatusTvSeries,
          [id],
        ),
        returnValue: _i12.Future<void>.value(),
        returnValueForMissingStub: _i12.Future<void>.value(),
      ) as _i12.Future<void>);

  @override
  void addListener(_i13.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeListener(_i13.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}