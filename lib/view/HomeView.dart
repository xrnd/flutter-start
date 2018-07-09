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
        body: new Container(
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new FlatButton.icon(
                  onPressed: () {
                    Application.router.navigateTo(context, stateRoute,
                        transition: TransitionType.nativeModal, replace: true);
                  },
                  icon: new Icon(Icons.add, color: Colors.white,),
                  color: Colors.blue,
                  label: new Text('State Widgets',
                    style: new TextStyle(color: Colors.white),),

                ),
                new FlatButton.icon(

                  onPressed: () {
                    Application.router.navigateTo(context, layoutRoute,
                        transition: TransitionType.nativeModal, replace: true);
                  },
                  icon: new Icon(Icons.add, color: Colors.white,),
                  color: Colors.blue,
                  label: new Text('Layout Widgets',
                    style: new TextStyle(color: Colors.white),),),
                new FlatButton.icon(

                  onPressed: () {
                    Application.router.navigateTo(context, futureRoute,
                        transition: TransitionType.nativeModal, replace: true);
                  },
                  icon: new Icon(Icons.add, color: Colors.white,),
                  color: Colors.blue,
                  label: new Text('Future Widgets',
                    style: new TextStyle(color: Colors.white),),),
              ],
            ),
          ),
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
