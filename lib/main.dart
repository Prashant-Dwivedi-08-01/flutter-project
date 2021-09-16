import 'package:flutter/material.dart';
import 'package:swiggy/utils/routes.dart';
import 'package:swiggy/pages/login.dart';
import 'package:swiggy/pages/sign_up.dart';
// ignore_for_file: prefer_const_constructors

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Myroutes.loginRoute,
      routes: {
        '/': (context) => Login(),
        Myroutes.loginRoute: (context) => Login(),
        Myroutes.signUpRoute: (context) => SignUp(),
      },
    );
  }
}
