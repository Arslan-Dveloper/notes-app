import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:notes_app_flutter/helpers/constant.dart';
import 'package:notes_app_flutter/views/screens/screen_onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: Size(393, 852),
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'poppins',
            dividerColor: AppColor.dividerColor,
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(padding: WidgetStatePropertyAll(EdgeInsets.only(top: 20,bottom: 20)),
                animationDuration: Duration(milliseconds: 500),
                elevation: WidgetStatePropertyAll(10),
                overlayColor: WidgetStatePropertyAll(
                  AppColor.whiteColor.withOpacity(0.1),
                ),
                shadowColor: WidgetStatePropertyAll(
                  AppColor.blackColor.withOpacity(0.3),
                ),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),

            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.sp),
                borderSide: BorderSide(color: AppColor.borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.sp),
                borderSide: BorderSide(color: AppColor.borderColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.sp),
                borderSide: BorderSide(color: AppColor.borderColor),
              ),
            ),
          ),
          home: ScreenOnboarding(),
        );
      },
    );
  }
}
