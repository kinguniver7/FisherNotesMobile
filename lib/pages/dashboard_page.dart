import 'package:fisher_notes/common/left_drawer.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: LeftDrawer(),
      appBar: AppBar(
        title: Text('Dashboard'),        
        ),
      body: Text('Dashboard page'),
      );
  }
}