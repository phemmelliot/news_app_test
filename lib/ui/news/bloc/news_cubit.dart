import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:news_app/data/news/model/news_model.dart';
import 'package:news_app/data/news/model/news_source.dart';
import 'package:news_app/data/news/repository/news_repository.dart';
import 'package:news_app/di/modules/news_module/news_module_injector.dart';
import 'package:news_app/ui/core/news_source_picker/news_source_picker.dart';
import 'package:news_app/ui/core/toast_helper/toast_helper.dart';

part 'news_cubit.freezed.dart';
part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  final _newsRepo = NewsModuleInjector.resolve<NewsRepository>();
  StreamSubscription<List<Article>> _savedArticlesStreamSubscription;
  StreamSubscription<List<Article>> _articlesStreamSubscription;
  ScrollController _scrollController;

  NewsCubit()
      : super(
          NewsState.initial(
            stateHolder: NewsStateHolder(
              cachedArticles: [],
              savedArticles: [],
              newsSources: [],
              loadingMessage: '',
              scrollController: ScrollController(),
              currentNewsSource: NewsSource()
                ..name = "Top Headlines in the US"
                ..description = "Top breaking news for the united states across all sources",
              error: '',
            ),
          ),
        ) {
    listenToSavedArticlesDB();
    listenToCachedArticlesDB();
    fetchNewsSources();
    setScrollController();
    fetchInBackground();
  }

  void showNewsSources(BuildContext context) {
    FocusScope.of(Get.context).requestFocus(FocusNode());
    NewsSourcesPicker(
        context: context,
        newsSources: state.stateHolder.newsSources,
        onItemSelected: (x) {
          emit(NewsState.selectedNewsSource(stateHolder: state.stateHolder.copyWith(currentNewsSource: x)));
        }).show();
  }

  @override
  Future<void> close() {
    _savedArticlesStreamSubscription.cancel();
    _articlesStreamSubscription.cancel();
    return super.close();
  }

  void loadFromCache() {
    Future.delayed(Duration.zero, () async {
      _newsRepo.loadArticlesFromCache();
    });
  }

  void fetchInBackground() {
    Timer.periodic(Duration(minutes: 15), (timer) async {
      String url = state.stateHolder.currentNewsSource.url;
      fetchNewArticles(url, url == null);
    });
  }

  void fetchNewArticles(String source, bool isGenericTopHeadline) async {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ToastHelper.showFetching(message: "Fetching new articles...");
    });
    await _newsRepo.fetchNews(source, isGenericTopHeadline);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ToastHelper.dismiss();
    });
  }

  void saveArticle(Article article) {
    _newsRepo.saveArticleToLiked(article..isLiked = true);
  }

  void deleteArticleFromLiked(Article article) {
    _newsRepo.removeArticleFromLiked(article..isLiked = false);
  }

  void fetchNewsSources() async {
    final sources = await _newsRepo.fetchNewsSources();
    emit(NewsState.newsSourcesLoaded(stateHolder: state.stateHolder.copyWith(newsSources: sources)));
  }

  void listenToSavedArticlesDB() {
    _savedArticlesStreamSubscription = _newsRepo.getSavedNewsStream().listen((articles) {
      emit(NewsState.savedArticlesLoaded(stateHolder: state.stateHolder.copyWith(savedArticles: articles)));
    });
  }

  void listenToCachedArticlesDB() {
    _articlesStreamSubscription = _newsRepo.getCachedNewsStream().listen((articles) {
      print("cached article syncing");
      emit(NewsState.articlesLoaded(stateHolder: state.stateHolder.copyWith(cachedArticles: articles)));
    });
  }

  void setScrollController() {
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      print("This is the listener for the listview>>>>>>>>>>>>>>>");
      if (_scrollController.position.atEdge) {
        if (_scrollController.position.pixels != 0) {
          fetchNewArticles(null, true);
        }
      }
    });
    // emit(NewState.setScrollController(
    //   stateHolder: state.stateHolder.copyWith(
    //     scrollController: _scrollController,
    //   ),
    // ));
  }
}
