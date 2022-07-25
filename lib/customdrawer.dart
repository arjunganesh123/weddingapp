import 'package:flutter/material.dart';
import 'package:wedding_app/HomePage.dart';
import 'package:wedding_app/Login_register.dart';
import 'package:wedding_app/PastBookings.dart';
import 'package:wedding_app/aboutus.dart';
import 'package:wedding_app/customerpolicy.dart';
import 'package:wedding_app/feedback.dart';
import 'package:wedding_app/marketingpolicy.dart';
import 'package:wedding_app/privacypolicy.dart';
import 'package:wedding_app/termsandcondition.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.85,
      child: Drawer(
        width: MediaQuery.of(context).size.width*0.83,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topRight: Radius.circular(50.0),bottomRight: Radius.circular(50.0),),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(top: 40,left: 15,bottom: 5),
                child: Text('Hi, USER',style: TextStyle(color: Color.fromRGBO(135, 56, 182, 1),fontSize: 20,fontWeight: FontWeight.bold,fontFamily: "Poppins"),)),
            Padding(
              padding: EdgeInsets.only(left: 15,bottom: 30),
              child: Container(
                width: MediaQuery.of(context).size.width*0.6,
                height: 1,
                color: Colors.black38,
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, HomePage.id);
              },
              horizontalTitleGap: 8,
              minVerticalPadding: 0,
              minLeadingWidth: 0,
              dense: true,
              visualDensity: VisualDensity(horizontal: 0,vertical: -4),
              title: Text("HOME",style: TextStyle(color: Color.fromRGBO(135, 56, 182, 1),fontSize: 18,fontWeight: FontWeight.w500,fontFamily: "Poppins"),),
              leading: Image.asset('images/Home.png',color: Color.fromRGBO(135, 56, 182, 1),),
            ),
            SizedBox(height: 10,),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, PastBookings.id);
              },
              horizontalTitleGap: 5,
              minVerticalPadding: 0,
              minLeadingWidth: 0,
              dense: true,
              visualDensity: VisualDensity(horizontal: 0,vertical: -4),
              title: Text("PAST BOOKINGS",style: TextStyle(color: Color.fromRGBO(135, 56, 182, 1),fontSize: 18,fontWeight: FontWeight.w500,fontFamily: "Poppins"),),
              leading: Image.asset('images/righttik.png'),
            ),
            SizedBox(height: 10,),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, Feedbackk.id);
              },
              horizontalTitleGap: 15,
              minVerticalPadding: 0,
              minLeadingWidth: 0,
              dense: true,
              visualDensity: VisualDensity(horizontal: 0,vertical: -4),
              title: Text("Feedback",style: TextStyle(color: Color.fromRGBO(135, 56, 182, 1),fontSize: 18,fontWeight: FontWeight.w500,fontFamily: "Poppins"),),
              leading: Image.asset('images/feedback.png'),
            ),
            SizedBox(height: 10,),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, Aboutus.id);
              },
              horizontalTitleGap: 13,
              minVerticalPadding: 0,
              minLeadingWidth: 0,
              dense: true,
              visualDensity: VisualDensity(horizontal: 0,vertical: -4),
              title: Text("ABOUT US",style: TextStyle(color: Color.fromRGBO(135, 56, 182, 1),fontSize: 18,fontWeight: FontWeight.w500,fontFamily: "Poppins"),),
              leading: Image.asset('images/twppeople.png'),
            ),
            SizedBox(height: 10,),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, MarketPolicy.id);
              },
              horizontalTitleGap: 15,
              minVerticalPadding: 0,
              minLeadingWidth: 0,
              dense: true,
              visualDensity: VisualDensity(horizontal: 0,vertical: -4),
              title: Text("MARKETING FEE POLICY",style: TextStyle(color: Color.fromRGBO(135, 56, 182, 1),fontSize: 18,fontWeight: FontWeight.w500,fontFamily: "Poppins"),),
              leading: Image.asset('images/clippad.png'),
            ),
            SizedBox(height: 10,),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, CustomerPolicy.id);
              },
              horizontalTitleGap: 15,
              minVerticalPadding: 0,
              minLeadingWidth: 0,
              dense: true,
              visualDensity: VisualDensity(horizontal: 0,vertical: -4),
              title: Text("CUSTOMER REVIEW POLICY",style: TextStyle(color: Color.fromRGBO(135, 56, 182, 1),fontSize: 18,fontWeight: FontWeight.w500,fontFamily: "Poppins"),),
              leading: Image.asset('images/review.png'),
            ),
            SizedBox(height: 10,),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, Termsandcondition.id);
              },
              horizontalTitleGap: 15,
              minVerticalPadding: 0,
              minLeadingWidth: 0,
              dense: true,
              visualDensity: VisualDensity(horizontal: 0,vertical: -4),
              title: Text("TERMS & CONDITIONS",style: TextStyle(color: Color.fromRGBO(135, 56, 182, 1),fontSize: 18,fontWeight: FontWeight.w500,fontFamily: "Poppins"),),
              leading: Image.asset('images/traffic.png'),
            ),
            SizedBox(height: 10,),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, Privacypolicy.id);
              },
              horizontalTitleGap: 19,
              minVerticalPadding: 0,
              minLeadingWidth: 0,
              dense: true,
              visualDensity: VisualDensity(horizontal: 0,vertical: -4),
              title: Text("PRIVACY POLICY",style: TextStyle(color: Color.fromRGBO(135, 56, 182, 1),fontSize: 18,fontWeight: FontWeight.w500,fontFamily: "Poppins"),),
              leading: Image.asset('images/lock.png'),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.2,),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, LoginRegister.id);
              },
              horizontalTitleGap: 15,
              minVerticalPadding: 0,
              minLeadingWidth: 0,
              dense: true,
              visualDensity: VisualDensity(horizontal: 0,vertical: -4),
              title: Text("LOGOUT",style: TextStyle(color: Color.fromRGBO(135, 56, 182, 1),fontSize: 18,fontWeight: FontWeight.w500,fontFamily: "Poppins"),),
              leading: Image.asset('images/logouticon.png'),
            ),
          ],
        ),
      ),
    );
  }
}
