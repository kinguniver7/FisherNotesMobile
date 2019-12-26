import 'package:fisher_notes/common/drawer.dart';
import 'package:flutter/material.dart';

class StoreRoomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: LeftDrawer(),
      appBar: AppBar(
        title: Text('Store Room'),        
        ),
      body: Text('Store room page'),
      );
  }
}