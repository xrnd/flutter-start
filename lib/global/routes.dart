import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_start/view/HomeView.dart';

final String homeRoute = '/home';

final String stateRoute = '/state';
final String asyncRoute = '/async';
final String layoutRoute = '/layout';
final String futureRoute = '/future';

class Routes {
  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
    });
  }
}
