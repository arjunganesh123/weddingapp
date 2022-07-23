import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/customdrawer.dart';

class Feedbackk extends StatefulWidget {
  static const String id="Feedback";
  const Feedbackk({Key? key}) : super(key: key);

  @override
  State<Feedbackk> createState() => _FeedbackkState();
}

class _FeedbackkState extends State<Feedbackk> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomDrawer(),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset('images/Common.png',fit: BoxFit.fitHeight,),
            ),
          ),
          Positioned(
            top: 0,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Color.fromRGBO(221, 194, 235, 0.42),
              elevation: 50,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.11,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: IconButton(icon: Image.asset('images/Menu.png'), onPressed: () { scaffoldKey.currentState?.openDrawer(); },),),
                        Padding(
                          padding: EdgeInsets.only(left: 20,right: 90),
                          child: Text('FEEDBACK',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 20),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height*0.17,
            child: SizedBox(
              height: MediaQuery.of(context).size.height*0.83,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.only(left: 15,right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset('images/staricon.png'),
                        SizedBox(width: 15,),
                        Text('How would you rate this app?',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 22,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 25,bottom: 40),
                        child: Text('Your rating and feedback is very important to help us keep improving the app and our services',style: TextStyle(color: Colors.white,fontSize: 13.2,fontWeight: FontWeight.w700),)),
                    RatingBar(
                      initialRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: false,
                      itemCount: 5,
                      ratingWidget: RatingWidget(
                        full: Image.asset('images/fullstar.png'),
                        half: Image.asset('images/fullstar.png'),
                        empty: Image.asset('images/emptystar.png'),
                      ),
                      itemPadding: EdgeInsets.symmetric(horizontal: 13.0),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 50,bottom: 90),
                        child: Center(child: Image.asset('images/smile.png'),),),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          minimumSize: Size.zero,
                          padding: EdgeInsets.zero,
                        ),
                        onPressed: (){

                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.6,
                          height: MediaQuery.of(context).size.height*0.08,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Color(0xFF20072E),
                          ),
                          child: Center(child: Text('SUBMIT',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                        ),
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
