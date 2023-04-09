import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProfileUiStackScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class ProfileUiStackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.black,
        title: const Text('Stack Task'),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.more_vert),
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/grapepng.png',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Positioned(
              top: 140,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.message,
                        size: 30,
                        color: Colors.white,
                      )),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 60,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                          'assets/images/orange.jpg'),
                      radius: 50,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("tapped");
                    },
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.lightBlue,
                      child: Icon(
                        Icons.add,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )),
          Positioned(
            child: Container(height: 330),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              children: [
                Text(
                  'David Beckham',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.grey.shade700),
                ),
                const Text(
                  'model/ super star',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.blue),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}