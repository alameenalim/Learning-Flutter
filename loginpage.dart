import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

///to create login page we need scaffold
///navbar
///text-field eg username password
///button for next page eg login
///text button eg signup
void main() {
  /// we can add whole theme here
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      /// make anonymous fn to lambda function
      theme: ThemeData(primarySwatch: Colors.green),
      useInheritedMediaQuery: true,
      home: const loginpage(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class loginpage extends StatelessWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: SingleChildScrollView(
        //to prevent overflow
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image.network(
            // "https://cdn4.iconfinder.com/data/icons/linecon/512/photo-512.png"),
            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 40),
              child: Image.asset(
                "assets/icons/login icon (2).png",
                width: 100,
                height: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  helperText: "username must be an email",
                    hintText: "username",
                    labelText: "username",
                    prefixIcon: const Icon(Icons.account_box_sharp),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(obscureText: true,
                obscuringCharacter: "!",
                decoration: InputDecoration(
                  helperText: "password must need 6 characters",
                    hintText: "password",
                    labelText: "password",
                    prefixIcon: const Icon(Icons.password_sharp),
                    suffixIcon: const Icon(Icons.visibility_off),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Not a user? SignUp!",
                  style: TextStyle(fontSize: 15),
                ))
          ],
        ),
      ),
    );
    //we create ui without scaffold
    //directly type container column etc
    //but we didn't get appbar bottom-sheet
    //which featers of scaffold
  }
}
