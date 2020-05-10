import 'package:delivery/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const backGroundColor = const Color(0xff61d4b3);
const buttonColor = const Color(0xfffb8d62);

class LandingPage extends StatefulWidget {
  LandingPage({Key key}) : super(key: key);
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: backGroundColor,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset("images/bike.svg"),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Get\nThe Fastest\nDelivery", style: TextStyle(color: Colors.white, fontSize: 40),),
                    SizedBox(height: 30,),
                    Text(
                      "Order food and get delivery in fastest time in town.",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(height: 30,),
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: buttonColor)
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, HomePage.routeName);
                        },
                        color: buttonColor,
                        textColor: Colors.white,
                        child: Text("Get Started Now!",
                            style: TextStyle(fontSize: 20),),
                      ),
                    )
                  ],
                ),
              ),
            ],
        ),
      ),
    );
  }
}