import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive/hive.dart';
import 'package:news_app/data/news/local/dao/news_hive_box.dart';
import 'package:news_app/di/injector.dart';
import 'package:news_app/di/modules/news_module/news_module_injector.dart';
import 'package:news_app/routes/routes.dart';
import 'package:news_app/ui/news/home.dart';
import 'package:path_provider/path_provider.dart';

import 'utils/pallet.dart';

Future<void> _initHive() async {
  Directory dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  NewsModuleInjector.resolve<NewsHiveDao>();
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await _initHive();
  runApp(App());
}

class App extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Theme.of(context).brightness,
      ),
    );

    return GetMaterialApp(
      title: 'News Application',
      theme: appThemeLight,
      home: Home(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      fallbackLocale: Locale("en"),
    );
  }
}
