import 'package:fisher_notes/common/constants.dart';
import 'package:fisher_notes/pages/dashboard_page.dart';
import 'package:fisher_notes/pages/store_room/add_or_edit_rod_page.dart';
import 'package:fisher_notes/pages/store_room/thing_details_page.dart';
import 'package:fisher_notes/pages/store_room_page.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  Constants.ROOUTE_NAME_TO_INIT_PAGE : (BuildContext context) => DashboardPage(),
  
  Constants.ROOUTE_NAME_TO_STORE_ROOM_PAGE: (BuildContext context) => StoreRoomPage(),
  Constants.ROOUTE_NAME_TO_THING_DETAIL_PAGE: (BuildContext context) => ThingDetailsPage(),  
  Constants.ROOUTE_NAME_TO_ADD_OR_EDIT_ROD_PAGE: (BuildContext context) => AddOrEditRodPage(),
};