import 'package:flutter_test/flutter_test.dart';
import 'package:news_app/data/news/model/news_model.dart';
import 'package:news_app/data/news/model/news_source.dart';

void main() {
  NewsSource model;

  final json = <String, dynamic>{
    "id": "abc-news",
    "name": "ABC News",
    "description":
        "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
    "url": "https://abcnews.go.com",
    "category": "general",
    "language": "en",
    "country": "us"
  };

  setUp(() {
    model = NewsSource(
      id: "abc-news",
      name: "ABC News",
      description:
          "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    );
  });

  test('toJson returns a valid Map<String, dynamic>', () => expect(model.toJson(), json));
  test('fromJson returns a NewsSource', () => expect(NewsSource.fromJson(json), model));
}
