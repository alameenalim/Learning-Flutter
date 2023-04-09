import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tryflutter/GridView3(count).dart';

void main() {
  runApp(const MaterialApp(
    home: GridView4Custom(),
  ));
}

class GridView4Custom extends StatelessWidget {
  const GridView4Custom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("GridView 3 Count Constructor"),
        ),
        body: GridView.extent(maxCrossAxisExtent: 120,children: const [
            Card(child: Center(child: Icon(Icons.icecream_sharp),),),
            Card(child: Center(child: Icon(Icons.icecream_sharp),),),
            Card(child: Center(child: Icon(Icons.icecream_sharp),),),
            Card(child: Center(child: Icon(Icons.icecream_sharp),),),
            Card(child: Center(child: Icon(Icons.icecream_sharp),),),
        ],)
        );
  }
}
