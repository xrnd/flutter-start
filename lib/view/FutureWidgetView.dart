import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterstart/view/SavedModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FutureWidgetView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new FutureWidgetViewState();
  }
}

class FutureWidgetViewState extends State<FutureWidgetView> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          primary: true,
          textTheme: new TextTheme(title: new TextStyle(color: Colors.white)),
          title: new Text('Flutter - Let us begin'),
        ),
        body: new Stack(
          children: <Widget>[],
        ),
      ),
    );
  }
}

class FutureDataSection extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FutureDataState();
  }
}

class FutureDataState extends State<FutureDataSection> {
  @override
  Widget build(BuildContext context) {
    return new FutureBuilder<SavedModel>(
        future: getDataFromSP(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            SavedModel model = snapshot.data;
            return new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Text('Vegetable Name: $model.vegetables'),
                new Text('Vegetable Name: $model.fruits'),
                new Text('Vegetable Name: $model.flowers'),
              ],
            );
          } else if (snapshot.hasError) {
            return new Text("${snapshot.error}");
          }
          return new CircularProgressIndicator();
        });
  }

  Future<SavedModel> getDataFromSP() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    SavedModel model = new SavedModel();

    model.vegetables = preferences.getString('Vegetables');
    model.fruits = preferences.getString('Fruits');
    model.flowers = preferences.getString('Flowers');

    return model;
  }
}
