import 'package:flutter/material.dart';
import 'app_color.dart';
class AppTextStyles {
  AppTextStyles._();

 static const String _font = 'Lato';
 static const String _font2 = 'GrandHotel';

 static const TextStyle BlackColor16Regular = TextStyle(
    fontFamily: _font,
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColor.BlackColor,
  );
  static const TextStyle blackColor16SemiBold = TextStyle(
    fontFamily: _font,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColor.BlackColor,
  );
  static const TextStyle blackColor20Bold = TextStyle(
    fontFamily: _font,
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColor.BlackColor,
  );
  static const TextStyle grayColor40Bold = TextStyle(
    fontFamily: _font2,
    fontSize: 40,
    fontWeight: FontWeight.w400,
    color: AppColor.GreyColor,
  );
  //weight: FontWeight.w400,for Get Started button
  static const TextStyle PrimaryColorRegular = TextStyle(
    fontFamily: _font,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColor.PrimaryColor,
  );
//weight: FontWeight.w400,
  static const TextStyle buttonStyle = TextStyle(
    fontFamily: _font,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColor.BlackColor,
  );

}
