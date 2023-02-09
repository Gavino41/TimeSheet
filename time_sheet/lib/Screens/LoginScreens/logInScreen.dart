import 'package:flutter/material.dart';
import 'package:time_sheet/Screens/signUpScreens/signUpProviderScreen.dart';
import 'package:flutter/gestures.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new LoginInState();
}

class LoginInState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void login() async {
    print('in Login User name ${nameController.text}');
    print('in Login Password ${passwordController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // setting background color for whole page
        backgroundColor: Color(0xFF18191A),
        body: Padding(
            padding: EdgeInsets.all(0),
            child: ListView(
              children: <Widget>[
                // this container is for the logo and color of background for logo
                Container(
                  color: Color(0xFF0F91F3),
                  height: 200.0,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(0),
                  // changes logo, make sure to change pubspec.yaml asset for the folders
                  child: Image.asset(
                    'assets/images/splashScreenImage.png',
                    fit: BoxFit.fill,
                  ),
                ),
                // container for user name text box
                Container(
                  padding:
                      EdgeInsets.only(top: 100, left: 10, right: 10, bottom: 5),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                // container for passowrd textbox
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                // moves screen to forgot password screen
                FlatButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  textColor: Colors.blue,
                  child: Text('Forgot Password'),
                ),
                // container for login button
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Color(0xFF0F91F3),
                      child: Text('Login'),
                      onPressed: () {
                        // print(nameController.text);
                        // print(passwordController.text);
                        login();
                      },
                    )),
                // container for sign up screen
                Container(
                    child: Row(
                  children: <Widget>[
                    Text(
                      'Does not have account?',
                      style: TextStyle(color: Colors.white),
                    ),
                    FlatButton(
                      textColor: Color(0xFF0F91F3),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        //signup screen
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return signInProviderPage();
                            },
                          ),
                        );
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ))
              ],
            )));
  }
}
