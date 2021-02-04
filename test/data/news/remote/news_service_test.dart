import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:news_app/data/base/remote/http_client.dart';
import 'package:news_app/data/news/model/news_model.dart';
import 'package:news_app/data/news/model/news_source.dart';
import 'package:news_app/data/news/remote/news_service.dart';
import 'package:mockito/mockito.dart';
import 'package:news_app/data/news/remote/news_service_impl.dart';

import '../mocks/news_response_json.dart';

class MockApiClient extends Mock implements ApiClient {}

void main() {
  NewsService newsService;
  final apiClient = MockApiClient();
  final dio = Dio();
  DioAdapterMockito dioAdapterMockito;

  setUp(() {
    dioAdapterMockito = DioAdapterMockito();
    dio.httpClientAdapter = dioAdapterMockito;
    newsService = NewsServiceImpl(apiClient, dio);
  });

  Article article = Article.fromJson(newsJson);
  NewsSource newsSource = NewsSource.fromJson(newsSourceJson);
  final model = News(status: "ok", totalResults: 1, articles: [article]);
  group('News Services Operations', () {
    test('fetchNewsFromRemote', () async {
      final responsePayload = jsonEncode({
        'status': 'ok',
        'totalResults': 1,
        'articles': [newsJson]
      });

      final responseBody = ResponseBody.fromString(
        responsePayload,
        200,
        headers: {
          Headers.contentTypeHeader: [Headers.jsonContentType],
        },
      );
      when(dioAdapterMockito.fetch(any, any, any)).thenAnswer((_) async => responseBody);

      final result = await newsService.fetchNewsFromRemote(null, 1);
      expect(result.articles[0], isA<Article>());
      expect(result.articles[0].url, article.url);
      expect(result.totalResults, model.totalResults);
    });

    test('fetchNewsSources', () async {
      final responsePayload = jsonEncode({
        'status': 'ok',
        'sources': [newsSourceJson]
      });

      final responseBody = ResponseBody.fromString(
        responsePayload,
        200,
        headers: {
          Headers.contentTypeHeader: [Headers.jsonContentType],
        },
      );
      when(dioAdapterMockito.fetch(any, any, any)).thenAnswer((_) async => responseBody);

      final result = await newsService.fetchNewsSources();
      expect(result.length, 1);
      expect(result[0], isA<NewsSource>());
    });
  });
}
