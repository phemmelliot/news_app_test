// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_module_injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$NewsModuleInjector extends NewsModuleInjector {
  @override
  void _configureNewsModules() {
    final KiwiContainer container = KiwiContainer();
    container.registerFactory<NewsRepository>(
        (c) => NewsRepositoryImpl(c<NewsService>(), c<NewsHiveDao>()));
    container.registerFactory<NewsService>(
        (c) => NewsServiceImpl(c<ApiClient>(), c<Dio>()));
    container.registerSingleton((c) => NewsHiveDao());
    container.registerSingleton((c) => ApiClient());
  }
}
