import 'package:flutter/material.dart';
import 'package:time_sheet/Screens/LoginScreens/logInScreen.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  // function to navigate to welcome screen
  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 1000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => (LoginPage())));
  }

// container holding splash loading screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 64, 89, 114),
        body: Center(
          child: Image.asset(
            width: 250,
            height: 250,
            fit: BoxFit.fitWidth,
            // change path to change splash screen image
            'assets/images/splashScreenImage.png',
          ),
        ));
  }
}
