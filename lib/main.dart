import 'package:fisher_notes/providers/common_provider.dart';
import 'package:fisher_notes/routes.dart';
import 'package:fisher_notes/services/init_app_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
      title: 'Flutter Demo',
      themeMode: themeMode != null ? themeMode: ThemeMode.system,
      theme: ThemeData(       
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        cardColor: Colors.grey.shade900,
        dividerColor: Colors.white24,
        brightness: Brightness.dark,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        accentColor: Colors.lightBlueAccent,
        colorScheme: Theme.of(context).colorScheme.copyWith(
              background: Colors.black,
              surface: Colors.lightBlue.shade900,
              onSurface: Colors.lightBlue.shade100,
              secondary: Colors.lightBlue.shade800,
            ),
      ),
      initialRoute: '/',
      routes: routes,
    );
  }
}
