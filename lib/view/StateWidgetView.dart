import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StateWidgetView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new StateWidgetViewState();
  }
}

class StateWidgetViewState extends State<StateWidgetView> {
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
          body: new Column(
            children: <Widget>[
              new Container(
                child: new Text('I am stateless widget !'),
                alignment: Alignment.center,
              ),
              new Container(
                child: new MaterialButton(
                  onPressed: () => buttonClicked(),
                  child: isClicked
                      ? new Text('You clicked me !')
                      : new Text('Click me !'),
                  elevation: 1.0,
                ),
                alignment: Alignment.center,
              ),
            ],
          )),
    );
  }

  void buttonClicked() {
    setState(() {
      isClicked = !isClicked;
    });
  }
}
