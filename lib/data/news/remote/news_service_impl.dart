import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:news_app/data/base/remote/endpoints.dart';
import 'package:news_app/data/base/remote/http_client.dart';
import 'package:news_app/data/news/model/news_model.dart';
import 'package:news_app/data/news/model/news_source.dart';
import 'package:news_app/data/news/remote/news_service.dart';

class NewsServiceImpl extends NewsService {
  final ApiClient _apiClient;
  final Dio _client;
  NewsServiceImpl(this._apiClient, this._client);

  @override
  Future<News> fetchNewsFromRemote(String source, int page) async {
    Map<String, dynamic> queryParams = {};
    if (source != null) {
      queryParams['sources'] = source;
    } else {
      queryParams['country'] = 'us';
    }

    if (page != null) {
      queryParams['page'] = page;
    }
    var response = await _client.get(Endpoints.topHeadlines, queryParameters: queryParams);

    return News.fromJson(response.data);
  }

  @override
  Future<List<NewsSource>> fetchNewsSources() async {
    Map<String, dynamic> queryParams = {};
    queryParams['language'] = "en";
    var response = await _client.get(
      Endpoints.newsSources,
      queryParameters: queryParams,
    );
    List<NewsSource> sources = [];
    if (response.data["status"] == "ok") {
      List rawList = response.data["sources"] as List;
      sources = List<NewsSource>.from(rawList.map((e) => NewsSource.fromJson(e)));
    }
    return sources;
  }
}
