import 'package:flutter/material.dart';

class Layout2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout 2"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            height: (MediaQuery.of(context).size.height -
                    kTextTabBarHeight -
                    kTextTabBarHeight) *
                0.5,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text("Elemento " + index.toString()),
                );
              },
              itemCount: 20,
            ),
          ),
          Container(
              height: (MediaQuery.of(context).size.height -
                      kTextTabBarHeight -
                      kTextTabBarHeight) *
                  0.5,
              child: GridView.builder(
                itemBuilder: (context, position) {
                  return ListTile(
                    title: Text("Elemento " + position.toString()),
                  );
                },
                itemCount: 20,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
              ))
        ],
      ),
    );
  }
}
