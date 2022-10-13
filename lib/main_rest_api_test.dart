import 'package:flutter/material.dart';

import 'modules/rest_api_test/view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        expansionTileTheme: const ExpansionTileThemeData(
          childrenPadding: EdgeInsets.zero,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.yellow,
        ),
        textTheme: const TextTheme(
          headline3: TextStyle(
            fontSize: 35,
            color: Colors.black,
          ),
          headline5: TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
          headline4: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      home: const Homepage(),
    );
  }
}
