import 'dart:io';

import 'package:dio/dio.dart';
// import 'package:flare_dart/math/mat2d.dart';
// import 'package:flare_flutter/flare.dart';
// import 'package:flare_flutter/flare_actor.dart';
// import 'package:flare_flutter/flare_controller.dart';
// import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:ikonik/src/utils/enum.dart';
import 'package:intl/intl.dart';

class Helper {
  static final formatCurrency = NumberFormat.currency(decimalDigits: 2, symbol: "CFA ");
  static final formatCurrencyCompact = NumberFormat.compactCurrency(symbol: '\u0024', decimalDigits: 2);

  static BoxShadow appBoxShadow = BoxShadow(
    color: Colors.black.withOpacity(0.06),
    blurRadius: 20.0,
    offset: Offset(0, 5),
  );

  static BorderRadius appBoxBorderRadius = BorderRadius.all(
    Radius.circular(5.0),
  );

  static double getResponsiveHeight(double percent, BuildContext context) {
    return percent / 100 * MediaQuery.of(context).size.height;
  }

  static double getResponsiveWidth(double percent, BuildContext context) {
    return percent / 100 * MediaQuery.of(context).size.width;
  }

  // Form validation form fields
  static String checkIfFieldIsEmpty(String value) {
    if (value == null || value.isEmpty) {
      return 'Please fill this field';
    }
    return null;
  }

  static String validateEmailAddress(String value) {
    RegExp regExp = RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
    if (!regExp.hasMatch(value)) {
      return 'Please input a valid email address';
    }
    return null;
  }

  static String validatePassword(String value) {
    if (value.length < 8) {
      return 'Password has to be up to 8 characters';
    }
    return null;
  }

  static String validateConfirmPassword(String confirm, String pass) {
    if (confirm != pass) {
      return "Password doesn't match";
    }
    return null;
  }

  static String validatePhoneNumber(String value) {
    print(value.length);
    String pattern = r'(^(?:[0])?[0-9]{10}$)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return 'Please enter mobile number';
    }
    // else if (!regExp.hasMatch(value)) {
    //   return 'Please enter valid mobile number';
    // }
    return null;
    // if (value.length == 11 || value.length == 10) {
    //   return null;
    // }
    // return 'Please input a valid phone number';
  }

  static String handleError(DioError error) {
    String errorDescription = "";
    switch (error.type) {
      case DioErrorType.CANCEL:
        errorDescription = "Request to server was cancelled, please try again";
        break;
      case DioErrorType.CONNECT_TIMEOUT:
        errorDescription = "Connection timeout with server, please try again";
        break;
      case DioErrorType.SEND_TIMEOUT:
        errorDescription = "Connection timeout with server, please try again";
        break;
      case DioErrorType.DEFAULT:
        errorDescription =
            "Connection to API server failed due to internet connection Check your internet connection and try again";
        break;
      case DioErrorType.RECEIVE_TIMEOUT:
        errorDescription = "Receive timeout in connection with API server";
        break;
      default:
        errorDescription = "Unexpected error encountered, please try again";
    }
    return errorDescription;
  }

  static showPlatformProgressIndicator(BuildContext context) {
    Widget indicator;

    if (Platform.isIOS) {
      indicator = CupertinoActivityIndicator();
    } else if (Platform.isAndroid) {
      indicator = CircularProgressIndicator();
    }

    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          child: Container(
            color: Colors.transparent,
            height: 100,
            width: 100,
            child: Center(
              child: indicator,
            ),
          ),
        );
      },
    );
  }

  // static void onFlushBarStatusChanged(FlushbarStatus status) {}
  //
  // static void displaySuccess(String message, BuildContext context, {int duration = 3}) {
  //   Flushbar flushBar = FlushBarInheritedWidget.of(context).flushBar;
  //
  //   if (flushBar != null) {}
  //   FlushBarInheritedWidget.of(context).setFlushBar = Flushbar(
  //     message: message,
  //     backgroundColor: Colors.greenAccent[400],
  //     mainButton: FlatButton(
  //       onPressed: () {
  //         Navigator.pop(context);
  //       },
  //       child: Icon(
  //         Icons.cancel,
  //         color: Colors.white,
  //         size: 20,
  //       ),
  //     ),
  //     flushbarStyle: FlushbarStyle.FLOATING,
  //     duration: Duration(seconds: duration),
  //     dismissDirection: FlushbarDismissDirection.HORIZONTAL,
  //     margin: EdgeInsets.only(bottom: 50),
  //     onStatusChanged: onFlushBarStatusChanged,
  //   )..show(context);
  // }
  //
  // static void displayError(String message, BuildContext context, {int duration = 7, bool hasMargin = true}) {
  //   Flushbar flushBar = FlushBarInheritedWidget.of(context).flushBar;
  //   if (FlushBarInheritedWidget.of(context).flushBar != null &&
  //       FlushBarInheritedWidget.of(context).flushBar.isShowing()) {
  //     FlushBarInheritedWidget.of(context).flushBar.dismiss([]);
  //   }
  //
  //   flushBar = Flushbar(
  //     message: message,
  //     backgroundColor: Colors.red,
  //     mainButton: FlatButton(
  //       onPressed: () {
  //         flushBar.dismiss();
  //       },
  //       child: Icon(
  //         Icons.cancel,
  //         color: Colors.white,
  //         size: 20,
  //       ),
  //     ),
  //     flushbarStyle: FlushbarStyle.FLOATING,
  //     duration: Duration(seconds: duration),
  //     dismissDirection: FlushbarDismissDirection.HORIZONTAL,
  //     flushbarPosition: FlushbarPosition.TOP,
  //     margin: hasMargin ? EdgeInsets.only(bottom: 20) : EdgeInsets.only(bottom: 0),
  //   )..show(context);
  //
  //   // FlushBarInheritedWidget.of(context).flushBar.show(context);
  // }

  static dismissDialog(BuildContext context) {
    Navigator.pop(context);
  }

  static Future<void> showNotificationDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
          backgroundColor: Colors.white,
          child: Container(
            height: 120,
            width: Helper.getResponsiveWidth(90, context),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Notification',
                    style: TextStyle(color: Colors.green, fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'This feature is still under development, check back later',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  // static Future<void> showEmailSentNotification(BuildContext context, Function proceed) {
  //   return showDialog(
  //     context: context,
  //     builder: (BuildContext dialogContext) {
  //       return Dialog(
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(10),
  //         ),
  //         elevation: 10.0,
  //         backgroundColor: Colors.white,
  //         child: Container(
  //           height: 220,
  //           width: Helper.getResponsiveWidth(90, context),
  //           child: Padding(
  //             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.center,
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: <Widget>[
  //                 Text(
  //                   'Email Sent',
  //                   style: TextStyle(color: Helper.primaryColor, fontSize: 16),
  //                 ),
  //                 SizedBox(
  //                   height: 10,
  //                 ),
  //                 Text(
  //                   'Check your Email for a verification Code\nthen proceed to the next page to complete email verification',
  //                   textAlign: TextAlign.center,
  //                   style: TextStyle(fontSize: 14),
  //                 ),
  //                 SizedBox(
  //                   height: 10,
  //                 ),
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
  //                   children: <Widget>[
  //                     Container(
  //                       width: 100,
  //                       child: ActionButton(
  //                         isWhiteButton: true,
  //                         hasBorder: true,
  //                         height: 30,
  //                         titleString: 'Cancel',
  //                         onPressed: () => Navigator.pop(
  //                           dialogContext,
  //                         ),
  //                       ),
  //                     ),
  //                     Container(
  //                         width: 100,
  //                         child: ActionButton(
  //                           isWhiteButton: false,
  //                           height: 30,
  //                           titleString: 'Proceed',
  //                           onPressed: () => proceed(),
  //                         )),
  //                   ],
  //                 )
  //               ],
  //             ),
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }

  // static Future<void> forgotPassOrVerifyMailSuccessful(BuildContext context, Function proceed, String label) {
  //   return showDialog(
  //     context: context,
  //     builder: (BuildContext dialogContext) {
  //       return Dialog(
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(10),
  //         ),
  //         elevation: 10.0,
  //         backgroundColor: Colors.white,
  //         child: Container(
  //           height: 300,
  //           width: Helper.getResponsiveWidth(90, context),
  //           child: Padding(
  //             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.center,
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: <Widget>[
  //                 Text(
  //                   label,
  //                   style: TextStyle(color: Helper.primaryColor, fontSize: 16),
  //                 ),
  //                 SizedBox(
  //                   height: 10,
  //                 ),
  //                 Container(
  //                   height: 150,
  //                   width: 150,
  //                   child: FlareActor(
  //                     'assets/success_check.flr',
  //                     alignment: Alignment.center,
  //                     animation: 'Untitled',
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   height: 10,
  //                 ),
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
  //                   children: <Widget>[
  //                     Container(
  //                       width: 100,
  //                       child: ActionButton(
  //                         isWhiteButton: true,
  //                         hasBorder: true,
  //                         height: 30,
  //                         titleString: 'Cancel',
  //                         onPressed: () => Navigator.pop(
  //                           dialogContext,
  //                         ),
  //                       ),
  //                     ),
  //                     Container(
  //                         width: 100,
  //                         child: ActionButton(
  //                           isWhiteButton: false,
  //                           height: 30,
  //                           titleString: 'Proceed',
  //                           onPressed: () => proceed(),
  //                         )),
  //                   ],
  //                 )
  //               ],
  //             ),
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }

  static Future<void> showActionDialog(BuildContext context, Function buildModalContent,
      {bool barrierDismissible = true}) {
    return showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
          backgroundColor: Colors.black.withOpacity(0.2),
          child: buildModalContent(context),
        );
      },
    );
  }

  static showStartLoadingIndicator(BuildContext context) {
    Widget indicator;

    if (Platform.isIOS) {
      indicator = CupertinoActivityIndicator();
    } else if (Platform.isAndroid) {
      indicator = CircularProgressIndicator();
    }

    return Container(
      color: Colors.transparent,
      height: getResponsiveHeight(100, context),
      width: getResponsiveWidth(100, context),
      child: Center(
        child: indicator,
      ),
    );
  }

  static showLoadingDialogWithMessage(BuildContext context, String message) {
    Widget indicator;

    if (Platform.isIOS) {
      indicator = CupertinoActivityIndicator();
    } else if (Platform.isAndroid) {
      indicator = CircularProgressIndicator();
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
          backgroundColor: Colors.white,
          child: Container(
            height: 80,
            width: Helper.getResponsiveWidth(90, context),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  indicator,
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    message,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

// class CustomFlareController extends FlareController {
//   @override
//   bool advance(FlutterActorArtboard artboard, double elapsed) {
//     Future.delayed(Duration(seconds: 20), () {
//       artboard.advance(20);
//     });
//     return true;
//   }
//
//   @override
//   void initialize(FlutterActorArtboard artboard) {
//     // TODO: implement initialize
//   }
//
//   @override
//   void setViewTransform(Mat2D viewTransform) {
//     // TODO: implement setViewTransform
//   }
// }
