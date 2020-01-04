import 'package:fisher_notes/models/enums/thing_type.dart';
import 'package:flutter/material.dart';

class StoreRoomProvider extends ChangeNotifier{
  int _selectedIndexTab = 0;
  ThingType _selectedThingType = ThingType.rod;

  int get selectedIndexTab => _selectedIndexTab;
  ThingType get selectedThingType => _selectedThingType;

  void onClickNavigationTab(int index){
    _selectedIndexTab = index;
    switch(index){
      case 0:
        _selectedThingType = ThingType.rod;
        break;
      case 1:
        _selectedThingType = ThingType.reel;
        break;
      case 2:
        _selectedThingType = ThingType.bait;
        break;
      case 3:
        _selectedThingType = ThingType.tackle;
        break;
    }
    notifyListeners();
  }

}