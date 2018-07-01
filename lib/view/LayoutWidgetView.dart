import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutWidgetView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LayoutWidgetViewState();
  }
}

class LayoutWidgetViewState extends State<LayoutWidgetView> {
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
          children: <Widget>[
            new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Text('Column child No 1'),
                new Text('Column child No 2'),
                new Text('Column child No 3'),
                new Text('Column child No 4'),
                new Text('Column child No 5'),
                new Text('Column child No 6'),
              ],
            ),
            new Divider(
              color: const Color(0xFFEFEFEF),
              height: 1.0,
            ),
            new Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Text('Row child No 1'),
                new Text('Row child No 2'),
                new Text('Row child No 3'),
                new Text('Row child No 4'),
                new Text('Row child No 5'),
                new Text('Row child No 6'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void buttonClicked() {
    setState(() {
      isClicked = !isClicked;
    });
  }
}
