import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/Help.dart';

class HomePage extends StatefulWidget {
  static const String id="HomePage";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selpage=1;
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
                height: MediaQuery.of(context).size.height*0.16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Image.asset('images/Menu.png')),
                        Padding(
                          padding: EdgeInsets.only(left: 10,right: 90),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('MY BUSINESS',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 20),),
                              Text('365 days left',style: TextStyle(fontSize: 10,color: Color.fromRGBO(51, 0, 81, 1),),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: TextButton(
                              onPressed: (){
                                Navigator.pushNamed(context, Help.id);
                              },
                              child:Text('HELP',style: TextStyle(color: Colors.blue,fontSize: 20),)
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6,),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                              onPressed: (){
                              setState(() {
                                selpage=1;
                              });
                              },
                              child:Text('HOME',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 15,fontWeight: FontWeight.bold),)
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(),
                          child: TextButton(
                              onPressed: (){
                                setState(() {
                                  selpage=2;
                                });
                              },
                              child:Text('INSIGHTS',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 15,fontWeight: FontWeight.bold),)
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(),
                          child: TextButton(
                              onPressed: (){
                                setState(() {
                                  selpage=3;
                                });
                              },
                              child:Text('PAYMENTS',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 15,fontWeight: FontWeight.bold),)
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(),
                          child: TextButton(
                              onPressed: (){
                                setState(() {
                                  selpage=4;
                                });
                              },
                              child:Text('PLANS',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 15,fontWeight: FontWeight.bold),)
                          ),
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
            child: Selectwidget(selpage),
          ),
        ],
      ),
    );
  }
}
class Selectwidget extends StatefulWidget {
  int id=0;
  Selectwidget(int id){
    this.id=id;
  }

  @override
  State<Selectwidget> createState() => _SelectwidgetState();
}

class _SelectwidgetState extends State<Selectwidget> {
  Color c1=Color.fromRGBO(221, 194, 235, 0.42);
  Color c2=Color.fromRGBO(221, 194, 235, 0.42);
  Color c3=Color.fromRGBO(221, 194, 235, 0.42);
  @override
  Widget build(BuildContext context) {
    if(widget.id==1){
      return SizedBox(
        height: MediaQuery.of(context).size.height*0.83,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Color.fromRGBO(221, 194, 235, 0.42),
                elevation: 50,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width*0.92,
                  height: MediaQuery.of(context).size.height*0.5,
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          SizedBox(width: 10,),
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Color.fromRGBO(51, 0, 81, 1),
                            child: Image.asset('images/rocketicon.png'),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5,),
                              Text('Get Guaranted Business with\na paid subscription plan',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 18,fontWeight: FontWeight.w500),),
                              SizedBox(height: 10,),
                              Text('Choose a best plan suited to you',style: TextStyle(color: Colors.black,fontSize: 12),),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 15,bottom: 15),
                          child: Image.asset('images/Imageplan.png',fit: BoxFit.fitWidth,)),
                      Padding(
                          padding: EdgeInsets.only(left: 10,right: 10),
                          child: Text('Request for a plan and discuss specific details with your vendorApp account Manager.',style: const TextStyle(color: Colors.black,fontSize: 15),)),
                      Padding(
                        padding: EdgeInsets.only(top: 15,bottom: 15),
                        child: Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width*0.8,
                          color: Color.fromRGBO(51, 0, 81, 1),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20,right: 10),
                        child: Row(
                          children: [
                            Text('See All Plans',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontWeight: FontWeight.bold,fontSize: 18),),
                            SizedBox(width: MediaQuery.of(context).size.width*0.44,),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                color: Color.fromRGBO(221, 194, 235, 0.42),
                elevation: 50,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width*0.92,
                  height: MediaQuery.of(context).size.height*0.2,
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          SizedBox(width: 10,),
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Color.fromRGBO(51, 0, 81, 1),
                            child: Image.asset('images/photo.png'),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5,),
                              Text('You need to upload more\nPHOTOS',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 18,fontWeight: FontWeight.w500),),
                              SizedBox(height: 10,),
                              Text('you have no photos on your\nprofile',style: TextStyle(color: Colors.black,fontSize: 15),),
                            ],
                          ),
                        ],
                      ),
                      ElevatedButton(
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
                          width: MediaQuery.of(context).size.width*0.2,
                          height: MediaQuery.of(context).size.height*0.04,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Color.fromRGBO(51, 0, 81, 1),
                          ),
                          child: Center(child: Text('UPLOAD',style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                color: Color.fromRGBO(221, 194, 235, 0.42),
                elevation: 50,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width*0.92,
                  height: MediaQuery.of(context).size.height*0.2,
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          SizedBox(width: 10,),
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Color.fromRGBO(51, 0, 81, 1),
                            child: Image.asset('images/photo.png'),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5,),
                              Text('You need to upload more\nPHOTOS',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 18,fontWeight: FontWeight.w500),),
                              SizedBox(height: 10,),
                              Text('you have no photos on your\nprofile',style: TextStyle(color: Colors.black,fontSize: 12),),
                            ],
                          ),
                        ],
                      ),
                      ElevatedButton(
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
                          width: MediaQuery.of(context).size.width*0.2,
                          height: MediaQuery.of(context).size.height*0.04,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Color.fromRGBO(51, 0, 81, 1),
                          ),
                          child: Center(child: Text('UPLOAD',style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
    else if(widget.id==2){
      return SizedBox(
        height: MediaQuery.of(context).size.height*0.83,
        width: MediaQuery.of(context).size.width,
      );
    }
    else if(widget.id==3){
      return Padding(
        padding: EdgeInsets.only(left: 12),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Color.fromRGBO(221, 194, 235, 0.42),
          elevation: 50,
          child: SizedBox(
            width: MediaQuery.of(context).size.width*0.92,
            height: MediaQuery.of(context).size.height*0.7,
            child: Padding(
              padding: EdgeInsets.only(left: 25,top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Services Offered',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('Choose a service you offer ',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),),),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15,top: 10),
                    child: Container(
                      height: 20,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            onPressed: (){
                              setState(() {
                                c1=Color.fromRGBO(51, 0, 81, 1);
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size.zero,
                              padding: EdgeInsets.zero,
                              primary: Color.fromRGBO(221, 194, 235, 0.42),
                              shape: const CircleBorder(
                                side: BorderSide(color: Color.fromRGBO(51, 0, 81, 1),),
                              ),
                            ),
                            child:CircleAvatar(
                              radius: 9.0,
                              backgroundColor: Color.fromRGBO(221, 194, 235, 0.42),
                              child: CircleAvatar(
                                radius: 5,backgroundColor: c1,
                              ),
                            ),),
                          Text("Pre-Wedding Shoot",style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontWeight: FontWeight.w500,fontSize: 17,letterSpacing: 0.5),),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Container(
                      height: 20,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            onPressed: (){
                              setState(() {
                                c2=Color.fromRGBO(51, 0, 81, 1);
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size.zero,
                              padding: EdgeInsets.zero,
                              primary: Color.fromRGBO(221, 194, 235, 0.42),
                              shape: const CircleBorder(
                                side: BorderSide(color: Color.fromRGBO(51, 0, 81, 1),),
                              ),
                            ),
                            child:CircleAvatar(
                              radius: 9.0,
                              backgroundColor: Color.fromRGBO(221, 194, 235, 0.42),
                              child: CircleAvatar(
                                radius: 5,backgroundColor: c2,
                              ),
                            ),),
                          Text("Photo Album",style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontWeight: FontWeight.w500,fontSize: 17,letterSpacing: 0.5),),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 25),
                    child: Container(
                      height: 20,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            onPressed: (){
                              setState(() {
                                c3=Color.fromRGBO(51, 0, 81, 1);
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size.zero,
                              padding: EdgeInsets.zero,
                              primary: Color.fromRGBO(221, 194, 235, 0.42),
                              shape: const CircleBorder(
                                side: BorderSide(color: Color.fromRGBO(51, 0, 81, 1),),
                              ),
                            ),
                            child:CircleAvatar(
                              radius: 9.0,
                              backgroundColor: Color.fromRGBO(221, 194, 235, 0.42),
                              child: CircleAvatar(
                                radius: 5,backgroundColor: c3,
                              ),
                            ),),
                          Text("Cinematic Video",style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontWeight: FontWeight.w500,fontSize: 17,letterSpacing: 0.5),),
                        ],
                      ),
                    ),
                  ),
                  Text('Payment & Cancelation Policy',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 20,fontWeight: FontWeight.bold),),
                  Padding(
                    padding: EdgeInsets.only(
                         top: 30, right: 30, bottom: 15),
                    child: TextField(
                      enableSuggestions: false,
                      autocorrect: false,
                      cursorColor: Color.fromRGBO(51, 0, 81, 1),
                      cursorHeight: 20,
                      autofocus: true,
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.only(bottom: 5),
                        hintText: 'Advance for booking* (%)',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(51, 0, 81, 1),
                            fontSize: 15),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                          BorderSide(color: Color.fromRGBO(51, 0, 81, 0.6), width: 1),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                          BorderSide(color: Color.fromRGBO(51, 0, 81, 0.6), width: 1),
                        ),
                        border: UnderlineInputBorder(
                          borderSide:
                          BorderSide(color: Color.fromRGBO(51, 0, 81, 0.6), width: 1),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                         right: 30, bottom: 15),
                    child: TextField(
                      enableSuggestions: false,
                      autocorrect: false,
                      cursorColor: Color.fromRGBO(51, 0, 81, 1),
                      cursorHeight: 20,
                      autofocus: true,
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.only(bottom: 5),
                        hintText: 'Payment on event Date* (%)',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(51, 0, 81, 1),
                            fontSize: 15),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                          BorderSide(color: Color.fromRGBO(51, 0, 81, 0.6), width: 1),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                          BorderSide(color: Color.fromRGBO(51, 0, 81, 0.6), width: 1),
                        ),
                        border: UnderlineInputBorder(
                          borderSide:
                          BorderSide(color: Color.fromRGBO(51, 0, 81, 0.6), width: 1),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                         right: 30, bottom: 15),
                    child: TextField(
                      enableSuggestions: false,
                      autocorrect: false,
                      cursorColor: Color.fromRGBO(51, 0, 81, 1),
                      cursorHeight: 20,
                      autofocus: true,
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.only(bottom: 5),
                        hintText: 'Payment on Delivery* (%)',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(51, 0, 81, 1),
                            fontSize: 15),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                          BorderSide(color: Color.fromRGBO(51, 0, 81, 0.6), width: 1),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                          BorderSide(color: Color.fromRGBO(51, 0, 81, 0.6), width: 1),
                        ),
                        border: UnderlineInputBorder(
                          borderSide:
                          BorderSide(color: Color.fromRGBO(51, 0, 81, 0.6), width: 1),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: 30, bottom: 15),
                    child: TextField(
                      enableSuggestions: false,
                      autocorrect: false,
                      cursorColor: Color.fromRGBO(51, 0, 81, 1),
                      cursorHeight: 20,
                      autofocus: true,
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.only(bottom: 5),
                        hintText: 'Cancellation Policy',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(51, 0, 81, 1),
                            fontSize: 15),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                          BorderSide(color: Color.fromRGBO(51, 0, 81, 0.6), width: 1),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                          BorderSide(color: Color.fromRGBO(51, 0, 81, 0.6), width: 1),
                        ),
                        border: UnderlineInputBorder(
                          borderSide:
                          BorderSide(color: Color.fromRGBO(51, 0, 81, 0.6), width: 1),
                        ),
                      ),
                    ),
                  ),
                  Text('Price of the service choosen',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 20,fontWeight: FontWeight.bold),),
                  Padding(
                    padding: EdgeInsets.only(
                        top:10,right: 30, bottom: 15),
                    child: TextField(
                      enableSuggestions: false,
                      autocorrect: false,
                      cursorColor: Color.fromRGBO(51, 0, 81, 1),
                      cursorHeight: 20,
                      autofocus: true,
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.only(bottom: 5),
                        hintText: 'Enter Amount',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(51, 0, 81, 1),
                            fontSize: 15),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                          BorderSide(color: Color.fromRGBO(51, 0, 81, 0.6), width: 1),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                          BorderSide(color: Color.fromRGBO(51, 0, 81, 0.6), width: 1),
                        ),
                        border: UnderlineInputBorder(
                          borderSide:
                          BorderSide(color: Color.fromRGBO(51, 0, 81, 0.6), width: 1),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: () {

                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: MediaQuery.of(context).size.height * 0.06,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Color(0xFF20072E),
                        ),
                        child: Center(
                            child: Text(
                              'SAVE',
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
            ),
          ),
        ),
      );
    }
    else{
      return Padding(
        padding: EdgeInsets.only(left: 10),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Color.fromRGBO(221, 194, 235, 0.42),
          elevation: 50,
          child: SizedBox(
            width: MediaQuery.of(context).size.width*0.92,
            height: MediaQuery.of(context).size.height*0.7,
            child: Padding(
              padding: EdgeInsets.only(top: 20,left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Services Provided',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('Services you provide',style: TextStyle(color: Color.fromRGBO(51, 0, 81, 1),),),
                  Padding(
                    padding: EdgeInsets.only(top: 10,left: 5),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: MediaQuery.of(context).size.height * 0.07,
                      child: Stack(
                        children: [
                          Positioned(
                              top: 5,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                height: MediaQuery.of(context).size.height * 0.065,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white,),
                                child: Row(
                                  children: [
                                    SizedBox(width: 15,),
                                    Text(
                                      'Photo Album',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.25,),
                                    Text(
                                      'INR 2000/-',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ),
                          Positioned(
                            top: 0,
                              right: 10,
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: Color.fromRGBO(154, 85, 194, 1),
                                child: Image.asset('images/delete.png'),
                              ),),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10,left: 5),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: MediaQuery.of(context).size.height * 0.07,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 5,
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: MediaQuery.of(context).size.height * 0.065,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white,),
                              child: Row(
                                children: [
                                  SizedBox(width: 15,),
                                  Text(
                                    'Cinematic Vedio',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(width: MediaQuery.of(context).size.width*0.19,),
                                  Text(
                                    'INR 2000/-',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 10,
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Color.fromRGBO(154, 85, 194, 1),
                              child: Image.asset('images/delete.png'),
                            ),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
}