import 'package:flutter/material.dart';
import 'package:time_sheet/Screens/LoginScreens/logInScreen.dart';
import 'package:flutter/gestures.dart';
import 'package:time_sheet/Screens/signUpScreens/signUpScreen.dart';

class SignOn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<SignOn> {
  @override
  Widget build(BuildContext context) {
    // We are setting screen size to default as per the user mobile size
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          // We are resizing the bottom layer as many devices have buttons at the bottom
          resizeToAvoidBottomInset: true,
          // Main Body begins and we wrap all body in a Widget
          body: SingleChildScrollView(
            // We create children to the above widget
            child: Stack(
              children: <Widget>[
                // This displayes background image
                Center(
                  child: new Image.asset('assets/images/bg.png',
                      width: size.width, height: size.height, fit: BoxFit.fill),
                ),
                // Dispalying Logo
                Positioned(
                  top: size.height / 25.5,
                  left: size.width / 7,
                  right: size.width / 7,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(0),
                    // changes logo, make sure to change pubspec.yaml asset for the folders
                    child: Image.asset(
                      'assets/images/mobile_icon_logo_free.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                // we have added Google Signon button from flutter_signin_button package
                Positioned(
                  top: size.height / 2.6,
                  left: size.width / 11,
                  right: size.width / 11,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 41,
                        width: 500,
                        padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(22.0), // radius
                          ),
                          color: Colors.white,
                        ),
                        child: RaisedButton.icon(
                          onPressed: () {},
                          color: Colors.white,
                          icon: Icon(
                            Icons.g_translate,
                            color: Colors.blue,
                          ),
                          label: Text(
                            "Sign In With Google",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),

                      // Apple
                      Container(
                        height: 41,
                        width: 500,
                        padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(22.0), // radius
                          ),
                          color: Colors.white,
                        ),
                        child: RaisedButton.icon(
                          onPressed: () {},
                          color: Colors.white,
                          icon: Icon(
                            Icons.apple,
                            color: Colors.blue,
                          ),
                          label: Text(
                            "Sign In With Apple",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),

                      // FB
                      Container(
                        height: 41,
                        width: 500,
                        padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(22.0), // radius
                          ),
                          color: Colors.white,
                        ),
                        child: RaisedButton.icon(
                          onPressed: () {},
                          color: Colors.white,
                          icon: Icon(
                            Icons.facebook,
                            color: Colors.blue,
                          ),
                          label: Text(
                            "Sign In With FaceBook",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),

                      //   Email
                      SizedBox(height: 15),

                      // Emial
                      Container(
                        height: 41,
                        width: 500,
                        padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(22.0), // radius
                          ),
                          color: Colors.white,
                        ),
                        child: RaisedButton.icon(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return LoginPage();
                                },
                              ),
                            );
                          },
                          color: Colors.white,
                          icon: Icon(
                            Icons.pages,
                            color: Colors.blue,
                          ),
                          label: Text(
                            "Sign In With Email or Phone",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),

                      SizedBox(height: 25),

                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Colors.white,
                                thickness: 1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('OR',
                                  style: TextStyle(color: Colors.white)),
                            ),
                            Expanded(
                              child: Divider(
                                color: Colors.white,
                                thickness: 1,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 45),

                      RichText(
                        text: TextSpan(
                          text: "Don't have an account? ",
                          style: TextStyle(color: Colors.white),
                          children: <TextSpan>[
                            TextSpan(
                                text: ' Register now!!',
                                style: TextStyle(color: Colors.green),
                                recognizer: new TapGestureRecognizer()
                                  ..onTap = () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) => signUpPage())))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
