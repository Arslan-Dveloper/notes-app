import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:notes_app_flutter/helpers/constant.dart';
import 'package:notes_app_flutter/helpers/custom_widgets.dart';
import 'package:notes_app_flutter/helpers/padding_extention.dart';
import 'package:notes_app_flutter/views/screens/screen_login.dart';

class ScreenOnboarding extends StatelessWidget {
  const ScreenOnboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blueColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 130.h,
            ),
            Image.asset("assests/images/onboarding illustration.png")
                .symmetricPadding(horizontal: 15.sp),
            SizedBox(
              height: 24.h,
            ),
            MyText(
              text:
                  'Jot Down anything you want to achieve, today or in the future',
              fontSize: 20.sp,
              fontWeightText: FontWeight.w700,
              textColor: AppColor.whiteColor,
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Get.to(
                  ScreenLogin(),transition: Transition.zoom,duration: Duration(milliseconds: 500)
                );
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 100.w,
                  ),
                  MyText(
                    text: "Let’s Get Started",
                    textColor: AppColor.blueColor,
                    fontSize: 16.sp,
                    fontWeightText: FontWeight.w600,
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward,
                    color: AppColor.blueColor,
                    size: 20,
                  ),
                  SizedBox(
                    width: 20.w,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 80.h,
            )
          ],
        ).symmetricPadding(horizontal: 25),
      ),
    );
  }
}
