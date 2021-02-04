part of 'news_cubit.dart';

@freezed
abstract class NewsState with _$NewsState {
  const factory NewsState.initial({@required NewsStateHolder stateHolder}) = _InitialNews;
  const factory NewsState.loading({@required NewsStateHolder stateHolder}) = _Loading;
  const factory NewsState.articlesLoaded({@required NewsStateHolder stateHolder}) = _ArticlesLoaded;
  const factory NewsState.savedArticlesLoaded({@required NewsStateHolder stateHolder}) = _SavedArticlesLoaded;
  const factory NewsState.newsSourcesLoaded({@required NewsStateHolder stateHolder}) = _NewsSourcesLoaded;
  const factory NewsState.setScrollController({@required NewsStateHolder stateHolder}) = _SetScrollController;
  const factory NewsState.selectedNewsSource({@required NewsStateHolder stateHolder}) = _SelectedNewsSource;
}

@freezed
abstract class NewsStateHolder with _$NewsStateHolder {
  const factory NewsStateHolder({
    @required List<Article> cachedArticles,
    @required List<Article> savedArticles,
    @required List<NewsSource> newsSources,
    @required String loadingMessage,
    @required ScrollController scrollController,
    @required NewsSource currentNewsSource,
    @required String error,
  }) = _NewsStateHolder;
}
