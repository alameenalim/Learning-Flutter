import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: List_Builder(), useInheritedMediaQuery: true,));
}

class List_Builder extends StatelessWidget {
  //List_Builder({Key? key}) : super(key: key);
  var name = ["apple", "orange", "grapes", "kiwi", "jackfruit"];
  var images = [
    "assets/images/apple.png",
    "assets/images/apple.png",
    "assets/images/apple.png",
    "assets/images/apple.png",
    "assets/images/apple.png"
  ];
  var price = [100, 200, 300, 400, 500];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Shop"),
      ),

      ///we lots of list from undefined number then we use lB
      body: ListView.builder(itemBuilder: (context, index) {
        ///we can use container instead of card
        return Card(
          child: ListTile(
            title: Text(name[index]),
            subtitle: Text("${price[index]}"),

            leading: Image(image: AssetImage(images[index]),),

          ),
        );
      },
        itemCount: name.length,
      ),
    );
  }
}
