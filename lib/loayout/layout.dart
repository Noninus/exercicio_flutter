import 'package:aula_1/loayout/layout-2.dart';
import 'package:flutter/material.dart';

class LayoutExample extends StatelessWidget {
  TextStyle textStyle =
      new TextStyle(fontWeight: FontWeight.w600, fontSize: 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Row ",
                style: textStyle,
              ),
              Icon(Icons.ac_unit),
              Icon(Icons.ac_unit),
              Icon(Icons.ac_unit)
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Column ",
                style: textStyle,
              ),
              Icon(Icons.ac_unit),
              Icon(Icons.ac_unit),
              Icon(Icons.ac_unit)
            ],
          ),
          Stack(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.yellow,
                height: 80,
                width: 80,
              ),
              Container(
                color: Colors.red,
                height: 60,
                width: 60,
              ),
              Text(
                "Stack ",
                style: textStyle,
              ),
            ],
          ),
          new RaisedButton(
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.white,
            color: Colors.blue,
            onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Layout2()),
                ),
            child: new Text(
              "List e Grid",
              style: textStyle,
            ),
          ),
        ],
      ),
    );
  }
}
