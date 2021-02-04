import 'package:news_app/data/news/model/news_model.dart';
import 'package:news_app/data/news/model/news_source.dart';

abstract class NewsRepository {
  Future<void> fetchNews(String source, bool isGenericTopHeadline, {bool isFetchingBackground});
  Future<List<NewsSource>> fetchNewsSources();
  Stream<List<Article>> getSavedNewsStream();
  Stream<List<Article>> getCachedNewsStream();
  Future<List<NewsSource>> getNewsSources();
  Future<News> getNewsMeta();
  Future<void> loadArticlesFromCache();
  Future<void> saveArticleToLiked(Article article);
  Future<void> removeArticleFromLiked(Article article);
}
