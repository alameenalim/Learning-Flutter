import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(20, (index){ return
            Card(
              child: Column(
                children: [
                  Image.asset("assets/images/grapepng.png"),
                  const Center(child: Text("Grape"),)
                ],
              ),
            );
          }),
        ));
  }
}
