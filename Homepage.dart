import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  //const Homescreen({Key? key}) : super(key: key);

  //outside build functionality create list we need
  var name = [
    "apple",
    "Orange",
    "grape",
    "kiwi",
    "jackfruit",
  ];
  var image = [
    "assets/images/apple.png",
    "assets/images/orange png.png",
    "assets/images/grapepng.png",
    "assets/images/orange png.png",
    "assets/images/orange png.png",
  ];
  var price = [100, 200, 300, 400, 500];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //contact book
      appBar: AppBar(
        title: Text("My Shop"),
      ),

      ///here body is list for contact
      ///widget listvieclass
      body: ListView(
          //list has no rows come bottom by bottom
          ///list id index of values
          ///what needs to come in each index
          children: List.generate(
        5, //same globally declaired list index
        //but here 10 cards have same values
        (index) => Card(
          ///here first textfield wrapped with list tile and again wrapped with card
          child: ListTile(
            // there is bulit inpadding while using listtile
            title: Text(name[index]),
            subtitle: Text("\$ ${price[index]}"),
            //leading: Icon(Icons.apple),
            leading: Image.asset(image[index]),
            trailing: const Icon(Icons.shopping_cart),
          ),
        ),
      )

          ///direct values to the list
          ///one by one separate
          ///listtile wrapped with card or each alone one by one vertically
        /// one way of doing
          //[
          //   const Center(
          //     child: Text(
          //       "My Fruits",
          //       style: TextStyle(fontSize: 25),
          //     ),
          //   ),
          //   //listtile here we can add title, subtitles,icons leading and trailing
          //   Card(
          //     ///here first textfield wrapped with list tile and again wrapped with card
          //     child: ListTile(
          //       // there is bulit inpadding while using listtile
          //       title: const Text("Apple"),
          //       subtitle: const Text("\$ 6"),
          //       //leading: Icon(Icons.apple),
          //       leading: Image.asset("assets/images/apple.png"),
          //       trailing: const Icon(Icons.shopping_cart),
          //     ),
          //   ),
          //   const Card(
          //     child: ListTile(
          //       // there is bulit inpadding while using listtile
          //       title: Text("Apple"),
          //       subtitle: Text("\$ 111"),
          //       leading: Icon(Icons.apple),
          //       trailing: const Icon(Icons.shopping_cart),
          //     ),
          //   ), //white space box is appeared
          //   const Card(
          //     child: ListTile(
          //       title: Text("Orange"),
          //       subtitle: Text("\$ 7"),
          //       //wrap the leading image with circle avatar and make network image as background not child
          //       leading: CircleAvatar(
          //           //if we take image as child it will overlap above circle as a rectangle
          //           backgroundImage: NetworkImage(
          //               "https://images.unsplash.com/photo-1546548970-71785318a17b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")),
          //       trailing: Icon(Icons.shopping_cart),
          //     ),
          //   ),
          //   Text("Apple"),
          //   Text("Apple"),
          // ],
          ),
    );
  }
}
