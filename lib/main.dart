import 'package:firstmobile/config/constant.dart';
import 'package:firstmobile/screen/dashboard.dart';
import 'package:firstmobile/screen/homepage.dart';
import 'package:firstmobile/index.dart';
import 'package:firstmobile/screen/login.dart';
import 'package:firstmobile/screen/register.dart';
import 'package:flutter/material.dart';

void main() {
  print('Hello World');
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KMUTNB',
      theme: ThemeData(primaryColor: pColor, secondaryHeaderColor: sColor),
      routes: {
        'login': (context) => Login(),
        'register': (context) => Register(),
        'dashboard':(context) => Dashboard(),
      },
      home: Index(),
    );
  }
}
