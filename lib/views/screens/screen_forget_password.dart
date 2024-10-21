import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:notes_app_flutter/helpers/constant.dart';
import 'package:notes_app_flutter/helpers/custom_widgets.dart';
import 'package:notes_app_flutter/helpers/padding_extention.dart';

class ScreenForgetPassword extends StatelessWidget {
  const ScreenForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: AppColor.blueColor,
                    size: 16.sp,
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                MyText(
                  text: "Back to Login",
                  fontSize: 16.sp,
                  fontWeightText: FontWeight.w500,
                  textColor: AppColor.blueColor,
                )
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              padding: EdgeInsets.all(120),
              decoration: BoxDecoration(
                image: DecorationImage(
                  scale: 2,
                  image: AssetImage(
                    "assests/images/onboarding illustration.png",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            MyText(
              text: "Forgot Password",
              fontSize: 32.sp,
              fontWeightText: FontWeight.w600,
              textColor: AppColor.textColor,
            ),
            SizedBox(
              height: 20.h,
            ),
            MyText(
              text:
                  "Insert your email address to receive a code for creating a new password",
              fontSize: 16.sp,
              fontWeightText: FontWeight.w400,
              textColor: AppColor.borderColor,
            ),
            SizedBox(
              height: 50.h,
            ),
            MyText(
              text: "Email Address",
              fontSize: 16.sp,
              fontWeightText: FontWeight.w600,
            ),
            SizedBox(
              height: 12.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "anto_michael@gmail.com",
                  hintStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColor.textColor)),
            ),
            Spacer(),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                  WidgetStatePropertyAll(AppColor.blueColor)),
              onPressed: () {},
              child: Row(
                children: [
                  SizedBox(
                    width: 140.w,
                  ),
                  MyText(
                    text: "Send Code",
                    fontSize: 18.sp,
                    fontWeightText: FontWeight.w500,
                    textColor: AppColor.whiteColor,
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward,
                    color: AppColor.whiteColor,
                    size: 18,
                  ),
                  SizedBox(
                    width: 20.w,
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h,)
          ],
        ).symmetricPadding(horizontal: 20),
      ),
    );
  }
}
