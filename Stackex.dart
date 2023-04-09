import 'package:flutter/material.dart';

void main(){
  ///main is the entrypoint of appliction
  runApp(const MaterialApp(home: Stack_Ex(),));
  ///connect ui to
}

///one above another
///ie above card text title
///it is multichild widget
class Stack_Ex extends StatelessWidget {
  const Stack_Ex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Example"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              color: Colors.green,height: 500,width: 500,
            ),
            Positioned(
              left: 20,top: 30,
              child: Container(
                color: Colors.red,height: 400,width: 400,
              ),
            ),
            Positioned(
              left: 40,top: 50,
              child: Container(
                color: Colors.yellow,height: 200,width: 200,
              ),
            ),
            Positioned(
              left: 300,top: 300,
              child: Container(
                color: Colors.blue,height: 150,width: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
