import 'package:fisher_notes/common/constants.dart';
import 'package:fisher_notes/common/f_n_icons.dart';
import 'package:fisher_notes/common/left_drawer.dart';
import 'package:fisher_notes/models/enums/fishing_type.dart';
import 'package:fisher_notes/models/enums/thing_type.dart';
import 'package:fisher_notes/models/thing_model.dart';
import 'package:fisher_notes/providers/store_room_provider.dart';
import 'package:fisher_notes/widgets/thing_card.dart';
import 'package:flutter/material.dart';

import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:provider/provider.dart';

class StoreRoomPage extends StatelessWidget {
  StoreRoomPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {    
    return ChangeNotifierProvider(
      create: (_)=> StoreRoomProvider(),
      child: Scaffold(
        drawer: LeftDrawer(),
        appBar: AppBar(
          title: Text('Store Room'),   
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.tune),
              onPressed: () {},
            )
          ],             
        ),
        body: StoreRoomList(),
        bottomNavigationBar: NavigationBarWidget()      
      ),
    ); 
  }
}  

class NavigationBarWidget extends StatefulWidget {
  @override
  _NavigationBarWidgetState createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        //unselectedItemColor: isDark ? Colors.white : Colors.black,
        //selectedItemColor: isDark ? Theme.of(context).accentColor : Colors.black,
        items:  const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(FNIcons.rod),  title: Text('Rods')),//0
          BottomNavigationBarItem(icon: Icon(FNIcons.reel), title: Text('Reels')),//1
          BottomNavigationBarItem(icon: Icon(FNIcons.bait), title: Text('Baits')),//2
          BottomNavigationBarItem(icon: Icon(FNIcons.tackle), title: Text('Tackle')),//3
        ],
        currentIndex: Provider.of<StoreRoomProvider>(context).selectedIndexTab,
        onTap: (index)=>{
          setState(()=>{
            selectedIndex = index,
            Provider.of<StoreRoomProvider>(context).onClickNavigationTab(index)
          })
        },        
      );
  }
}

class StoreRoomList extends StatefulWidget {
  @override
  _StoreRoomListState createState() => _StoreRoomListState();
}

class _StoreRoomListState extends State<StoreRoomList> {
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return FabCircularMenu(
        child: Column(
          children: <Widget>[
            Expanded(
              child: GridView.count(
                //itemCount: foods.length,
                childAspectRatio: 0.85,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                crossAxisCount: 2,
                physics: BouncingScrollPhysics(),
                children: things.where((c)=> c.type == Provider.of<StoreRoomProvider>(context).selectedThingType).map((food) {
                  return ThingCard(food);
                }).toList(),
              ),
            )
          ],
        ),
        ringColor: isDark ? Theme.of(context).accentColor :  Theme.of(context).primaryColor,    
        ringDiameter: MediaQuery.of(context).size.width * 0.6,
        options: <Widget>[
          IconButton(icon: Icon(FNIcons.rod), color: Colors.white, onPressed: () { Navigator.pushNamed(context, Constants.ROOUTE_NAME_TO_ADD_OR_EDIT_ROD_PAGE);}),//0
          IconButton(icon: Icon(FNIcons.reel), color: Colors.white, onPressed: () { print('Pressed!');}),//1          
          IconButton(icon: Icon(FNIcons.bait), color: Colors.white, onPressed: () { print('Pressed!');}),//2
          IconButton(icon: Icon(FNIcons.tackle), color: Colors.white, onPressed: () { print('Pressed!');})//3
        ]
      );
  }
}