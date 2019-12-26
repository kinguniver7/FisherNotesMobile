import 'package:fisher_notes/common/constants.dart';
import 'package:fisher_notes/providers/common_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class LeftDrawer extends StatefulWidget { 

  @override
  _LeftDrawerState createState() => _LeftDrawerState();
}

class _LeftDrawerState extends State<LeftDrawer> {
  bool isDarkTheme = false;
   @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: <Widget>[
                Text('Drawer Header'),
                Consumer<CommonProvider>(
                  builder: (context, commonModel,_){
                    return Switch(
                      value: commonModel.themeMode == ThemeMode.dark,                      
                      onChanged: (newValue){
                        commonModel.changeTheme(newValue ==true ? ThemeMode.dark : ThemeMode.light);                        
                      }
                    );
                  }
                )                
              ],
              ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          Consumer<CommonProvider>(
            builder: (context, model,_){
              return ListTile(
                title: Text('Dashboard'),
                selected: model.selectedRouteName == Constants.ROOUTE_NAME_TO_INIT_PAGE,
                onTap: () {                  
                  model.changeRouteName(Constants.ROOUTE_NAME_TO_INIT_PAGE);                  
                  Navigator.pushNamedAndRemoveUntil(context, Constants.ROOUTE_NAME_TO_INIT_PAGE,(Route<dynamic> route) => false);                  
                },
              );
            },),
          Consumer<CommonProvider>(
            builder: (context, model,_){
              return ListTile(
                title: Text('StoreRoom'),
                selected: model.selectedRouteName == Constants.ROOUTE_NAME_TO_STORE_ROOM_PAGE,
                onTap: () {          
                  model.changeRouteName(Constants.ROOUTE_NAME_TO_STORE_ROOM_PAGE);    
                  Navigator.pushNamedAndRemoveUntil(context, Constants.ROOUTE_NAME_TO_STORE_ROOM_PAGE,(Route<dynamic> route) => false);  
                },
              );
            },),
        ],
      )
    );
  }       

}