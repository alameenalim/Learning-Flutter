import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ExpansionSlide1(),),);
}

class ExpansionSlide1 extends StatefulWidget {
  const ExpansionSlide1({Key? key}) : super(key: key);

  @override
  State<ExpansionSlide1> createState() => _ExpansionSlide1State();
}

class _ExpansionSlide1State extends State<ExpansionSlide1> {
  final GlobalKey<ExpansionTileCardState> card1 = GlobalKey();
  final GlobalKey<ExpansionTileCardState> card2 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("asdfghjkl"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: ExpansionTileCard(
              key: card1,
              title: const Text("Tap me"),
              leading: const CircleAvatar(
                child: Text("1"),
              ),
              children: const [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.indigo,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.indigo,
                  ),
                ), ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.amberAccent,
                  ),
                ), ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: ExpansionTileCard(
              key: card2,
              title: const Text("Tap me"),
              leading: const CircleAvatar(
                child: Text("2"),
              ),
              children: const [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.indigo,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.indigo,
                  ),
                ), ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.amberAccent,
                  ),
                ), ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
