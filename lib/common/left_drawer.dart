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
          UserAccountsDrawerHeader(
            //TODO: Need to add authorize
            accountName: Text('Maksym Kravchuk'),
            accountEmail: Text('mak7.kr@gmail.com'),            
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/temp/drawer_header.jpg'),
                fit: BoxFit.cover
              )
            ),
            currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/temp/user_logo.jpg')),
          ),

          Consumer<CommonProvider>(
            builder: (context, model,_){
              return ListTile(
                leading: Icon(Icons.dashboard),
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
                leading: Icon(Icons.extension),
                title: Text('StoreRoom'),
                selected: model.selectedRouteName == Constants.ROOUTE_NAME_TO_STORE_ROOM_PAGE,
                onTap: () {          
                  model.changeRouteName(Constants.ROOUTE_NAME_TO_STORE_ROOM_PAGE);    
                  Navigator.pushNamedAndRemoveUntil(context, Constants.ROOUTE_NAME_TO_STORE_ROOM_PAGE,(Route<dynamic> route) => false);  
                },
              );
            },),
          Divider(),
          Consumer<CommonProvider>(
            builder: (context, commonModel,_){
              return ListTile(                
                leading: Icon(Icons.brightness_3 ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Dark theme'),
                    Switch(
                      value: commonModel.themeMode == ThemeMode.dark,                      
                      onChanged: (newValue){
                        commonModel.changeTheme(newValue ==true ? ThemeMode.dark : ThemeMode.light);                        
                      }
                    )
                  ],
                )
              );
            }
          )
        ],
      )
    );
  }       

}