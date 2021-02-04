import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pallet {
  Pallet._();
  // LIGHT COLOURS
  static const Color scaffoldBackgroundLight = Colors.white;
  static const Color backgroundLight = Color(0xFFFEEADD);
  // static Color dividerColor = Colors.grey[350];
  static const Color cardColorLight = Colors.white;
  static const Color disabledColor = Color(0xFF959DB6);
  static const Color iconTint = Color(0xFF776C6C);
  static const Color hintColorLight = Color(0xFF959DB6);

  // DARK COLOURS For switching
  // static const Color scaffoldBackgroundDark = Color(0xFF121212);
  // static const Color backgroundDark = Color(0xFF121212); //Colors.black;
  // static const Color backgroundBlack = Colors.black;
  // static Color dividerColorDark = Colors.grey[100];
  // static Color cardColorDark = Colors.grey[900];
  // static const Color disabledColorDark = Colors.grey;
  // static const Color iconTintDark = Color(0xFF959DB6);
  // static const Color hintColorDark = Color(0xFF8E8E93);

  // MISC
  static const Color colorPrimary = Colors.blue;
  static const Color colorPrimaryDark = Color(0xFFCB5620);
  static const Color skyBlue = Color(0xFFEBF1FF);
  static const Color cyan = Color(0xFFD2F3FF);
  static const Color yellowish = Color(0xFFFFF1BF);
  static const Color lightBlack = Color(0xFF868686);
  static const Color notificationDotColor = Colors.blue;
  static const Color black = Colors.black;
  static const Color white = Color(0xFFFFFFFF);
  static const Color blackFont = Color(0xFF3F3F3F);
  static const Color secondaryButtonColorGrey = Color(0xFF8E8E93);
  static const Color greyDark = Color(0xFF8E8E93);
  static Color whiteFont = Color(0xFFFFFFFF).withOpacity(0.95);

  /////////////////////////////////////////////////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  static const Color colorTransparent = Color(0xEEEEEEE);
  static const Color boxBorder = Color(0xFFE5E5E5);
  static const Color greyButton = Color(0xFFE5E6EB);

  static const Color offWhite = Color(0xFFF5F8F9);

  static const Color lightGrey = Color(0xFFF0F0F0);
  static const Color darkGrey = Color(0xFF776C6C);
  static const Color lightTextColor = Color(0xFF555555);
  static const Color dartText = Color(0xFF3F3F3F);
  static const Color grayText = Color(0x803F3F3F);
  static const Color emptyMsgBodyText = Color(0xFFA2A9BF);
  static const Color disabledButton = Color(0xFFD8AA95);
}

double _baseFontSize = 16;
double _baseFontSizeSmaller = 14;
double _baseFontSizeLarger = 18;

final _textThemeLight = TextStyle(
  color: Pallet.blackFont,
  fontSize: _baseFontSize,
  // fontFamily: _fontFamily,
);

var appThemeLight = ThemeData(
  primarySwatch: Colors.red,
  indicatorColor: Pallet.colorPrimary,
  primaryColor: Pallet.colorPrimary,
  backgroundColor: Pallet.backgroundLight,
  hintColor: Pallet.hintColorLight,
  brightness: Brightness.light,
  scaffoldBackgroundColor: Pallet.scaffoldBackgroundLight,
  // dividerColor: Pallet.dividerColor,
  disabledColor: Pallet.disabledColor,
  errorColor: Colors.red.shade800,
  cardColor: Pallet.cardColorLight,
  appBarTheme: AppBarTheme(
    color: Pallet.backgroundLight,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Pallet.black),
    textTheme: TextTheme(
      headline6: _textThemeLight.copyWith(
        fontSize: _baseFontSizeLarger,
        fontWeight: FontWeight.w600,
      ),
    ),
  ),
  // fontFamily: _fontFamily,
  tabBarTheme: TabBarTheme(
    unselectedLabelColor: Pallet.iconTint,
    labelColor: Pallet.colorPrimary,
    unselectedLabelStyle: _textThemeLight.copyWith(fontSize: _baseFontSize),
    indicator: BoxDecoration(border: Border(bottom: BorderSide(color: Pallet.colorPrimary, width: 2))),
    labelStyle: _textThemeLight.copyWith(
      fontSize: _baseFontSize,
      fontWeight: FontWeight.bold,
    ),
  ),
  iconTheme: IconThemeData(color: Pallet.iconTint),
  primaryTextTheme: TextTheme(
    bodyText1: _textThemeLight,
    bodyText2: _textThemeLight.copyWith(fontSize: _baseFontSizeSmaller),
    headline1: _textThemeLight.copyWith(fontWeight: FontWeight.bold, fontSize: _baseFontSizeLarger),
    headline2: _textThemeLight.copyWith(fontWeight: FontWeight.bold, fontSize: _baseFontSize),
    caption: _textThemeLight,
    subtitle1: _textThemeLight.copyWith(fontSize: 32, fontWeight: FontWeight.bold, color: Pallet.blackFont),
    subtitle2: _textThemeLight.copyWith(fontWeight: FontWeight.w400, color: Pallet.iconTint),
    button: _textThemeLight,
  ),
);
