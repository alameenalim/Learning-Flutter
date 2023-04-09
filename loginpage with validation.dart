import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'Registerpage.dart';
import 'Homepage.dart';

// void main() {
//   /// we can add whole theme here
//   runApp(DevicePreview(
//     builder: (BuildContext context) => MaterialApp(
//       /// make anonymous fn to lambda function
//       theme: ThemeData(primarySwatch: Colors.teal),
//       useInheritedMediaQuery: true,
//       home: LoginWithValidation(),
//       debugShowCheckedModeBanner: false,
//     ),
//   ));
// }

class LoginWithValidation extends StatefulWidget {
  //const LoginWithValidation({Key? key}) : super(key: key);

  ///stateful class have no build functionality
  ///immutable class ie, cant make changes
  ///initial state is specified in create state method
  ///which is then rebuilt make change ie, it become stateful
  @override
  State<LoginWithValidation> createState() => _LoginWithValidationState();
}

//underscore is private representation
class _LoginWithValidationState extends State<LoginWithValidation> {
  ///global key
  //it is use used to monitor the state of the form
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true; //for checking password is visible

  // we only monitoring form
  //here we monitor form field ie is our main body
  //we can use <ScaffoldState> for entire screen
  //object of globalkey
  ///it has to be created outside built functionality
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Validation"),
      ),
      body: SingleChildScrollView(

          ///here is form is called is for validation eg email and password check
          child: Form(
        ///we need add key optnl para here to monitor state change or validation
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image.network(
            // "https://cdn4.iconfinder.com/data/icons/linecon/512/photo-512.png"),
            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 40),
              child: Image.asset(
                "assets/icons/user icon.png",
                width: 100,
                height: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),

              ///here we use text form field
              ///have an additional property validator
              child: TextFormField(
                //here uname is what we type in textformfield
                //which is then validate
                validator: (uname) {
                  //1.! just null check
                  //2.not contains
                  if (uname!.isEmpty ||
                      !uname.contains("@") ||
                      !uname.contains(".")) {
                    return "Enter a valid username";
                  } else {
                    //else part return must be null
                    return null;
                  }
                }, //string returning function
                ///here an property validator
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
              child: TextFormField(
                validator: (password) {
                  if (password!.isEmpty || password.length < 6) {
                    return "Password invalid";
                  } else {
                    return null;
                  }
                },
                obscureText: showpass,
                obscuringCharacter: "*",
                decoration: InputDecoration(
//                    suffixIcon: const Icon(Icons.visibility_off),we cant add normal button
                    ///we use icon button instead
                    suffixIcon: IconButton(
                        onPressed: () {
                          //we use set state
                          //to call set state the class must be stateful
                          //cause state change is only on stateful not stateless
                          setState(() {
                            if (showpass) {
                              //here it is already set to true above
                              showpass = false;
                            } else {
                              showpass = true;
                            }
                          });
                        },
                        //here we ternary operator
                        icon: Icon(showpass == true
                            ? Icons.visibility_off
                            : Icons.visibility)),
                    helperText: "password must need 6 characters",
                    hintText: "password",
                    labelText: "password",
                    prefixIcon: const Icon(Icons.password_sharp),

                    ///here the eye become stateful
                    //suffixIcon: const Icon(Icons.visibility_off),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: ElevatedButton(
                onPressed: () {
                  //fetch current state of formkey validate via validator
                  final valid = formkey.currentState!.validate();
                  // if valid is true
                  if (valid) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homescreen()));
                  }
                },
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  //here we donot need to validate
                  //just go to registration page
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterPage()));

                  ///constructor of ongoing class
                },
                child: const Text(
                  "Not a user? SignUp!",
                  style: TextStyle(fontSize: 15),
                ))
          ],
        ),
      )),
    );
  }
}
