import 'package:fisher_notes/common/left_drawer.dart';
import 'package:flutter/material.dart';

class StoreRoomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: LeftDrawer(),
      appBar: AppBar(
        title: Text('Store Room'),   
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              
            },
          ),
           IconButton(
            icon: Icon(Icons.tune),
            onPressed: () {
              
            },
          )
        ],             
        ),
      body: Text('Store room page'),
      );
  }
}