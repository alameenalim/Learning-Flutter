import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tryflutter/GridView2(builder).dart';
import 'package:tryflutter/ListView2(builder).dart';

void main() {
  runApp(MaterialApp(
    home: const MyHoMe(),
    //initialRoute: "/",
    routes: {
      "/": (context) => MyHoMe(),
      "gridpage": (context) => GridView2builder(),
      "list": (context) => List_Builder()
    },
  ));
}

class MyHoMe extends StatelessWidget {
  const MyHoMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("gridpage");
              },
              child: const Text("To GridView2")),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("list");
              },
              child: const Text("To List Page")),
        ],
      ),
    );
  }
}
