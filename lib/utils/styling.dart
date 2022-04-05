import 'package:building_buddy/utils/size_config.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color appBackgroundColor = Color(0xffFFFFFF);
  static const Color appBackgroundColor2 = Color(0xffF5F5F5);
  static const Color searchBackgroundColor = Color(0xff00000008);
  static const Color selectedTabBackgroundColor = Color(0xFFFFC442);
  static const Color unSelectedTabBackgroundColor = Color(0xFFFFFFFC);
  static const Color subTitleTextColor = Color(0xFF9F988F);
  //static const Color appColor = Color(0xff205b3e);
  static const Color appColor = Color(0xff041D48);
  static const Color appColor2 = Color(0xffDDDDDD);
  static const Color appColor3 = Color(0xffE84103);
  static const Color appColor4 = Color(0xffEEEEEE);
  static const Color appColor5 = Color(0xffECECEC);
  static const Color appColor6 = Color(0xffFFD700);
  static const Color appColor7 = Color(0xffE3F1EA);
  static const Color appColor8 = Color(0xff6D9773);
  static const Color appColor9 = Color(0xff3AA574);
  static const Color appColor10 = Color(0xffF33737);
  static const Color appColor11 = Color(0xffF1F3F5);
  static const Color appColor12 = Color(0xffF6AE3F);
  static const Color appColor13 = Color(0xff8C8C8C);
  static const Color appColor14 = Color(0xff1a1a1a);
  static const Color appColor15 = Color(0xffdf4e26);
  static const Color appColor16 = Color(0xffbedc94);

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppTheme.appBackgroundColor,
    brightness: Brightness.light,
    //textTheme: lightTextTheme,
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    //textTheme: darkTextTheme,
  );

  /*static final TextTheme lightTextTheme = TextTheme(
    title: _titleLight,
    subtitle: _subTitleLight,
    button: _buttonLight,
    display1: _greetingLight,
    display2: _searchLight,
    bodyText1: _selectedTabLight,
    bodyText2: _unSelectedTabLight,
  );

  static final TextTheme darkTextTheme = TextTheme(
    title: _titleDark,
    subtitle: _subTitleDark,
    button: _buttonDark,
    display1: _greetingDark,
    display2: _searchDark,
    body1: _selectedTabDark,
    body2: _unSelectedTabDark,
  );*/

  static final TextStyle _titleLight = TextStyle(
    color: Colors.black,
    fontSize: 3.5 * SizeConfig.textMultiplier!,
  );

  static final TextStyle _subTitleLight = TextStyle(
    color: subTitleTextColor,
    fontSize: 2 * SizeConfig.textMultiplier!,
    height: 1.5,
  );

  static final TextStyle _buttonLight = TextStyle(
    color: Colors.black,
    fontSize: 2.5 * SizeConfig.textMultiplier!,
  );

  static final TextStyle _greetingLight = TextStyle(
    color: Colors.black,
    fontSize: 2.0 * SizeConfig.textMultiplier!,
  );

  static final TextStyle _searchLight = TextStyle(
    color: Colors.black,
    fontSize: 2.3 * SizeConfig.textMultiplier!,
  );

  static final TextStyle _selectedTabLight = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 2 * SizeConfig.textMultiplier!,
  );

  static final TextStyle _unSelectedTabLight = TextStyle(
    color: Colors.grey,
    fontSize: 2 * SizeConfig.textMultiplier!,
  );

  static final TextStyle _titleDark = _titleLight.copyWith(color: Colors.white);

  static final TextStyle _subTitleDark =
  _subTitleLight.copyWith(color: Colors.white70);

  static final TextStyle _buttonDark =
  _buttonLight.copyWith(color: Colors.black);

  static final TextStyle _greetingDark =
  _greetingLight.copyWith(color: Colors.black);

  static final TextStyle _searchDark =
  _searchDark.copyWith(color: Colors.black);

  static final TextStyle _selectedTabDark =
  _selectedTabDark.copyWith(color: Colors.white);

  static final TextStyle _unSelectedTabDark =
  _selectedTabDark.copyWith(color: Colors.white70);
}