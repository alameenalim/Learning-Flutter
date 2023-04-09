import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  /// we can add whole theme here
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),

      /// make anonymous fn to lambda function
      useInheritedMediaQuery: true,
      home: const BottomNavBar(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  //const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List screens = const [
    Text("Home"),
    Text("Favorite"),
    Text("People"),
    Text("Search"),
    Text("Login")
  ];
  int index = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation Bar"),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.teal,
            //type: BottomNavigationBarType.fixed,
            currentIndex: index,
            onTap: (tapindex) {
              setState(() {
                index = tapindex;
              });
            },
            selectedItemColor: Colors.lightGreenAccent,
            unselectedItemColor: Colors.white,
            items: const [
              BottomNavigationBarItem(
                ///label need to given either it will not work
                icon: Icon(Icons.home_filled),
                label: "Home",
                backgroundColor: Colors.blueGrey,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "Favorite",
                backgroundColor: Colors.pink,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people),
                label: "People",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.login),
                label: "Login",
              ),
            ]),
      ),
      body: Center(
        child: screens[index],
      ),
    );
  }
}
