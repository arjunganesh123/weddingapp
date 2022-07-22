import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:wedding_app/Verification.dart';

class LoginPage extends StatefulWidget {
  static const String id = 'LoginPage';

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obsuretext = true;
  bool appear=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Colors.transparent,
        child: const Icon(
          Icons.keyboard_backspace_sharp,
          color: Colors.white,
          size: 35,
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'images/Loginback.png',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 20,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.white,
              elevation: 50,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.65,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 40, top: 30, right: 30, bottom: 10),
                      child: TextField(
                        enableSuggestions: false,
                        autocorrect: false,
                        cursorColor: Colors.black,
                        cursorHeight: 20,
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          labelText: 'Mobile no./Email',
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 20),
                          isDense: true,
                          contentPadding: EdgeInsets.only(bottom: 5),
                          hintText: 'Enter Mobile Number or Email',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(79, 60, 90, 0.6),
                              fontSize: 15),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                          border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, bottom: 2),
                      child: TextField(
                        enableSuggestions: false,
                        autocorrect: false,
                        cursorColor: Colors.black,
                        cursorHeight: 20,
                        obscureText: obsuretext,
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 20),
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: IconButton(
                              icon: Icon(
                                Icons.remove_red_eye,
                                color: Colors.black,
                                size: 30,
                              ),
                              onPressed: () {
                                setState(() {
                                  obsuretext=false;
                                });
                              },
                            ),
                          ),
                          isDense: true,
                          contentPadding: EdgeInsets.only(top: 25),
                          hintText: 'Enter Password',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(79, 60, 90, 0.6),
                              fontSize: 15),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                          border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            right: 30,
                            left: MediaQuery.of(context).size.width * 0.42,
                            bottom: 15),
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.blue, fontSize: 15),
                        )),
                    Center(
                      child: Text(
                        '-or-',
                        style:
                            TextStyle(color: Color(0xFFC196DD), fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            minimumSize: Size.zero,
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: () {
                            setState(() {
                              appear=true;
                            });
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: MediaQuery.of(context).size.height * 0.06,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.0),
                              color: Color(0xFFC196DD),
                            ),
                            child: Center(
                                child: Text(
                              'GET OTP',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: appear,
                      child: Center(
                          child: Text(
                        'OTP has been sent to your Phone no. +91 9875643234',
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      )),
                    ),
                    Visibility(
                      visible: appear,
                      child: Padding(
                          padding: EdgeInsets.only(top: 25, bottom: 10),
                          child: Center(
                              child: Text(
                            'Enter OTP',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ))),
                    ),
                    Visibility(
                      visible: appear,
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                          child: PinCodeTextField(
                            keyboardType: TextInputType.number,
                            pastedTextStyle: TextStyle(color: Colors.black),
                            blinkWhenObscuring: true,
                            appContext: context,
                            length: 4,
                            cursorWidth: 1.0,
                            pinTheme: PinTheme(
                                activeColor: Color(0xFFC196DD),
                                inactiveColor: const Color(0xFFC196DD),
                                borderWidth: 3.0),
                            cursorColor: Color(0xFFC196DD),
                            obscureText: true,
                            obscuringCharacter: '*',
                            onChanged: (String value) {},
                          )),
                    ),
                    Visibility(
                      visible: appear,
                      child: Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              minimumSize: Size.zero,
                              padding: EdgeInsets.zero,
                            ),
                            onPressed: () {},
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.32,
                              height: MediaQuery.of(context).size.height * 0.05,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.0),
                                color: Color(0xFFC196DD),
                              ),
                              child: Center(
                                  child: Text(
                                'RESEND OTP',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 45,
            right: 20,
            child: Text(
              'VENDOR APP LOGIN',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 70,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
              ),
              onPressed: () {
                Navigator.pushNamed(context, Verification.id);
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xFF20072E),
                ),
                child: Center(
                    child: Text(
                  'LOGIN',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
