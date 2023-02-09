import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:time_sheet/Screens/signUpScreens/signUpProviderScreen.dart';

class signUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _signUpState();
}

class _signUpState extends State<signUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isChecked = true;

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
              padding:
                  EdgeInsets.only(top: 150, left: 10, right: 10, bottom: 5),
              child: Text(
                'Create your account',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
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
                  labelText: 'Email',
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

            SizedBox(height: 3),

            Container(
              padding: EdgeInsets.fromLTRB(145, 20, 10, 0),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Remember Me!',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center),
                  Checkbox(
                    activeColor: Colors.white,
                    checkColor: Colors.white,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                ],
              ),
            ),

            // container for login button
            Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Color(0xFF0F91F3),
                  child: Text('Sign Up'),
                  onPressed: () {
                    // signInProviderPage
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return signInProviderPage();
                        },
                      ),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
