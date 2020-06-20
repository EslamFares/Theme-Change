import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//34an mktb4 3'l6 ||kda aktb  "AppTheme (enum Name)".'elly ana 3awzh' ==> enum
enum AppTheme { GreenLight, GreenDark, BlueLight, BlueDark,PinkLight,PinkDark }
final appThemeData = {
  AppTheme.GreenLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.green,
  ),
  AppTheme.GreenDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.green[800],
  ),
  AppTheme.BlueLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
  ),
  AppTheme.BlueDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.blue[800],
  ),
  AppTheme.PinkLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.pink,
  ),
  AppTheme.PinkDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.pink,
  ),
};
