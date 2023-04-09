import 'package:flutter/material.dart';

class BackPress extends StatelessWidget {
  const BackPress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<bool> showalert() async {
      return await showDialog(context: context, builder: (context) {
        return AlertDialog()
        )
      }
          return const WillPopScope(
          child: Scaffold(
          body: Center(
          child: Text("Press Back Button for Exit"),
      ),
      ),
      onWillPop: showalert);
      }
  }
