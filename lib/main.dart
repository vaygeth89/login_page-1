import 'package:flutter/material.dart';
import 'package:landing_page1/landing_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const Color primaryColor = Color(0xff222428);
  static const Color primaryColorDark = Color(0xff1B1D1F);
  static const Color accentColor = Color(0xff4B4582);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: primaryColor,
          primaryColorDark: primaryColorDark,
          accentColor: accentColor,
          scaffoldBackgroundColor: primaryColor,fontFamily: 'Tajawal'),
      home: Directionality(
          textDirection: TextDirection.rtl, child: LandingPage()),
    );
  }
}
