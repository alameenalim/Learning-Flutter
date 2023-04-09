import 'package:flutter/material.dart';

class Listview_Custom extends StatelessWidget {
  var color = [800, 600, 400, 300, 200, 100];

  // const ({Key? key}) : super(key: key);
  ///custamised scroll v
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom listview"),
      ),
      // body: ListView.custom(childrenDelegate: SliverChildListDelegate([
      //   Icon(Icons.ice_skating_outlined),
      //   Icon(Icons.ice_skating_outlined),
      //   Icon(Icons.ice_skating_outlined),
      //   Icon(Icons.ice_skating_outlined),
      //   Icon(Icons.ice_skating_outlined),
      //   Icon(Icons.ice_skating_outlined),
      // ])
      // ),
      body: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate(
        (context, index) {
          return Card(
            color: Colors.lightGreen[color[index]],
        );
      },
          )),
    );
  }
}
