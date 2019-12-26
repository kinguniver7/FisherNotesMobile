import 'package:fisher_notes/pages/dashboard_page.dart';
import 'package:fisher_notes/pages/store_room_page.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => DashboardPage(),
  "/StoreRoom": (BuildContext context) => StoreRoomPage(),
};