import 'package:flutter/material.dart';
import 'package:tryflutter/loginpage%20with%20validation.dart';
import 'package:tryflutter/loginpage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;//for checking password is visible
  var confirmpass;

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
                      confirmpass=password;
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
                              // we use set state
                              // to call set state the class must be stateful
                              // cause state change is only on stateful not stateless
                              setState(() {
                                if (showpass) { //here it is already set to true above
                                  showpass = false;
                                } else {
                                  showpass = true;
                                }
                              });
                            },
                            //here we ternary operator
                            icon: Icon(
                                showpass == true ? Icons.visibility_off : Icons
                                    .visibility)),
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
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (cpass){
                      if(cpass!=confirmpass){
                        return "password mismatch";
                      }else{
                        return null;
                      }
                    },
                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                        hintText: "confirm password",
                        labelText: "confirm password",
                        prefixIcon: const Icon(Icons.password_sharp),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100))),
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
                            MaterialPageRoute(
                                builder: (context) => LoginWithValidation()));
                      }
                    },
                    child: const Text(
                      "Signup",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}