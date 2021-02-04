import 'package:flutter/material.dart';
// import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Routes {
  //Settings pages
  static const String SETTINGS = "/settings";
  static const String PROFILE = "/profile";

  static const String HOME = "/home";
  static const String SEND_TO_MOBILE = "/send_to_mobile";
  static const String INPUT_CARD = "/input_card";
  static const String LOGIN = "/login";
  static const String SIGNUP = "/signup";
  static const String ONBOARDING = "/onboarding";
  static const String VERIFY_NUMBER = "/verify_number";
  static const String VERIFY_USER = "/verify_user";
  static const String CREATE_PIN = "/create_pin";
  static const String WELCOME = "/welcome";
  static const String SPLASH_SCREEN = "/splash_screen";

  static const String LOCK = "/lock_screen";

  // static JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
  //   return JavascriptChannel(
  //       name: '_Toaster',
  //       onMessageReceived: (JavascriptMessage message) {
  //         print("This is the message from the webview");
  //         print(message.message);
  //         Scaffold.of(context).showSnackBar(
  //           SnackBar(content: Text(message.message)),
  //         );
  //       });
  // }

  // static createWebViewScaffold(BuildContext context, String url, String pageTitle) {
  //   return WebviewScaffold(
  //     url: url,
  //     javascriptChannels: <JavascriptChannel>[_toasterJavascriptChannel(context)].toSet(),
  //     withJavascript: true,
  //     withZoom: true,
  //     useWideViewPort: false,
  //     displayZoomControls: false,
  //     scrollBar: true,
  //     hidden: true,
  //     initialChild: Container(
  //       height: double.infinity,
  //       width: double.infinity,
  //       child: Center(
  //         child: CircularProgressIndicator(
  //           backgroundColor: Colors.blue,
  //         ),
  //       ),
  //     ),
  //     appBar: new AppBar(
  //       title: new Text(pageTitle),
  //       backgroundColor: Colors.blue,
  //     ),
  //   );
  // }
}
