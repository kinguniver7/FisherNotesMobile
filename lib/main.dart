import 'package:fisher_notes/providers/common_provider.dart';
import 'package:fisher_notes/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'common/theme.dart';

void main() => runApp(
  ChangeNotifierProvider(
      create: (_) => CommonProvider(),
      child:MyApp()
  ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var themeMode = Provider.of<CommonProvider>(context).themeMode;
    return MaterialApp(
      title: 'FisherNotes',
      debugShowCheckedModeBanner: false,
      themeMode: themeMode != null ? themeMode: ThemeMode.system,
      theme: appTheme(),
      darkTheme: darkTheme(context),
      initialRoute: '/',
      routes: routes,
    );
  }
}
