import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => const MaterialApp(
      home: AlertBox1(),
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
    ),
  ));
}


class AlertBox1 extends StatefulWidget {
  const AlertBox1({Key? key}) : super(key: key);

  @override
  State<AlertBox1> createState() => _AlertBox1State();
}

class _AlertBox1State extends State<AlertBox1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Exit!!!!"),
                      content: const Text("Do you want to exit"),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("Yes")),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("No")),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("Cancel")),
                      ],
                    );
                  });
            },
            child: const Text("Show Alert")),
      ),
    );
  }
}
