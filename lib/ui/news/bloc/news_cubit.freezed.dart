// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'news_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NewsStateTearOff {
  const _$NewsStateTearOff();

// ignore: unused_element
  _InitialNews initial({@required NewsStateHolder stateHolder}) {
    return _InitialNews(
      stateHolder: stateHolder,
    );
  }

// ignore: unused_element
  _Loading loading({@required NewsStateHolder stateHolder}) {
    return _Loading(
      stateHolder: stateHolder,
    );
  }

// ignore: unused_element
  _ArticlesLoaded articlesLoaded({@required NewsStateHolder stateHolder}) {
    return _ArticlesLoaded(
      stateHolder: stateHolder,
    );
  }

// ignore: unused_element
  _SavedArticlesLoaded savedArticlesLoaded(
      {@required NewsStateHolder stateHolder}) {
    return _SavedArticlesLoaded(
      stateHolder: stateHolder,
    );
  }

// ignore: unused_element
  _NewsSourcesLoaded newsSourcesLoaded(
      {@required NewsStateHolder stateHolder}) {
    return _NewsSourcesLoaded(
      stateHolder: stateHolder,
    );
  }

// ignore: unused_element
  _SetScrollController setScrollController(
      {@required NewsStateHolder stateHolder}) {
    return _SetScrollController(
      stateHolder: stateHolder,
    );
  }

// ignore: unused_element
  _SelectedNewsSource selectedNewsSource(
      {@required NewsStateHolder stateHolder}) {
    return _SelectedNewsSource(
      stateHolder: stateHolder,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NewsState = _$NewsStateTearOff();

/// @nodoc
mixin _$NewsState {
  NewsStateHolder get stateHolder;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(NewsStateHolder stateHolder),
    @required TResult loading(NewsStateHolder stateHolder),
    @required TResult articlesLoaded(NewsStateHolder stateHolder),
    @required TResult savedArticlesLoaded(NewsStateHolder stateHolder),
    @required TResult newsSourcesLoaded(NewsStateHolder stateHolder),
    @required TResult setScrollController(NewsStateHolder stateHolder),
    @required TResult selectedNewsSource(NewsStateHolder stateHolder),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(NewsStateHolder stateHolder),
    TResult loading(NewsStateHolder stateHolder),
    TResult articlesLoaded(NewsStateHolder stateHolder),
    TResult savedArticlesLoaded(NewsStateHolder stateHolder),
    TResult newsSourcesLoaded(NewsStateHolder stateHolder),
    TResult setScrollController(NewsStateHolder stateHolder),
    TResult selectedNewsSource(NewsStateHolder stateHolder),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialNews value),
    @required TResult loading(_Loading value),
    @required TResult articlesLoaded(_ArticlesLoaded value),
    @required TResult savedArticlesLoaded(_SavedArticlesLoaded value),
    @required TResult newsSourcesLoaded(_NewsSourcesLoaded value),
    @required TResult setScrollController(_SetScrollController value),
    @required TResult selectedNewsSource(_SelectedNewsSource value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialNews value),
    TResult loading(_Loading value),
    TResult articlesLoaded(_ArticlesLoaded value),
    TResult savedArticlesLoaded(_SavedArticlesLoaded value),
    TResult newsSourcesLoaded(_NewsSourcesLoaded value),
    TResult setScrollController(_SetScrollController value),
    TResult selectedNewsSource(_SelectedNewsSource value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $NewsStateCopyWith<NewsState> get copyWith;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res>;
  $Res call({NewsStateHolder stateHolder});

  $NewsStateHolderCopyWith<$Res> get stateHolder;
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res> implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  final NewsState _value;
  // ignore: unused_field
  final $Res Function(NewsState) _then;

  @override
  $Res call({
    Object stateHolder = freezed,
  }) {
    return _then(_value.copyWith(
      stateHolder: stateHolder == freezed
          ? _value.stateHolder
          : stateHolder as NewsStateHolder,
    ));
  }

  @override
  $NewsStateHolderCopyWith<$Res> get stateHolder {
    if (_value.stateHolder == null) {
      return null;
    }
    return $NewsStateHolderCopyWith<$Res>(_value.stateHolder, (value) {
      return _then(_value.copyWith(stateHolder: value));
    });
  }
}

/// @nodoc
abstract class _$InitialNewsCopyWith<$Res> implements $NewsStateCopyWith<$Res> {
  factory _$InitialNewsCopyWith(
          _InitialNews value, $Res Function(_InitialNews) then) =
      __$InitialNewsCopyWithImpl<$Res>;
  @override
  $Res call({NewsStateHolder stateHolder});

  @override
  $NewsStateHolderCopyWith<$Res> get stateHolder;
}

/// @nodoc
class __$InitialNewsCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements _$InitialNewsCopyWith<$Res> {
  __$InitialNewsCopyWithImpl(
      _InitialNews _value, $Res Function(_InitialNews) _then)
      : super(_value, (v) => _then(v as _InitialNews));

  @override
  _InitialNews get _value => super._value as _InitialNews;

  @override
  $Res call({
    Object stateHolder = freezed,
  }) {
    return _then(_InitialNews(
      stateHolder: stateHolder == freezed
          ? _value.stateHolder
          : stateHolder as NewsStateHolder,
    ));
  }
}

/// @nodoc
class _$_InitialNews implements _InitialNews {
  const _$_InitialNews({@required this.stateHolder})
      : assert(stateHolder != null);

  @override
  final NewsStateHolder stateHolder;

  @override
  String toString() {
    return 'NewsState.initial(stateHolder: $stateHolder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitialNews &&
            (identical(other.stateHolder, stateHolder) ||
                const DeepCollectionEquality()
                    .equals(other.stateHolder, stateHolder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(stateHolder);

  @JsonKey(ignore: true)
  @override
  _$InitialNewsCopyWith<_InitialNews> get copyWith =>
      __$InitialNewsCopyWithImpl<_InitialNews>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(NewsStateHolder stateHolder),
    @required TResult loading(NewsStateHolder stateHolder),
    @required TResult articlesLoaded(NewsStateHolder stateHolder),
    @required TResult savedArticlesLoaded(NewsStateHolder stateHolder),
    @required TResult newsSourcesLoaded(NewsStateHolder stateHolder),
    @required TResult setScrollController(NewsStateHolder stateHolder),
    @required TResult selectedNewsSource(NewsStateHolder stateHolder),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(articlesLoaded != null);
    assert(savedArticlesLoaded != null);
    assert(newsSourcesLoaded != null);
    assert(setScrollController != null);
    assert(selectedNewsSource != null);
    return initial(stateHolder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(NewsStateHolder stateHolder),
    TResult loading(NewsStateHolder stateHolder),
    TResult articlesLoaded(NewsStateHolder stateHolder),
    TResult savedArticlesLoaded(NewsStateHolder stateHolder),
    TResult newsSourcesLoaded(NewsStateHolder stateHolder),
    TResult setScrollController(NewsStateHolder stateHolder),
    TResult selectedNewsSource(NewsStateHolder stateHolder),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(stateHolder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialNews value),
    @required TResult loading(_Loading value),
    @required TResult articlesLoaded(_ArticlesLoaded value),
    @required TResult savedArticlesLoaded(_SavedArticlesLoaded value),
    @required TResult newsSourcesLoaded(_NewsSourcesLoaded value),
    @required TResult setScrollController(_SetScrollController value),
    @required TResult selectedNewsSource(_SelectedNewsSource value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(articlesLoaded != null);
    assert(savedArticlesLoaded != null);
    assert(newsSourcesLoaded != null);
    assert(setScrollController != null);
    assert(selectedNewsSource != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialNews value),
    TResult loading(_Loading value),
    TResult articlesLoaded(_ArticlesLoaded value),
    TResult savedArticlesLoaded(_SavedArticlesLoaded value),
    TResult newsSourcesLoaded(_NewsSourcesLoaded value),
    TResult setScrollController(_SetScrollController value),
    TResult selectedNewsSource(_SelectedNewsSource value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialNews implements NewsState {
  const factory _InitialNews({@required NewsStateHolder stateHolder}) =
      _$_InitialNews;

  @override
  NewsStateHolder get stateHolder;
  @override
  @JsonKey(ignore: true)
  _$InitialNewsCopyWith<_InitialNews> get copyWith;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> implements $NewsStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({NewsStateHolder stateHolder});

  @override
  $NewsStateHolderCopyWith<$Res> get stateHolder;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object stateHolder = freezed,
  }) {
    return _then(_Loading(
      stateHolder: stateHolder == freezed
          ? _value.stateHolder
          : stateHolder as NewsStateHolder,
    ));
  }
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading({@required this.stateHolder}) : assert(stateHolder != null);

  @override
  final NewsStateHolder stateHolder;

  @override
  String toString() {
    return 'NewsState.loading(stateHolder: $stateHolder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loading &&
            (identical(other.stateHolder, stateHolder) ||
                const DeepCollectionEquality()
                    .equals(other.stateHolder, stateHolder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(stateHolder);

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(NewsStateHolder stateHolder),
    @required TResult loading(NewsStateHolder stateHolder),
    @required TResult articlesLoaded(NewsStateHolder stateHolder),
    @required TResult savedArticlesLoaded(NewsStateHolder stateHolder),
    @required TResult newsSourcesLoaded(NewsStateHolder stateHolder),
    @required TResult setScrollController(NewsStateHolder stateHolder),
    @required TResult selectedNewsSource(NewsStateHolder stateHolder),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(articlesLoaded != null);
    assert(savedArticlesLoaded != null);
    assert(newsSourcesLoaded != null);
    assert(setScrollController != null);
    assert(selectedNewsSource != null);
    return loading(stateHolder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(NewsStateHolder stateHolder),
    TResult loading(NewsStateHolder stateHolder),
    TResult articlesLoaded(NewsStateHolder stateHolder),
    TResult savedArticlesLoaded(NewsStateHolder stateHolder),
    TResult newsSourcesLoaded(NewsStateHolder stateHolder),
    TResult setScrollController(NewsStateHolder stateHolder),
    TResult selectedNewsSource(NewsStateHolder stateHolder),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(stateHolder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialNews value),
    @required TResult loading(_Loading value),
    @required TResult articlesLoaded(_ArticlesLoaded value),
    @required TResult savedArticlesLoaded(_SavedArticlesLoaded value),
    @required TResult newsSourcesLoaded(_NewsSourcesLoaded value),
    @required TResult setScrollController(_SetScrollController value),
    @required TResult selectedNewsSource(_SelectedNewsSource value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(articlesLoaded != null);
    assert(savedArticlesLoaded != null);
    assert(newsSourcesLoaded != null);
    assert(setScrollController != null);
    assert(selectedNewsSource != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialNews value),
    TResult loading(_Loading value),
    TResult articlesLoaded(_ArticlesLoaded value),
    TResult savedArticlesLoaded(_SavedArticlesLoaded value),
    TResult newsSourcesLoaded(_NewsSourcesLoaded value),
    TResult setScrollController(_SetScrollController value),
    TResult selectedNewsSource(_SelectedNewsSource value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NewsState {
  const factory _Loading({@required NewsStateHolder stateHolder}) = _$_Loading;

  @override
  NewsStateHolder get stateHolder;
  @override
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith;
}

/// @nodoc
abstract class _$ArticlesLoadedCopyWith<$Res>
    implements $NewsStateCopyWith<$Res> {
  factory _$ArticlesLoadedCopyWith(
          _ArticlesLoaded value, $Res Function(_ArticlesLoaded) then) =
      __$ArticlesLoadedCopyWithImpl<$Res>;
  @override
  $Res call({NewsStateHolder stateHolder});

  @override
  $NewsStateHolderCopyWith<$Res> get stateHolder;
}

/// @nodoc
class __$ArticlesLoadedCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements _$ArticlesLoadedCopyWith<$Res> {
  __$ArticlesLoadedCopyWithImpl(
      _ArticlesLoaded _value, $Res Function(_ArticlesLoaded) _then)
      : super(_value, (v) => _then(v as _ArticlesLoaded));

  @override
  _ArticlesLoaded get _value => super._value as _ArticlesLoaded;

  @override
  $Res call({
    Object stateHolder = freezed,
  }) {
    return _then(_ArticlesLoaded(
      stateHolder: stateHolder == freezed
          ? _value.stateHolder
          : stateHolder as NewsStateHolder,
    ));
  }
}

/// @nodoc
class _$_ArticlesLoaded implements _ArticlesLoaded {
  const _$_ArticlesLoaded({@required this.stateHolder})
      : assert(stateHolder != null);

  @override
  final NewsStateHolder stateHolder;

  @override
  String toString() {
    return 'NewsState.articlesLoaded(stateHolder: $stateHolder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ArticlesLoaded &&
            (identical(other.stateHolder, stateHolder) ||
                const DeepCollectionEquality()
                    .equals(other.stateHolder, stateHolder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(stateHolder);

  @JsonKey(ignore: true)
  @override
  _$ArticlesLoadedCopyWith<_ArticlesLoaded> get copyWith =>
      __$ArticlesLoadedCopyWithImpl<_ArticlesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(NewsStateHolder stateHolder),
    @required TResult loading(NewsStateHolder stateHolder),
    @required TResult articlesLoaded(NewsStateHolder stateHolder),
    @required TResult savedArticlesLoaded(NewsStateHolder stateHolder),
    @required TResult newsSourcesLoaded(NewsStateHolder stateHolder),
    @required TResult setScrollController(NewsStateHolder stateHolder),
    @required TResult selectedNewsSource(NewsStateHolder stateHolder),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(articlesLoaded != null);
    assert(savedArticlesLoaded != null);
    assert(newsSourcesLoaded != null);
    assert(setScrollController != null);
    assert(selectedNewsSource != null);
    return articlesLoaded(stateHolder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(NewsStateHolder stateHolder),
    TResult loading(NewsStateHolder stateHolder),
    TResult articlesLoaded(NewsStateHolder stateHolder),
    TResult savedArticlesLoaded(NewsStateHolder stateHolder),
    TResult newsSourcesLoaded(NewsStateHolder stateHolder),
    TResult setScrollController(NewsStateHolder stateHolder),
    TResult selectedNewsSource(NewsStateHolder stateHolder),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (articlesLoaded != null) {
      return articlesLoaded(stateHolder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialNews value),
    @required TResult loading(_Loading value),
    @required TResult articlesLoaded(_ArticlesLoaded value),
    @required TResult savedArticlesLoaded(_SavedArticlesLoaded value),
    @required TResult newsSourcesLoaded(_NewsSourcesLoaded value),
    @required TResult setScrollController(_SetScrollController value),
    @required TResult selectedNewsSource(_SelectedNewsSource value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(articlesLoaded != null);
    assert(savedArticlesLoaded != null);
    assert(newsSourcesLoaded != null);
    assert(setScrollController != null);
    assert(selectedNewsSource != null);
    return articlesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialNews value),
    TResult loading(_Loading value),
    TResult articlesLoaded(_ArticlesLoaded value),
    TResult savedArticlesLoaded(_SavedArticlesLoaded value),
    TResult newsSourcesLoaded(_NewsSourcesLoaded value),
    TResult setScrollController(_SetScrollController value),
    TResult selectedNewsSource(_SelectedNewsSource value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (articlesLoaded != null) {
      return articlesLoaded(this);
    }
    return orElse();
  }
}

abstract class _ArticlesLoaded implements NewsState {
  const factory _ArticlesLoaded({@required NewsStateHolder stateHolder}) =
      _$_ArticlesLoaded;

  @override
  NewsStateHolder get stateHolder;
  @override
  @JsonKey(ignore: true)
  _$ArticlesLoadedCopyWith<_ArticlesLoaded> get copyWith;
}

/// @nodoc
abstract class _$SavedArticlesLoadedCopyWith<$Res>
    implements $NewsStateCopyWith<$Res> {
  factory _$SavedArticlesLoadedCopyWith(_SavedArticlesLoaded value,
          $Res Function(_SavedArticlesLoaded) then) =
      __$SavedArticlesLoadedCopyWithImpl<$Res>;
  @override
  $Res call({NewsStateHolder stateHolder});

  @override
  $NewsStateHolderCopyWith<$Res> get stateHolder;
}

/// @nodoc
class __$SavedArticlesLoadedCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res>
    implements _$SavedArticlesLoadedCopyWith<$Res> {
  __$SavedArticlesLoadedCopyWithImpl(
      _SavedArticlesLoaded _value, $Res Function(_SavedArticlesLoaded) _then)
      : super(_value, (v) => _then(v as _SavedArticlesLoaded));

  @override
  _SavedArticlesLoaded get _value => super._value as _SavedArticlesLoaded;

  @override
  $Res call({
    Object stateHolder = freezed,
  }) {
    return _then(_SavedArticlesLoaded(
      stateHolder: stateHolder == freezed
          ? _value.stateHolder
          : stateHolder as NewsStateHolder,
    ));
  }
}

/// @nodoc
class _$_SavedArticlesLoaded implements _SavedArticlesLoaded {
  const _$_SavedArticlesLoaded({@required this.stateHolder})
      : assert(stateHolder != null);

  @override
  final NewsStateHolder stateHolder;

  @override
  String toString() {
    return 'NewsState.savedArticlesLoaded(stateHolder: $stateHolder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SavedArticlesLoaded &&
            (identical(other.stateHolder, stateHolder) ||
                const DeepCollectionEquality()
                    .equals(other.stateHolder, stateHolder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(stateHolder);

  @JsonKey(ignore: true)
  @override
  _$SavedArticlesLoadedCopyWith<_SavedArticlesLoaded> get copyWith =>
      __$SavedArticlesLoadedCopyWithImpl<_SavedArticlesLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(NewsStateHolder stateHolder),
    @required TResult loading(NewsStateHolder stateHolder),
    @required TResult articlesLoaded(NewsStateHolder stateHolder),
    @required TResult savedArticlesLoaded(NewsStateHolder stateHolder),
    @required TResult newsSourcesLoaded(NewsStateHolder stateHolder),
    @required TResult setScrollController(NewsStateHolder stateHolder),
    @required TResult selectedNewsSource(NewsStateHolder stateHolder),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(articlesLoaded != null);
    assert(savedArticlesLoaded != null);
    assert(newsSourcesLoaded != null);
    assert(setScrollController != null);
    assert(selectedNewsSource != null);
    return savedArticlesLoaded(stateHolder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(NewsStateHolder stateHolder),
    TResult loading(NewsStateHolder stateHolder),
    TResult articlesLoaded(NewsStateHolder stateHolder),
    TResult savedArticlesLoaded(NewsStateHolder stateHolder),
    TResult newsSourcesLoaded(NewsStateHolder stateHolder),
    TResult setScrollController(NewsStateHolder stateHolder),
    TResult selectedNewsSource(NewsStateHolder stateHolder),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (savedArticlesLoaded != null) {
      return savedArticlesLoaded(stateHolder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialNews value),
    @required TResult loading(_Loading value),
    @required TResult articlesLoaded(_ArticlesLoaded value),
    @required TResult savedArticlesLoaded(_SavedArticlesLoaded value),
    @required TResult newsSourcesLoaded(_NewsSourcesLoaded value),
    @required TResult setScrollController(_SetScrollController value),
    @required TResult selectedNewsSource(_SelectedNewsSource value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(articlesLoaded != null);
    assert(savedArticlesLoaded != null);
    assert(newsSourcesLoaded != null);
    assert(setScrollController != null);
    assert(selectedNewsSource != null);
    return savedArticlesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialNews value),
    TResult loading(_Loading value),
    TResult articlesLoaded(_ArticlesLoaded value),
    TResult savedArticlesLoaded(_SavedArticlesLoaded value),
    TResult newsSourcesLoaded(_NewsSourcesLoaded value),
    TResult setScrollController(_SetScrollController value),
    TResult selectedNewsSource(_SelectedNewsSource value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (savedArticlesLoaded != null) {
      return savedArticlesLoaded(this);
    }
    return orElse();
  }
}

abstract class _SavedArticlesLoaded implements NewsState {
  const factory _SavedArticlesLoaded({@required NewsStateHolder stateHolder}) =
      _$_SavedArticlesLoaded;

  @override
  NewsStateHolder get stateHolder;
  @override
  @JsonKey(ignore: true)
  _$SavedArticlesLoadedCopyWith<_SavedArticlesLoaded> get copyWith;
}

/// @nodoc
abstract class _$NewsSourcesLoadedCopyWith<$Res>
    implements $NewsStateCopyWith<$Res> {
  factory _$NewsSourcesLoadedCopyWith(
          _NewsSourcesLoaded value, $Res Function(_NewsSourcesLoaded) then) =
      __$NewsSourcesLoadedCopyWithImpl<$Res>;
  @override
  $Res call({NewsStateHolder stateHolder});

  @override
  $NewsStateHolderCopyWith<$Res> get stateHolder;
}

/// @nodoc
class __$NewsSourcesLoadedCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res>
    implements _$NewsSourcesLoadedCopyWith<$Res> {
  __$NewsSourcesLoadedCopyWithImpl(
      _NewsSourcesLoaded _value, $Res Function(_NewsSourcesLoaded) _then)
      : super(_value, (v) => _then(v as _NewsSourcesLoaded));

  @override
  _NewsSourcesLoaded get _value => super._value as _NewsSourcesLoaded;

  @override
  $Res call({
    Object stateHolder = freezed,
  }) {
    return _then(_NewsSourcesLoaded(
      stateHolder: stateHolder == freezed
          ? _value.stateHolder
          : stateHolder as NewsStateHolder,
    ));
  }
}

/// @nodoc
class _$_NewsSourcesLoaded implements _NewsSourcesLoaded {
  const _$_NewsSourcesLoaded({@required this.stateHolder})
      : assert(stateHolder != null);

  @override
  final NewsStateHolder stateHolder;

  @override
  String toString() {
    return 'NewsState.newsSourcesLoaded(stateHolder: $stateHolder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsSourcesLoaded &&
            (identical(other.stateHolder, stateHolder) ||
                const DeepCollectionEquality()
                    .equals(other.stateHolder, stateHolder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(stateHolder);

  @JsonKey(ignore: true)
  @override
  _$NewsSourcesLoadedCopyWith<_NewsSourcesLoaded> get copyWith =>
      __$NewsSourcesLoadedCopyWithImpl<_NewsSourcesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(NewsStateHolder stateHolder),
    @required TResult loading(NewsStateHolder stateHolder),
    @required TResult articlesLoaded(NewsStateHolder stateHolder),
    @required TResult savedArticlesLoaded(NewsStateHolder stateHolder),
    @required TResult newsSourcesLoaded(NewsStateHolder stateHolder),
    @required TResult setScrollController(NewsStateHolder stateHolder),
    @required TResult selectedNewsSource(NewsStateHolder stateHolder),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(articlesLoaded != null);
    assert(savedArticlesLoaded != null);
    assert(newsSourcesLoaded != null);
    assert(setScrollController != null);
    assert(selectedNewsSource != null);
    return newsSourcesLoaded(stateHolder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(NewsStateHolder stateHolder),
    TResult loading(NewsStateHolder stateHolder),
    TResult articlesLoaded(NewsStateHolder stateHolder),
    TResult savedArticlesLoaded(NewsStateHolder stateHolder),
    TResult newsSourcesLoaded(NewsStateHolder stateHolder),
    TResult setScrollController(NewsStateHolder stateHolder),
    TResult selectedNewsSource(NewsStateHolder stateHolder),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (newsSourcesLoaded != null) {
      return newsSourcesLoaded(stateHolder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialNews value),
    @required TResult loading(_Loading value),
    @required TResult articlesLoaded(_ArticlesLoaded value),
    @required TResult savedArticlesLoaded(_SavedArticlesLoaded value),
    @required TResult newsSourcesLoaded(_NewsSourcesLoaded value),
    @required TResult setScrollController(_SetScrollController value),
    @required TResult selectedNewsSource(_SelectedNewsSource value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(articlesLoaded != null);
    assert(savedArticlesLoaded != null);
    assert(newsSourcesLoaded != null);
    assert(setScrollController != null);
    assert(selectedNewsSource != null);
    return newsSourcesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialNews value),
    TResult loading(_Loading value),
    TResult articlesLoaded(_ArticlesLoaded value),
    TResult savedArticlesLoaded(_SavedArticlesLoaded value),
    TResult newsSourcesLoaded(_NewsSourcesLoaded value),
    TResult setScrollController(_SetScrollController value),
    TResult selectedNewsSource(_SelectedNewsSource value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (newsSourcesLoaded != null) {
      return newsSourcesLoaded(this);
    }
    return orElse();
  }
}

abstract class _NewsSourcesLoaded implements NewsState {
  const factory _NewsSourcesLoaded({@required NewsStateHolder stateHolder}) =
      _$_NewsSourcesLoaded;

  @override
  NewsStateHolder get stateHolder;
  @override
  @JsonKey(ignore: true)
  _$NewsSourcesLoadedCopyWith<_NewsSourcesLoaded> get copyWith;
}

/// @nodoc
abstract class _$SetScrollControllerCopyWith<$Res>
    implements $NewsStateCopyWith<$Res> {
  factory _$SetScrollControllerCopyWith(_SetScrollController value,
          $Res Function(_SetScrollController) then) =
      __$SetScrollControllerCopyWithImpl<$Res>;
  @override
  $Res call({NewsStateHolder stateHolder});

  @override
  $NewsStateHolderCopyWith<$Res> get stateHolder;
}

/// @nodoc
class __$SetScrollControllerCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res>
    implements _$SetScrollControllerCopyWith<$Res> {
  __$SetScrollControllerCopyWithImpl(
      _SetScrollController _value, $Res Function(_SetScrollController) _then)
      : super(_value, (v) => _then(v as _SetScrollController));

  @override
  _SetScrollController get _value => super._value as _SetScrollController;

  @override
  $Res call({
    Object stateHolder = freezed,
  }) {
    return _then(_SetScrollController(
      stateHolder: stateHolder == freezed
          ? _value.stateHolder
          : stateHolder as NewsStateHolder,
    ));
  }
}

/// @nodoc
class _$_SetScrollController implements _SetScrollController {
  const _$_SetScrollController({@required this.stateHolder})
      : assert(stateHolder != null);

  @override
  final NewsStateHolder stateHolder;

  @override
  String toString() {
    return 'NewsState.setScrollController(stateHolder: $stateHolder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetScrollController &&
            (identical(other.stateHolder, stateHolder) ||
                const DeepCollectionEquality()
                    .equals(other.stateHolder, stateHolder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(stateHolder);

  @JsonKey(ignore: true)
  @override
  _$SetScrollControllerCopyWith<_SetScrollController> get copyWith =>
      __$SetScrollControllerCopyWithImpl<_SetScrollController>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(NewsStateHolder stateHolder),
    @required TResult loading(NewsStateHolder stateHolder),
    @required TResult articlesLoaded(NewsStateHolder stateHolder),
    @required TResult savedArticlesLoaded(NewsStateHolder stateHolder),
    @required TResult newsSourcesLoaded(NewsStateHolder stateHolder),
    @required TResult setScrollController(NewsStateHolder stateHolder),
    @required TResult selectedNewsSource(NewsStateHolder stateHolder),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(articlesLoaded != null);
    assert(savedArticlesLoaded != null);
    assert(newsSourcesLoaded != null);
    assert(setScrollController != null);
    assert(selectedNewsSource != null);
    return setScrollController(stateHolder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(NewsStateHolder stateHolder),
    TResult loading(NewsStateHolder stateHolder),
    TResult articlesLoaded(NewsStateHolder stateHolder),
    TResult savedArticlesLoaded(NewsStateHolder stateHolder),
    TResult newsSourcesLoaded(NewsStateHolder stateHolder),
    TResult setScrollController(NewsStateHolder stateHolder),
    TResult selectedNewsSource(NewsStateHolder stateHolder),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setScrollController != null) {
      return setScrollController(stateHolder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialNews value),
    @required TResult loading(_Loading value),
    @required TResult articlesLoaded(_ArticlesLoaded value),
    @required TResult savedArticlesLoaded(_SavedArticlesLoaded value),
    @required TResult newsSourcesLoaded(_NewsSourcesLoaded value),
    @required TResult setScrollController(_SetScrollController value),
    @required TResult selectedNewsSource(_SelectedNewsSource value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(articlesLoaded != null);
    assert(savedArticlesLoaded != null);
    assert(newsSourcesLoaded != null);
    assert(setScrollController != null);
    assert(selectedNewsSource != null);
    return setScrollController(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialNews value),
    TResult loading(_Loading value),
    TResult articlesLoaded(_ArticlesLoaded value),
    TResult savedArticlesLoaded(_SavedArticlesLoaded value),
    TResult newsSourcesLoaded(_NewsSourcesLoaded value),
    TResult setScrollController(_SetScrollController value),
    TResult selectedNewsSource(_SelectedNewsSource value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setScrollController != null) {
      return setScrollController(this);
    }
    return orElse();
  }
}

abstract class _SetScrollController implements NewsState {
  const factory _SetScrollController({@required NewsStateHolder stateHolder}) =
      _$_SetScrollController;

  @override
  NewsStateHolder get stateHolder;
  @override
  @JsonKey(ignore: true)
  _$SetScrollControllerCopyWith<_SetScrollController> get copyWith;
}

/// @nodoc
abstract class _$SelectedNewsSourceCopyWith<$Res>
    implements $NewsStateCopyWith<$Res> {
  factory _$SelectedNewsSourceCopyWith(
          _SelectedNewsSource value, $Res Function(_SelectedNewsSource) then) =
      __$SelectedNewsSourceCopyWithImpl<$Res>;
  @override
  $Res call({NewsStateHolder stateHolder});

  @override
  $NewsStateHolderCopyWith<$Res> get stateHolder;
}

/// @nodoc
class __$SelectedNewsSourceCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res>
    implements _$SelectedNewsSourceCopyWith<$Res> {
  __$SelectedNewsSourceCopyWithImpl(
      _SelectedNewsSource _value, $Res Function(_SelectedNewsSource) _then)
      : super(_value, (v) => _then(v as _SelectedNewsSource));

  @override
  _SelectedNewsSource get _value => super._value as _SelectedNewsSource;

  @override
  $Res call({
    Object stateHolder = freezed,
  }) {
    return _then(_SelectedNewsSource(
      stateHolder: stateHolder == freezed
          ? _value.stateHolder
          : stateHolder as NewsStateHolder,
    ));
  }
}

/// @nodoc
class _$_SelectedNewsSource implements _SelectedNewsSource {
  const _$_SelectedNewsSource({@required this.stateHolder})
      : assert(stateHolder != null);

  @override
  final NewsStateHolder stateHolder;

  @override
  String toString() {
    return 'NewsState.selectedNewsSource(stateHolder: $stateHolder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedNewsSource &&
            (identical(other.stateHolder, stateHolder) ||
                const DeepCollectionEquality()
                    .equals(other.stateHolder, stateHolder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(stateHolder);

  @JsonKey(ignore: true)
  @override
  _$SelectedNewsSourceCopyWith<_SelectedNewsSource> get copyWith =>
      __$SelectedNewsSourceCopyWithImpl<_SelectedNewsSource>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(NewsStateHolder stateHolder),
    @required TResult loading(NewsStateHolder stateHolder),
    @required TResult articlesLoaded(NewsStateHolder stateHolder),
    @required TResult savedArticlesLoaded(NewsStateHolder stateHolder),
    @required TResult newsSourcesLoaded(NewsStateHolder stateHolder),
    @required TResult setScrollController(NewsStateHolder stateHolder),
    @required TResult selectedNewsSource(NewsStateHolder stateHolder),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(articlesLoaded != null);
    assert(savedArticlesLoaded != null);
    assert(newsSourcesLoaded != null);
    assert(setScrollController != null);
    assert(selectedNewsSource != null);
    return selectedNewsSource(stateHolder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(NewsStateHolder stateHolder),
    TResult loading(NewsStateHolder stateHolder),
    TResult articlesLoaded(NewsStateHolder stateHolder),
    TResult savedArticlesLoaded(NewsStateHolder stateHolder),
    TResult newsSourcesLoaded(NewsStateHolder stateHolder),
    TResult setScrollController(NewsStateHolder stateHolder),
    TResult selectedNewsSource(NewsStateHolder stateHolder),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectedNewsSource != null) {
      return selectedNewsSource(stateHolder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialNews value),
    @required TResult loading(_Loading value),
    @required TResult articlesLoaded(_ArticlesLoaded value),
    @required TResult savedArticlesLoaded(_SavedArticlesLoaded value),
    @required TResult newsSourcesLoaded(_NewsSourcesLoaded value),
    @required TResult setScrollController(_SetScrollController value),
    @required TResult selectedNewsSource(_SelectedNewsSource value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(articlesLoaded != null);
    assert(savedArticlesLoaded != null);
    assert(newsSourcesLoaded != null);
    assert(setScrollController != null);
    assert(selectedNewsSource != null);
    return selectedNewsSource(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialNews value),
    TResult loading(_Loading value),
    TResult articlesLoaded(_ArticlesLoaded value),
    TResult savedArticlesLoaded(_SavedArticlesLoaded value),
    TResult newsSourcesLoaded(_NewsSourcesLoaded value),
    TResult setScrollController(_SetScrollController value),
    TResult selectedNewsSource(_SelectedNewsSource value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectedNewsSource != null) {
      return selectedNewsSource(this);
    }
    return orElse();
  }
}

abstract class _SelectedNewsSource implements NewsState {
  const factory _SelectedNewsSource({@required NewsStateHolder stateHolder}) =
      _$_SelectedNewsSource;

  @override
  NewsStateHolder get stateHolder;
  @override
  @JsonKey(ignore: true)
  _$SelectedNewsSourceCopyWith<_SelectedNewsSource> get copyWith;
}

/// @nodoc
class _$NewsStateHolderTearOff {
  const _$NewsStateHolderTearOff();

// ignore: unused_element
  _NewsStateHolder call(
      {@required List<Article> cachedArticles,
      @required List<Article> savedArticles,
      @required List<NewsSource> newsSources,
      @required String loadingMessage,
      @required ScrollController scrollController,
      @required NewsSource currentNewsSource,
      @required String error}) {
    return _NewsStateHolder(
      cachedArticles: cachedArticles,
      savedArticles: savedArticles,
      newsSources: newsSources,
      loadingMessage: loadingMessage,
      scrollController: scrollController,
      currentNewsSource: currentNewsSource,
      error: error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NewsStateHolder = _$NewsStateHolderTearOff();

/// @nodoc
mixin _$NewsStateHolder {
  List<Article> get cachedArticles;
  List<Article> get savedArticles;
  List<NewsSource> get newsSources;
  String get loadingMessage;
  ScrollController get scrollController;
  NewsSource get currentNewsSource;
  String get error;

  @JsonKey(ignore: true)
  $NewsStateHolderCopyWith<NewsStateHolder> get copyWith;
}

/// @nodoc
abstract class $NewsStateHolderCopyWith<$Res> {
  factory $NewsStateHolderCopyWith(
          NewsStateHolder value, $Res Function(NewsStateHolder) then) =
      _$NewsStateHolderCopyWithImpl<$Res>;
  $Res call(
      {List<Article> cachedArticles,
      List<Article> savedArticles,
      List<NewsSource> newsSources,
      String loadingMessage,
      ScrollController scrollController,
      NewsSource currentNewsSource,
      String error});
}

/// @nodoc
class _$NewsStateHolderCopyWithImpl<$Res>
    implements $NewsStateHolderCopyWith<$Res> {
  _$NewsStateHolderCopyWithImpl(this._value, this._then);

  final NewsStateHolder _value;
  // ignore: unused_field
  final $Res Function(NewsStateHolder) _then;

  @override
  $Res call({
    Object cachedArticles = freezed,
    Object savedArticles = freezed,
    Object newsSources = freezed,
    Object loadingMessage = freezed,
    Object scrollController = freezed,
    Object currentNewsSource = freezed,
    Object error = freezed,
  }) {
    return _then(_value.copyWith(
      cachedArticles: cachedArticles == freezed
          ? _value.cachedArticles
          : cachedArticles as List<Article>,
      savedArticles: savedArticles == freezed
          ? _value.savedArticles
          : savedArticles as List<Article>,
      newsSources: newsSources == freezed
          ? _value.newsSources
          : newsSources as List<NewsSource>,
      loadingMessage: loadingMessage == freezed
          ? _value.loadingMessage
          : loadingMessage as String,
      scrollController: scrollController == freezed
          ? _value.scrollController
          : scrollController as ScrollController,
      currentNewsSource: currentNewsSource == freezed
          ? _value.currentNewsSource
          : currentNewsSource as NewsSource,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
abstract class _$NewsStateHolderCopyWith<$Res>
    implements $NewsStateHolderCopyWith<$Res> {
  factory _$NewsStateHolderCopyWith(
          _NewsStateHolder value, $Res Function(_NewsStateHolder) then) =
      __$NewsStateHolderCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Article> cachedArticles,
      List<Article> savedArticles,
      List<NewsSource> newsSources,
      String loadingMessage,
      ScrollController scrollController,
      NewsSource currentNewsSource,
      String error});
}

/// @nodoc
class __$NewsStateHolderCopyWithImpl<$Res>
    extends _$NewsStateHolderCopyWithImpl<$Res>
    implements _$NewsStateHolderCopyWith<$Res> {
  __$NewsStateHolderCopyWithImpl(
      _NewsStateHolder _value, $Res Function(_NewsStateHolder) _then)
      : super(_value, (v) => _then(v as _NewsStateHolder));

  @override
  _NewsStateHolder get _value => super._value as _NewsStateHolder;

  @override
  $Res call({
    Object cachedArticles = freezed,
    Object savedArticles = freezed,
    Object newsSources = freezed,
    Object loadingMessage = freezed,
    Object scrollController = freezed,
    Object currentNewsSource = freezed,
    Object error = freezed,
  }) {
    return _then(_NewsStateHolder(
      cachedArticles: cachedArticles == freezed
          ? _value.cachedArticles
          : cachedArticles as List<Article>,
      savedArticles: savedArticles == freezed
          ? _value.savedArticles
          : savedArticles as List<Article>,
      newsSources: newsSources == freezed
          ? _value.newsSources
          : newsSources as List<NewsSource>,
      loadingMessage: loadingMessage == freezed
          ? _value.loadingMessage
          : loadingMessage as String,
      scrollController: scrollController == freezed
          ? _value.scrollController
          : scrollController as ScrollController,
      currentNewsSource: currentNewsSource == freezed
          ? _value.currentNewsSource
          : currentNewsSource as NewsSource,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$_NewsStateHolder implements _NewsStateHolder {
  const _$_NewsStateHolder(
      {@required this.cachedArticles,
      @required this.savedArticles,
      @required this.newsSources,
      @required this.loadingMessage,
      @required this.scrollController,
      @required this.currentNewsSource,
      @required this.error})
      : assert(cachedArticles != null),
        assert(savedArticles != null),
        assert(newsSources != null),
        assert(loadingMessage != null),
        assert(scrollController != null),
        assert(currentNewsSource != null),
        assert(error != null);

  @override
  final List<Article> cachedArticles;
  @override
  final List<Article> savedArticles;
  @override
  final List<NewsSource> newsSources;
  @override
  final String loadingMessage;
  @override
  final ScrollController scrollController;
  @override
  final NewsSource currentNewsSource;
  @override
  final String error;

  @override
  String toString() {
    return 'NewsStateHolder(cachedArticles: $cachedArticles, savedArticles: $savedArticles, newsSources: $newsSources, loadingMessage: $loadingMessage, scrollController: $scrollController, currentNewsSource: $currentNewsSource, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsStateHolder &&
            (identical(other.cachedArticles, cachedArticles) ||
                const DeepCollectionEquality()
                    .equals(other.cachedArticles, cachedArticles)) &&
            (identical(other.savedArticles, savedArticles) ||
                const DeepCollectionEquality()
                    .equals(other.savedArticles, savedArticles)) &&
            (identical(other.newsSources, newsSources) ||
                const DeepCollectionEquality()
                    .equals(other.newsSources, newsSources)) &&
            (identical(other.loadingMessage, loadingMessage) ||
                const DeepCollectionEquality()
                    .equals(other.loadingMessage, loadingMessage)) &&
            (identical(other.scrollController, scrollController) ||
                const DeepCollectionEquality()
                    .equals(other.scrollController, scrollController)) &&
            (identical(other.currentNewsSource, currentNewsSource) ||
                const DeepCollectionEquality()
                    .equals(other.currentNewsSource, currentNewsSource)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cachedArticles) ^
      const DeepCollectionEquality().hash(savedArticles) ^
      const DeepCollectionEquality().hash(newsSources) ^
      const DeepCollectionEquality().hash(loadingMessage) ^
      const DeepCollectionEquality().hash(scrollController) ^
      const DeepCollectionEquality().hash(currentNewsSource) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$NewsStateHolderCopyWith<_NewsStateHolder> get copyWith =>
      __$NewsStateHolderCopyWithImpl<_NewsStateHolder>(this, _$identity);
}

abstract class _NewsStateHolder implements NewsStateHolder {
  const factory _NewsStateHolder(
      {@required List<Article> cachedArticles,
      @required List<Article> savedArticles,
      @required List<NewsSource> newsSources,
      @required String loadingMessage,
      @required ScrollController scrollController,
      @required NewsSource currentNewsSource,
      @required String error}) = _$_NewsStateHolder;

  @override
  List<Article> get cachedArticles;
  @override
  List<Article> get savedArticles;
  @override
  List<NewsSource> get newsSources;
  @override
  String get loadingMessage;
  @override
  ScrollController get scrollController;
  @override
  NewsSource get currentNewsSource;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$NewsStateHolderCopyWith<_NewsStateHolder> get copyWith;
}
