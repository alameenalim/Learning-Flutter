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
        body: GridView.custom(

            ///for setting cross axis item
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            childrenDelegate:
                // SliverChildListDelegate([
                //   const Card(child: Center(child: Icon(Icons.icecream_sharp),),),
                //   const Card(child: Center(child: Icon(Icons.icecream_sharp),),),
                //   const Card(child: Center(child: Icon(Icons.icecream_sharp),),),
                //   const Card(child: Center(child: Icon(Icons.icecream_sharp),),),
                //   const Card(child: Center(child: Icon(Icons.icecream_sharp),),),
                // ])
                SliverChildBuilderDelegate((context, index) {
              return Card(
                child: Image.asset("assets/images/orange.jpg"),
              );
            }, childCount: 10)
            // SliverChildBuilderDelegate((ctx, index) {
            //   return const Card(
            //     child: Text("Sliverchildbuilderdeligate"),
            //   );
            // })
            ));
  }
}
