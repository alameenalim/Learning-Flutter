import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Drawerrr(),
  ));
}

class Drawerrr extends StatelessWidget {
  const Drawerrr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nav Drawer"),
      ),
      drawer:
          // Theme(
          //   data: Theme.of(context).copyWith(canvasColor: Colors.orange),
          //  child:
          Drawer(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.white,
            Colors.green,
          ])),
          child: ListView(
            children: const [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/orange.jpg"))),
                accountName: Text(
                  "Ameen",
                  style: TextStyle(color: Colors.green),
                ),
                accountEmail: Text(
                  "2mail.com",
                  style: TextStyle(color: Colors.green),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/orange.jpg"),
                ),
              ),
              ListTile(
                leading: Icon(Icons.icecream_sharp),
                title: Text("home"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
