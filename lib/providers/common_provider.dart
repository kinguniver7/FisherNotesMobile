import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CommonProvider extends ChangeNotifier{
  String _selectedRouteName;
  ThemeMode _themeMode;
  bool _showOverlay = true;

  String get selectedRouteName => _selectedRouteName;
  ThemeMode get themeMode => _themeMode;
  bool get showOverlay => _showOverlay;

  void changeRouteName(String val){
    _selectedRouteName = val;
    notifyListeners();
  }
  void changeTheme(ThemeMode val){
    _themeMode = val;
    notifyListeners();
  }

  void setShowOverlay(bool val){
    _showOverlay = val;
    notifyListeners();
  }

}