import 'package:flutter/material.dart';
import 'package:flutter_food/pages/food/Food_detail.dart';
import 'package:flutter_food/pages/home/home_page.dart';
import 'package:flutter_food/pages/login/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue ,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
          headline6: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ),
      //home: LoginPage(),
      routes: {
        LoginPage.routeName: (context) => const LoginPage(),
        HomePage.routeName: (context) => const HomePage(),
        '/FoodDetail': (context) => const FoodDetail(),
      },
      initialRoute: LoginPage.routeName,
    );
  }
}
