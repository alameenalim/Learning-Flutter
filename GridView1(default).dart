import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => const MaterialApp(
      home: GridViewDemo(),
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid 1"),
      ),
      body: GridView(
        gridDelegate:
            // const SliverGridDelegateWithFixedCrossAxisCount(
            //   crossAxisCount: 2,
            //   crossAxisSpacing: 20,
            //   mainAxisSpacing: 20,
            // ),
            const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          Card(
              child: Image.asset(
            "assets/images/apple.png",
            height: 50,
            width: 50,
          )),
          Image.asset("assets/images/grapepng.png"),
          Image.asset("assets/images/orange.jpg"),
          Image.asset("assets/images/orange.jpg"),
          Image.asset("assets/images/grapepng.png"),
          Image.asset("assets/images/apple.png"),
        ],
      ),
    );
  }
}
