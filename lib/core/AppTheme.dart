import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'ColorManager.dart';

class AppTheme{
      static ThemeData appTheme =ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: ColorManager.primary,
          centerTitle: true,
          toolbarHeight: 60.h,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.sp,
              color: Colors.black
          ),
          iconTheme: IconThemeData(
            size: 20.sp
          )
        ),
        scaffoldBackgroundColor: ColorManager.primary,
  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 25.sp,
      color: ColorManager.primary
  ),
    titleMedium: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
      color: ColorManager.primary
    ),
    titleSmall: TextStyle(
      fontSize: 10.sp,
      color: Colors.white,

    )
  ),
        dividerColor: ColorManager.primary
  );
}