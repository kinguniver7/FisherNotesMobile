import 'package:flutter/material.dart';

class ThingDetailsPage extends StatefulWidget {
  @override
  _ThingDetailsPageState createState() => _ThingDetailsPageState();
}

class _ThingDetailsPageState extends State<ThingDetailsPage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Container(
        child: Text("Page"),
      ),
    );
  }
}