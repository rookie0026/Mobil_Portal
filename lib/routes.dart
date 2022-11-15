import 'package:alisandeneme/screens/home_screen/home_screen.dart';
import 'package:alisandeneme/screens/it_screen/it_screen.dart';
import 'package:alisandeneme/screens/login_screen/login_screen.dart';
import 'package:alisandeneme/screens/splash_screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:alisandeneme/screens/home_screen/home_screen.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ITScreen.routeName:(context) => ITScreen(),
};
