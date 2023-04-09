import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    home: GridView2builder(),
  ));
}

class GridView2builder extends StatelessWidget {
  const GridView2builder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid 1"),
      ),
      body: GridView.builder(
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          itemBuilder: (ctx, index) {
            return Card(
              color: Colors.green,
              child: Center(
                  child: Text(
                "Grid $index",
                style: GoogleFonts.aBeeZee(
                  fontSize: 30,
                ),
              )),
            );
          }),
    );
  }
}
