import 'package:flutter/material.dart';

ThemeData appTheme(){
  return ThemeData(
    primaryColor: Color(0xff374220),
    primaryColorLight: Color(0xff626d48),
    primaryColorDark: Color(0xff141b00),    
  );
}

ThemeData darkTheme(BuildContext context){
  return ThemeData(
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
      );
}