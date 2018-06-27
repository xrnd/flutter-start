import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterstart/global/Themes.dart';

class HomeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeViewState();
  }
}

class HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(primary: true, title: new Text('Flutter-Start')),
        body: new Column(
          children: <Widget>[
            new FlatButton(onPressed: () {}, child: new Text('State Widgets')),
            new FlatButton(onPressed: () {}, child: new Text('Async Widgets')),
            new FlatButton(onPressed: () {}, child: new Text('Layout Widgets')),
            new FlatButton(onPressed: () {}, child: new Text('Future Widgets')),
          ],
        ),
      ),
      theme: defaultTargetPlatform == TargetPlatform.iOS
          ? Themes.kIOSTheme
          : Themes.kDefaultTheme,
    );
  }
}
