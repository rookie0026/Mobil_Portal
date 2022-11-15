import 'package:alisandeneme/constants.dart';
import 'package:alisandeneme/routes.dart';
import 'package:alisandeneme/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alisan Group',
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: primary,
          primaryColor: primary,
          textTheme:
              GoogleFonts.sourceSansProTextTheme(Theme.of(context).textTheme)
                  .apply()
                  .copyWith(
                    bodyText1: TextStyle(
                        color: textPrimaryColor,
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold),
                    subtitle1: TextStyle(
                        color: textPrimaryColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w300),
                    subtitle2: TextStyle(
                        color: textPrimaryColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w300),    
                  ),

          //butun uygulamada kullanacağız
          inputDecorationTheme: InputDecorationTheme(
            //formfield için etiket stili
            labelStyle: TextStyle(
              fontSize: 15.0,
              color: chatBackground,
              height: 0.5,
            ),
            hintStyle: TextStyle(
              fontSize: 16.0,
              color: textPrimaryColor,
              height: 0.5,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: textPrimaryColor,
                width: 0.7,
              ),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: textPrimaryColor,
              ),
            ),
            disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: textPrimaryColor,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: primaryDark,
              ),
            ),
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: dislikeColor,
                width: 1.2,
              ),
            ),
            focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: dislikeColor,
                width: 1.2,
              ),
            ),
          )),
      /*home: Scaffold(
          body: Center(
        child: Text(
          "Merhaba\nHoşgeldiniz",
          textAlign: TextAlign.center,
        ),
      )),*/
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
