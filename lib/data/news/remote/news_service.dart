import 'package:news_app/data/news/model/news_model.dart';
import 'package:news_app/data/news/model/news_source.dart';

abstract class NewsService {
  Future<News> fetchNewsFromRemote(String source, int page);
  Future<List<NewsSource>> fetchNewsSources();
}
