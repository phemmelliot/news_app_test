import 'package:flutter_test/flutter_test.dart';
import 'package:news_app/data/news/model/news_model.dart';

void main() {
  Article model;

  final json = <String, dynamic>{
    "source": {"id": null, "name": "Baltimore Sun"},
    "author": "Christine Condon",
    "title":
        "Man killed, U.S. marshal injured in exchange of gunfire while serving arrest warrant in Baltimore, police say - Baltimore Sun",
    "description":
        "A member of the U.S. Marshals was shot Thursday morning in West Baltimore while serving an arrest warrant, according to Baltimore police.",
    "url":
        "https://www.baltimoresun.com/news/crime/bs-md-ci-cr-1400-mount-street-shooting-20210204-6q6yewbdfvetxfzqkz26lazn7y-story.html",
    "urlToImage":
        "https://www.baltimoresun.com/resizer/HzwPQaMHnZmOfTXqV-7H375SOK8=/1200x0/top/cloudfront-us-east-1.images.arcpublishing.com/tronc/EO4MGMTYL5BXNLFDZMMTEQ7F2A.jpg",
    "publishedAt": "2021-02-04T16:30:00Z",
    "content": null,
    "isLiked": false,
  };

  setUp(() {
    model = Article(
      author: "Christine Condon",
      title:
          "Man killed, U.S. marshal injured in exchange of gunfire while serving arrest warrant in Baltimore, police say - Baltimore Sun",
      description:
          "A member of the U.S. Marshals was shot Thursday morning in West Baltimore while serving an arrest warrant, according to Baltimore police.",
      url:
          "https://www.baltimoresun.com/news/crime/bs-md-ci-cr-1400-mount-street-shooting-20210204-6q6yewbdfvetxfzqkz26lazn7y-story.html",
      urlToImage:
          "https://www.baltimoresun.com/resizer/HzwPQaMHnZmOfTXqV-7H375SOK8=/1200x0/top/cloudfront-us-east-1.images.arcpublishing.com/tronc/EO4MGMTYL5BXNLFDZMMTEQ7F2A.jpg",
      publishedAt: "2021-02-04T16:30:00Z",
      content: null,
      source: Source(
        id: null,
        name: "Baltimore Sun",
      ),
    );
  });

  test('toJson returns a valid Map<String, dynamic>', () => expect(model.toJson(), json));
  test('fromJson returns a Country', () => expect(Article.fromJson(json), model));
}
