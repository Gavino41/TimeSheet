import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';

import 'package:time_sheet/TextStyleWidets/singInTextStyle.dart';

class signInProviderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return signInProviderPageState();
  }
}

class signInProviderPageState extends State<signInProviderPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final userNameController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final phoneController = TextEditingController();
  final streetNameController = TextEditingController();
  final streetNumberController = TextEditingController();
  final unitController = TextEditingController();
  final cityController = TextEditingController();
  final provinceController = TextEditingController();
  final postalCodeController = TextEditingController();

  String _mainheading = "Fill Your Profile";
  String _FirstName = "First Name";
  String _LastName = "Last Name";
  String _userName = "User Name";
  String _Password = "Password";
  String _ConfirmPassword = "Confirm Password";
  String _EmailText = "Email";
  String _contactNumber = "Contact Number";
  String _StreetNumber = "Street Number";
  String _StreetName = "Street Name";
  String _Unit = "Unit";
  String _City = "City";
  String _provience = "provience";
  String _PostalCode = "Postal Code";
  String _PasswordText = "Password";
  String bottomtext = "You got the skills,we have the tool";
  String PRoviderText = "Become a service provider?";
  String _buttonText = "Sign Up";
  String _BottomTextNeedAccnt = "Need Account?";
  String _ButtonTextClickHere = "Click Here to Register";
  String _ButtonTextOR = "OR";
  String _ButtonTextLoginWith = "LogIn With";

// Functions

  void signUp() async {
    print('in sign up functin');
    List<Map<String, dynamic>> finalObject = [];
    finalObject = [
      {
        'email': "${emailController.text}",
        'password': '${passwordController.text}',
        'firstName': '${firstNameController.text}',
        'lastName': '${lastNameController.text}',
        'userName,': '${userNameController.text}',
        'phone': '${phoneController.text}',
        'address': {
          'streetName': '${streetNameController.text}',
          'streetNumber': '${streetNumberController.text}',
          'unit': '${unitController.text}',
          'city': '${cityController.text}',
          'province': '${provinceController.text}',
          'postalCode': '${postalCodeController.text}'
        },
        'otp_Code': '0000'
      }
    ];
    print(finalObject);

    var url = Uri.https('payvillapp.herokuapp.com', '/api/user/register');
    print(url);
//var response = await http.post(url, body: finalObject.join(""));
//print('Response status: ${response.statusCode}');
//print('Response body: ${response.body}');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        // hintColor: Colors.grey,
      ),
      home: Scaffold(
          backgroundColor: Colors.black,
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: 50, left: 20, right: 10),
              child: Column(
                children: [
                  SizedBox(
                    height: 2,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(_mainheading,
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'assets/images/splashScreenImage.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: firstNameController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            fillColor: Color(0xFF242526),
                            labelText: _FirstName,
                            filled: true,
                            labelStyle: TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Flexible(
                        child: TextFormField(
                          controller: lastNameController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: _LastName,
                            fillColor: Color(0xFF242526),
                            filled: true,
                            labelStyle: TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: _EmailText,
                      fillColor: Color(0xFF242526),
                      filled: true,
                      labelStyle: TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  TextFormField(
                    controller: userNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: _userName,
                      fillColor: Color(0xFF242526),
                      filled: true,
                      labelStyle: TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: _PasswordText,
                      fillColor: Color(0xFF242526),
                      filled: true,
                      labelStyle: TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  TextFormField(
                    controller: confirmPasswordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: _ConfirmPassword,
                      fillColor: Color(0xFF242526),
                      filled: true,
                      labelStyle: TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: _contactNumber,
                      fillColor: Color(0xFF242526),
                      filled: true,
                      labelStyle: TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: TextFormField(
                          controller: streetNameController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: _StreetName,
                            fillColor: Color(0xFF242526),
                            filled: true,
                            labelStyle: TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Flexible(
                        child: TextFormField(
                          controller: streetNumberController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: _StreetNumber,
                            fillColor: Color(0xFF242526),
                            filled: true,
                            labelStyle: TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: TextFormField(
                          controller: unitController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: _Unit,
                            fillColor: Color(0xFF242526),
                            filled: true,
                            labelStyle: TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Flexible(
                        child: TextFormField(
                          controller: cityController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: _City,
                            fillColor: Color(0xFF242526),
                            filled: true,
                            labelStyle: TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: TextFormField(
                          controller: provinceController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: _provience,
                            fillColor: Color(0xFF242526),
                            filled: true,
                            labelStyle: TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Flexible(
                        child: TextFormField(
                          controller: postalCodeController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: _PostalCode,
                            fillColor: Color(0xFF242526),
                            filled: true,
                            labelStyle: TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      PRoviderText,
                      style: ForgotPassStyle,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      bottomtext,
                      style: bottomText1,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: ButtonTheme(
                      minWidth: double.infinity,
                      height: 50,
                      child: RaisedButton(
                        color: Color(0xFF0F91F3),
                        onPressed: () {
                          signUp();
                        },
                        child: Text(
                          _buttonText,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.bold),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(40.0)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
