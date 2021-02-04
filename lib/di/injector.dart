import 'package:news_app/di/modules/news_module/news_module_injector.dart';

void configureDependencies() {
  newsModuleInjector().setup();
}
