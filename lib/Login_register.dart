import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/LoginPage.dart';

class LoginRegister extends StatefulWidget {
  static const String id="LoginRegister";
  const LoginRegister({Key? key}) : super(key: key);

  @override
  State<LoginRegister> createState() => _LoginRegisterState();
}

class _LoginRegisterState extends State<LoginRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset('images/LoginReg.png',fit: BoxFit.fitHeight,),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 10,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Color.fromRGBO(255, 255, 255, 0.2),
              elevation: 50,
              child: Container(
                width: MediaQuery.of(context).size.width*0.92,
                 height: MediaQuery.of(context).size.height*0.25,
                   child: Column(
                         children: [
                               Padding(
                                 padding: EdgeInsets.only(top: 20,bottom: 20),
                                 child: ElevatedButton(
                                   style: ElevatedButton.styleFrom(
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(20.0),
                                     ),
                                     minimumSize: Size.zero,
                                     padding: EdgeInsets.zero,
                                    ),
                                     onPressed: () {
                                     Navigator.pushNamed(context, LoginPage.id);
                                     },
                                       child: Container(
                                         width: MediaQuery.of(context).size.width*0.6,
                                         height: MediaQuery.of(context).size.height*0.08,
                                         decoration: BoxDecoration(
                                           color: Color(0xFF4F3C5A),
                                           borderRadius: BorderRadius.circular(20.0),
                                         ),
                                            child: Center(child: Text('LOGIN',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                                            ),
                                 ),
                               ),
                               ElevatedButton(
                                 style: ElevatedButton.styleFrom(
                                   shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(20.0),
                                   ),
                                   minimumSize: Size.zero,
                                   padding: EdgeInsets.zero,
                                 ),
                                    onPressed: (){},
                                      child: Container(
                                        width: MediaQuery.of(context).size.width*0.6,
                                        height: MediaQuery.of(context).size.height*0.08,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20.0),
                                          color: Colors.white,
                                        ),
                                        child: Center(child: Text('REGISTER',style: TextStyle(color: Color.fromRGBO(79, 60, 90, 1),fontSize: 20,fontWeight: FontWeight.bold),)),
                                        ),
                               ),
                           ],
                   ),
               ),
            ),
          ),
        ],
      ),
    );
  }
}
