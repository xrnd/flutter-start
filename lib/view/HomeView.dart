import 'dart:async';

import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterstart/global/Application.dart';
import 'package:flutterstart/global/Themes.dart';
import 'package:flutterstart/global/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeViewState();
  }
}

class HomeViewState extends State<HomeView> {


  HomeViewState() {
    saveVegetablesInCart();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(primary: true, title: new Text('Flutter-Start')),
        body: new Column(
          children: <Widget>[
            new FlatButton(
                onPressed: () {
                  Application.router.navigateTo(context, stateRoute,
                      transition: TransitionType.nativeModal, replace: false);
                },
                child: new Text('State Widgets')),
            new FlatButton(
                onPressed: () {
                  Application.router.navigateTo(context, layoutRoute,
                      transition: TransitionType.nativeModal, replace: false);
                },
                child: new Text('Layout Widgets')),
            new FlatButton(
                onPressed: () {
                  Application.router.navigateTo(context, futureRoute,
                      transition: TransitionType.nativeModal, replace: false);
                },
                child: new Text('Future Widgets')),
          ],
        ),
      ),
      theme: defaultTargetPlatform == TargetPlatform.iOS
          ? Themes.kIOSTheme
          : Themes.kDefaultTheme,
    );
  }

  Future saveVegetablesInCart() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('Vegetables',
        'Brinjal,Tomatoes,Potatoes,French Bean,Capsicum,Bell pepper,Cucumber');
    preferences.setString('Fruits',
        'Bananas,Grapes,Water melon,Musk melon,Cherries,Black berries,Oranges');
    preferences.setString('Flowers',
        'Lilly,Rose,Sunflower,Aster,Lotus,Jasmine,Lavendar,Tulip,Orchid');
  }


}
