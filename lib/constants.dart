
import 'package:flutter/material.dart';


//colors
const Color primary = Color(0xffFF0000);
const Color primaryDark = Color(0xFFB80550);

const Color black = Color(0xFF000000);
const Color white = Color(0xFFFFFFFF);
const Color red = Colors.red;
const Color gray500 = Color(0xFF9E9E9E);
const Color likeColor = Color(0xFF00FFF0);
const Color dislikeColor = Color(0xFFFF0000);
const Color online = Color(0xFFBDFF00);
const Color offline = Color(0xFFFF0000);
const Color dividerColor = Color(0xFF414141);
const Color textPrimaryColor = Color(0xFF414141);
const Color chatBackground = Color(0xFFF2F2F2);
const Color currentMessageItem = Color(0xFFD6075E);
const Color otherMessageItem = Colors.white;
Color dialogBarrier = const Color(0xFF131313).withOpacity(0.87);

const Color bottomSheetGesture = Color(0xFFC4C4C4);
const Color logOutButton = Color(0xFFFF0000);

//default value
const kDefaultPadding = 20.0;

const sizedBox = SizedBox(
  height: kDefaultPadding,
);

const kHalfSizedBox = SizedBox(height: kDefaultPadding/2,);


//validation for mobile
const String mobilePattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';

//validation for email
const String emailPattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
