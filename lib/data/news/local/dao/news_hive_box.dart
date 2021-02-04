import 'dart:async';

import 'package:hive/hive.dart';
import 'package:news_app/data/base/local/hive_boxes.dart';
import 'package:news_app/data/news/model/news_model.dart';
import 'package:news_app/data/news/model/news_source.dart';

class NewsHiveDao {
  Box<Map> _newsMetaBox;
  Box<Map> _articlesBox;
  Box<Map> _savedArticlesBox;
  final String newsMetaKey = "newsMetaKey";
  final String newsSourcesKey = "newsSourcesKey";
  StreamController<List<Article>> _articlesController = StreamController.broadcast();
  StreamController<List<Article>> _savedArticlesController = StreamController.broadcast();

  NewsHiveDao() {
    if (_newsMetaBox == null || !_newsMetaBox.isOpen) {
      openNewsMetaBox().then((value) => {
            print('open news meta box'),
            _newsMetaBox = value,
          });
    }

    if (_articlesBox == null || !_articlesBox.isOpen) {
      openArticlesBox().then((value) => {
            print('open news box'),
            _articlesBox = value,
          });
    }

    if (_savedArticlesBox == null || !_savedArticlesBox.isOpen) {
      openSavedArticlesBox().then((value) => {
            print('open saved news box'),
            _savedArticlesBox = value,
          });
    }
  }

  Future<Box<Map>> openArticlesBox() async {
    _articlesBox = await HiveBoxes.openBox<Map>(HiveBoxes.countryNews);

    return _articlesBox;
  }

  Future<Box<Map>> openSavedArticlesBox() async {
    _savedArticlesBox = await HiveBoxes.openBox<Map>(HiveBoxes.savedCountryNews);

    return _savedArticlesBox;
  }

  Future<Box<Map>> openNewsMetaBox() async {
    _newsMetaBox = await HiveBoxes.openBox<Map>(HiveBoxes.countryNewsMeta);

    return _newsMetaBox;
  }

  String _getNewsKey(Article article) {
    return article.url;
  }

  String _getNewsSourceId(NewsSource newsSource) {
    return newsSource.id;
  }

  Future<void> saveRemoteNews(News response, {bool isPaginatedResult = false}) async {
    if (_articlesBox == null) {
      await openArticlesBox();
    }

    if (_newsMetaBox == null) {
      await openNewsMetaBox();
    }

    _newsMetaBox.put(newsMetaKey, response.toNewsMetaJson());

    final newsMap = Map<String, Map<String, dynamic>>.fromIterable(
      response.articles.where((Article element) => element != null),
      key: (article) => _getNewsKey(article),
      value: (article) => article.toJson(),
    );

    // clear the former cache
    if (!isPaginatedResult) await _articlesBox.clear();

    _articlesBox.putAll(newsMap);
    _articlesController.add(response.articles);
  }

  Future<void> saveNewsSources(List<NewsSource> sources) async {
    if (_newsMetaBox == null) {
      await openNewsMetaBox();
    }

    print("Sources from the remote");
    print(sources.map((e) => e.toJson()));

    final newsSourcesMap = Map<String, Map<String, dynamic>>.fromIterable(
      sources.where((NewsSource element) => element != null),
      key: (source) => _getNewsSourceId(source),
      value: (source) => source.toJson(),
    );
    _newsMetaBox.put(newsSourcesKey, newsSourcesMap);
  }

  Future<void> saveNewsMeta(News newsMeta) async {
    if (_newsMetaBox == null) {
      await openNewsMetaBox();
    }

    _newsMetaBox.put(newsMetaKey, newsMeta.toNewsMetaJson());
  }

  Future<void> saveArticle(Article article) async {
    final articleMap = article.toJson();
    print("This is supposed to save the article");
    print(articleMap);
    _savedArticlesBox.put(_getNewsKey(article), articleMap);
    _articlesBox.put(_getNewsKey(article), articleMap);
    getCachedArticles();
    getSavedArticles();
  }

  Future<void> deleteArticleFromLiked(Article article) async {
    final articleMap = article.toJson();
    _savedArticlesBox.delete(_getNewsKey(article));
    _articlesBox.put(_getNewsKey(article), articleMap);
    getCachedArticles();
    getSavedArticles();
  }

  Future<List<Article>> getCachedArticles() async {
    if (_articlesBox == null) {
      await openArticlesBox();
    }
    print("Getting cached news");
    print(_articlesBox.values.toList());
    List<Article> articles = List<Article>.from(_articlesBox.values.toList().map((e) => Article.fromJson(e)));

    _articlesController.add(articles);
    return articles;
  }

  Future<List<NewsSource>> getSavedNewsSources() async {
    if (_newsMetaBox == null) {
      await openNewsMetaBox();
    }

    print("This is the news sources");
    print(_newsMetaBox.get(newsSourcesKey)?.values?.toList());
    List<NewsSource> sources = [];
    if (_newsMetaBox.get(newsSourcesKey) != null) {
      sources = List<NewsSource>.from(
        _newsMetaBox.get(newsSourcesKey).values.toList().map(
              (e) => NewsSource.fromJson(e),
            ),
      );
    }

    return sources;
  }

  Future<News> getCachedNewsMeta() async {
    if (_newsMetaBox == null) {
      await openNewsMetaBox();
    }

    if (_newsMetaBox.get(newsMetaKey) == null) {
      return News();
    }

    return News.fromJson(_newsMetaBox.get(newsMetaKey));
  }

  Future<List<Article>> getSavedArticles() async {
    if (_savedArticlesBox == null) {
      await openSavedArticlesBox();
    }

    List<Article> articles = List<Article>.from(_savedArticlesBox.values.toList().map((e) => Article.fromJson(e)));

    _savedArticlesController.add(articles);
    return articles;
  }

  Stream<List<Article>> get getCachedArticlesStream => _articlesController.stream;

  Stream<List<Article>> get getSavedArticlesStream => _savedArticlesController.stream;

  Future<void> truncate() async {
    _articlesBox?.clear();
    _savedArticlesBox.clear();
    _newsMetaBox.clear();
  }
}
