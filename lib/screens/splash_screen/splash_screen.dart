import 'package:alisandeneme/constants.dart';
import 'package:alisandeneme/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = 'SplashScreen';
  @override
  Widget build (BuildContext context){

    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushNamedAndRemoveUntil(context, LoginScreen.routeName, (route) => false);

    });

    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("Alışan",style: Theme.of(context).textTheme.bodyText1!.copyWith(
              color: Colors.white,
              fontSize: 50.0,
              fontStyle: FontStyle.italic,
              letterSpacing: 1.0,
            )),
            Text("Group",style: GoogleFonts.pattaya(
              fontSize: 50.0,
              fontStyle: FontStyle.italic,
              color: white,
              letterSpacing: 1.0,
              fontWeight: FontWeight.w700
            )),
          ],),
          //Image.asset('assets/images/alisan_logo.png',height: 60.0,width: 60.0,)

        ]),
      ),


    );
  }
  
}