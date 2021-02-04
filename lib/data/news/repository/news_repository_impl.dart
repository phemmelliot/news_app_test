import 'package:news_app/data/news/local/dao/news_hive_box.dart';
import 'package:news_app/data/news/model/news_model.dart';
import 'package:news_app/data/news/model/news_source.dart';
import 'package:news_app/data/news/remote/news_service.dart';
import 'package:news_app/data/news/repository/news_repository.dart';
import 'package:news_app/di/modules/news_module/news_module_injector.dart';

class NewsRepositoryImpl extends NewsRepository {
  final NewsService _newsService;
  final NewsHiveDao _newsHiveDao;
  NewsRepositoryImpl(this._newsService, this._newsHiveDao);

  @override
  Future<void> fetchNews(String source, bool isGenericTopHeadline, {bool isFetchingBackground = false}) async {
    News newsMeta = await _newsHiveDao.getCachedNewsMeta();
    int page = newsMeta.currentPage;
    String currentSource = newsMeta.currentNewsSource;

    String sourceToFetch;
    int pageToFetch;
    if (isFetchingBackground) {
      sourceToFetch = currentSource;
      pageToFetch = 0;
    } else if (isGenericTopHeadline) {
      if (page != null) {
        pageToFetch = page + 1;
      }
    } else {
      if (currentSource != null && currentSource == source) {
        if (page != null) {
          pageToFetch = page + 1;
          sourceToFetch = currentSource;
        }
      } else {
        sourceToFetch = source;
      }
    }
    News newsResponse =
        await _newsService.fetchNewsFromRemote(sourceToFetch, isFetchingBackground ? null : pageToFetch);

    _newsHiveDao.saveNewsMeta(newsMeta
      ..currentPage = pageToFetch
      ..currentNewsSource = sourceToFetch);
    _newsHiveDao.saveRemoteNews(newsResponse);
  }

  @override
  Stream<List<Article>> getCachedNewsStream() {
    return _newsHiveDao.getCachedArticlesStream;
  }

  @override
  Future<News> getNewsMeta() async {
    News newsMeta = await _newsHiveDao.getCachedNewsMeta();
    return newsMeta;
  }

  @override
  Future<List<NewsSource>> getNewsSources() async {
    return _newsHiveDao.getSavedNewsSources();
  }

  @override
  Stream<List<Article>> getSavedNewsStream() {
    return _newsHiveDao.getSavedArticlesStream;
  }

  @override
  Future<List<NewsSource>> fetchNewsSources() async {
    List<NewsSource> newsSources = await getNewsSources();
    if (newsSources.isEmpty) {
      newsSources = await _newsService.fetchNewsSources();
    }

    _newsHiveDao.saveNewsSources(newsSources);
    return newsSources;
  }

  @override
  Future<void> loadArticlesFromCache() async {
    _newsHiveDao.getCachedArticles();
    _newsHiveDao.getSavedArticles();
  }

  @override
  Future<void> saveArticleToLiked(Article article) async {
    _newsHiveDao.saveArticle(article);
  }

  @override
  Future<void> removeArticleFromLiked(Article article) async {
    _newsHiveDao.deleteArticleFromLiked(article);
  }
}
