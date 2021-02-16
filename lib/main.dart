import 'SplashScreen.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
          scaffoldBackgroundColor: kWhiteColor,
          primaryColor: kPrimaryColor,
          textTheme: TextTheme(
            headline4:
                TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
            button: TextStyle(fontWeight: FontWeight.bold),
          )),
      home: SplashScreen(),
    );
  }
}
