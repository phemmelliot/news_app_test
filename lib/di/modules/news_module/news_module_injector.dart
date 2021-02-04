import 'package:dio/dio.dart';
import 'package:kiwi/kiwi.dart';
import 'package:news_app/data/base/remote/http_client.dart';
import 'package:news_app/data/news/local/dao/news_hive_box.dart';
import 'package:news_app/data/news/remote/news_service.dart';
import 'package:news_app/data/news/remote/news_service_impl.dart';
import 'package:news_app/data/news/repository/news_repository.dart';
import 'package:news_app/data/news/repository/news_repository_impl.dart';

part 'news_module_injector.g.dart';

abstract class NewsModuleInjector {
  static KiwiContainer container;

  static final resolve = container.resolve;

  void setup() {
    container = KiwiContainer();
    container.registerInstance(ApiClient.getClient());
    _$NewsModuleInjector().configure();
  }

  void configure() {
    _configureNewsModules();
  }

  @Register.factory(NewsRepository, from: NewsRepositoryImpl)
  @Register.factory(NewsService, from: NewsServiceImpl)
  @Register.singleton(NewsHiveDao)
  @Register.singleton(ApiClient)
  void _configureNewsModules();
}

NewsModuleInjector newsModuleInjector() => _$NewsModuleInjector();
