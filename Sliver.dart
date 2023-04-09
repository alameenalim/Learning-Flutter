import 'package:flutter/material.dart';

class SliverEx extends StatelessWidget {
  const SliverEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          floating: true,
          pinned: true,
          title: const Text("Custom Appbar"),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.co2)),
              IconButton(onPressed: (){}, icon: Icon(Icons.co2)),
          ],
          bottom: AppBar(title: Container(
            height: 40,
            width: double.infinity,
            color: Colors.white,
            child: ,
          ),),
        )
      ],),
    );
  }
}
