import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:notes_app_flutter/helpers/constant.dart';
import 'package:notes_app_flutter/helpers/custom_widgets.dart';
import 'package:notes_app_flutter/helpers/padding_extention.dart';
import 'package:notes_app_flutter/views/screens/screen_change_password.dart';

class LayoutProfile extends StatelessWidget {
  const LayoutProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: MyText(
          text: "Profile",
          fontSize: 25.sp,
          fontWeightText: FontWeight.w600,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              text: "Michael Antonio",
              fontSize: 20.sp,
              fontWeightText: FontWeight.w700,
              textColor: AppColor.textColor,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(
                  Icons.mail,
                  color: AppColor.borderColor,
                ),
                SizedBox(
                  width: 15.w,
                ),
                MyText(
                  text: "anto_michael@gmail.com",
                  fontSize: 14.sp,
                  fontWeightText: FontWeight.w500,
                ),
              ],
            ),
            SizedBox(
              height: 32.h,
            ),
            Container(
              height: 50.h,
              width: Get.width,
              decoration: BoxDecoration(
                border: Border.all(color: AppColor.blueColor),
                borderRadius: BorderRadius.circular(30.sp),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assests/images/pencil-alt.png",
                    scale: 4,
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  MyText(
                    text: "Edit Profile",
                    fontSize: 16.sp,
                    fontWeightText: FontWeight.w500,
                    textColor: AppColor.blueColor,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Divider(),
            SizedBox(
              height: 24.h,
            ),
            MyText(
              text: "APP SETTINGS",
              fontSize: 12.sp,
              fontWeightText: FontWeight.w400,
              textColor: AppColor.textColor,
            ),
            SizedBox(
              height: 10.h,
            ),
            GestureDetector(
              onTap: () {
                Get.to(ScreenChangePassword(),
                    transition: Transition.zoom,
                    duration: Duration(milliseconds: 500));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 55.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  color: AppColor.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.blackColor.withOpacity(0.05),
                      blurRadius: 5,
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    Image.asset(
                      "assests/images/lock-closed.png",
                      scale: 3.5,
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    MyText(
                      text: "Change Password",
                      fontSize: 16.sp,
                      fontWeightText: FontWeight.w500,
                      textColor: AppColor.textColor,
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Divider(),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 55.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.sp),
                color: AppColor.whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: AppColor.blackColor.withOpacity(0.05),
                    blurRadius: 5,
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Image.asset(
                    "assests/images/logout.png",
                    scale: 3.5,
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  MyText(
                    text: "Log Out",
                    fontSize: 16.sp,
                    fontWeightText: FontWeight.w500,
                    textColor: AppColor.redColor,
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
          ],
        ).symmetricPadding(horizontal: 20),
      ),
    );
    ;
  }
}
