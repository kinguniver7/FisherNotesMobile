import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CommonProvider extends ChangeNotifier{
  String _selectedRouteName;
  ThemeMode _themeMode;

  String get selectedRouteName => _selectedRouteName;
  ThemeMode get themeMode => _themeMode;

  void changeRouteName(String val){
    _selectedRouteName = val;
    notifyListeners();
  }
  void changeTheme(ThemeMode val){
    _themeMode = val;
    notifyListeners();
  }

}