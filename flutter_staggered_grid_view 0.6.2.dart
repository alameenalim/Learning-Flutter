import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tryflutter/Custom%20Widget.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            home: flutter_staggered_grid_view(),
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
          )));
}

class flutter_staggered_grid_view extends StatelessWidget {
  const flutter_staggered_grid_view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 3,
                mainAxisCellCount: 2,
                child: CustomWidget(
                  title: const Text("Hello"),
                  onpress: () {},
                  icon: const Icon(Icons.account_box),
                )),
            const StaggeredGridTile.count(
                crossAxisCellCount: 3,
                mainAxisCellCount: 2,
                child: Card(
                  color: Colors.lightGreen,
                )),
            const StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: Card(
                  color: Colors.pink,
                )),
            const StaggeredGridTile.count(
                crossAxisCellCount: 3,
                mainAxisCellCount: 2,
                child: Card(
                  color: Colors.blueGrey,
                )),
            const StaggeredGridTile.count(
                crossAxisCellCount: 3,
                mainAxisCellCount: 2,
                child: Card(
                  color: Colors.blue,
                )),
            const StaggeredGridTile.count(
                crossAxisCellCount: 3,
                mainAxisCellCount: 2,
                child: Card(
                  color: Colors.orangeAccent,
                )),
          ],
        ),
      ),
    ));
  }
}
