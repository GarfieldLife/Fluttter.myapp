import 'package:flutter/material.dart';
import 'package:myapp/pages/TabBarController.dart';
import 'package:myapp/user/RegisterThird.dart';
import '../pages/Form.dart';
import '../pages/tabs/Search.dart';
import '../pages/Tabs1.dart';
import '../user/Login.dart';
import '../user/RegisterFirst.dart';
import '../user/RegisterSecond.dart';
import '../user/RegisterThird.dart';
import '../pages/AppBarDemo.dart';
import '../pages/TabBarController.dart';
import '../pages/User.dart';

final routes={
  '/':(content)=>Tabs(),
  '/form':(content,{arguments})=>FormPage(),
  '/search':(content,{arguments})=>SearchPage(arguments:arguments),
  '/login':(content,{argumenyts})=>LoginPage(),
  '/registerFirst':(content,{argumenyts})=>RegisterFirstPage(),
  '/registerSecond':(content,{argumenyts})=>RegisterSecondPage(),
  '/registerThird':(content,{argumenyts})=>RegisterThirdPage(),
  '/appBarDemo':(content,{argumenyts})=>AppBarDempPage(),
  '/tabBarController':(content,{argumenyts})=>TabBarControllerPage(),
  '/user':(cotent)=>UserPage(),
};

//固定写法
var onGenerateRoute=(RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    }else{
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context));
      return route;
    }
  }
};