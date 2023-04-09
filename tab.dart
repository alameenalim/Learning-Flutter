import 'package:flutter/material.dart';
import 'package:tryflutter/List%20Custum.dart';
import 'package:tryflutter/LIstView4(seperated).dart';
import 'package:tryflutter/home.dart';
import 'package:tryflutter/listview%20with%20builder.dart';

void main() {
  runApp( MaterialApp(
    home: MyTab(),
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.teal),
  ));
}

class MyTab extends StatelessWidget {
  const MyTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //wrap scaffold with tab
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: const Text("WhatsApp"),
              actions: [
                const Icon(Icons.search),
                PopupMenuButton(itemBuilder: (context) {
                  return [
                    const PopupMenuItem(child: Text("Setting")),
                    const PopupMenuItem(child: Text("NewGroup")),
                    const PopupMenuItem(child: Text("Broadcast")),
                    const PopupMenuItem(child: Text("Linked Devices"))
                  ];
                }),
              ],
              bottom: TabBar(
                  labelPadding: EdgeInsets.zero,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width * .15,
                        child: const Tab(icon: Icon(Icons.people))),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .3,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * .3,
                        child: const Tab(
                          text: "Chat",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .3,
                      child: const Tab(
                        text: "Status",
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .3,
                      child: const Tab(
                        text: "Call",
                      ),
                    ),
                  ]),
            ),
            body: const TabBarView(children: [
              Center(
                child: Text("COMMUNITY"),
              ),
              Center(
                child: Text("CHATS"),
              ),
              Center(
                child: Text("STATUS"),
              ),
              Center(
                child: Text("CALLS"),
              ),

              /// List_Separator(), just call contractor which class we need in order
              ///List_Builder(),
              ///Homescreen(),
              ///Listview_Custom()
            ])));
  }
}
