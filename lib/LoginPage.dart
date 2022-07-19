import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/Verification.dart';

class LoginPage extends StatefulWidget {
  static const String id='LoginPage';
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obsuretext=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Colors.transparent,
        child: const Icon(
          Icons.keyboard_arrow_left,
          color: Colors.black,
          size: 40,
        ),
      ),
      body:Stack(
        children: [
          Positioned(
            top: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset('images/Loginback.png',fit: BoxFit.fitHeight,),
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.white,
              elevation: 50,
              child: Container(
                width: MediaQuery.of(context).size.width*0.85,
                height: MediaQuery.of(context).size.height*0.6,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20,top: 20,right: 20),
                      child: TextField(
                        cursorColor: Colors.black,
                        cursorHeight: 20,
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value){

                        },
                        decoration: const InputDecoration(
                          labelText: 'Mobile no./Email',
                          labelStyle: TextStyle(color: Colors.black,fontSize: 20),
                          isDense: true,
                          contentPadding: EdgeInsets.only(bottom: 5),
                          hintText: 'Enter Mobile Number or Email',
                          hintStyle: TextStyle(color: Color.fromRGBO(79, 60, 90, 0.6),fontSize: 15),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color:Colors.black,width: 1),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width: 1),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20,right: 20,bottom: 20),
                      child: TextField(
                        cursorColor: Colors.black,
                        cursorHeight: 20,
                        obscureText: obsuretext,
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value){

                        },
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.black,fontSize: 20),
                          suffixIcon: Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Icon(Icons.remove_red_eye,color: Colors.black,size: 30,),
                          ),
                          isDense: true,
                          contentPadding: EdgeInsets.only(top: 25),
                          hintText: 'Enter Password',
                          hintStyle: TextStyle(color: Color.fromRGBO(79, 60, 90, 0.6),fontSize: 15),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color:Colors.black,width: 1),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width: 1),
                          ),
                        ),
                      ),
                    ),
                    Text('Forgot Password?',style: TextStyle(color: Colors.blue,fontSize: 15),),
                    Text('-or-'),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: (){},
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.4,
                        height: MediaQuery.of(context).size.height*0.06,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                          color: Color(0xFFC196DD),
                        ),
                        child: Center(child: Text('GET OTP',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
                      ),
                    ),
                    Text('OTP has been sent to your Phone no. +91 9875643234',style: TextStyle(color: Colors.black,fontSize: 10),),
                    Text('Enter OTP',style: TextStyle(color: Colors.black,fontSize: 20),),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: (){},
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.32,
                        height: MediaQuery.of(context).size.height*0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                          color: Color(0xFFC196DD),
                        ),
                        child: Center(child: Text('RESEND OTP',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 2,
            child: Text('VENDOR APP LOGIN',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),),
          Positioned(
            bottom: 2,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
              ),
              onPressed: (){
                Navigator.pushNamed(context, Verification.id);
              },
              child: Container(
                width: MediaQuery.of(context).size.width*0.6,
                height: MediaQuery.of(context).size.height*0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xFF20072E),
                ),
                child: Center(child: Text('LOGIN',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
