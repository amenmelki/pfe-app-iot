import 'package:flutter/material.dart';
import 'package:pfe_project/login.dart';
import 'package:pfe_project/regsiter.dart';
import 'package:pfe_project/home.dart';
import 'Dashboard/dashboard_iot.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'dashboard',
    routes: {
      'home': (context) => const MyHome(),
      'login': (context) => const MyLogin(),
      'register': (context) => const MyRegister(),
      'dashboard': (context) => const Dashboard(),
    },
  ));
}
