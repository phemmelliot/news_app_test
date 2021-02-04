import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomProgressIndicator {
  static Timer timer;

  CustomProgressIndicator();

  static Future<void> dismiss() async {
    if (Get.isDialogOpen) {
      print("Dialog Closer");
      timer = null;
      Get.back();
    }
  }

  static void show({String message}) {
    print("This is supposed to show the dialog");
    timer = Timer(Duration(seconds: 30), () => dismiss());

    if (!Get.isDialogOpen) {
      Get.generalDialog(
        barrierDismissible: false,
        barrierColor: Colors.white.withOpacity(0.50),
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext context, Animation animation, Animation secondaryAnimation) {
          ThemeData themeData = Theme.of(context);
          return Scaffold(
            backgroundColor: Theme.of(context).backgroundColor.withOpacity(0.50),
            body: Center(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(themeData.primaryColor),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  message ?? "",
                  style: Theme.of(context).primaryTextTheme.bodyText1.copyWith(
                        fontSize: 18,
                      ),
                  // TextStyle(color: Colors.black, fontSize: 20),
                )
              ],
            )),
          );
        },
      );
    }
  }
}
