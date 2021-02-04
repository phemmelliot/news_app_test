import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:news_app/data/news/local/dao/news_hive_box.dart';
import 'package:news_app/data/news/model/news_model.dart';
import 'package:news_app/data/news/remote/news_service.dart';
import 'package:news_app/data/news/repository/news_repository.dart';
import 'package:news_app/data/news/repository/news_repository_impl.dart';

class MockNewsService extends Mock implements NewsService {}

class MockNewsDao extends Mock implements NewsHiveDao {}

void main() {
  NewsRepository repo;
  final localDatasource = MockNewsDao();
  final remoteDatasource = MockNewsService();

  setUp(() {
    repo = NewsRepositoryImpl(remoteDatasource, localDatasource);
  });

  group('News repository', () {
    when(localDatasource.getCachedNewsMeta()).thenAnswer((_) async => News());

    test('Fetch news', () async {
      await repo.fetchNews(null, true);

      verify(localDatasource.getCachedNewsMeta());
      verify(remoteDatasource.fetchNewsFromRemote(null, 1));
      verify(localDatasource.saveNewsMeta(any));
      verify(localDatasource.saveRemoteNews(any));

      verifyNoMoreInteractions(localDatasource);

      // Need this to reset the interactions on mocked object
      clearInteractions(localDatasource);
    });
  });
}
