import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:notes_app_flutter/helpers/constant.dart';
import 'package:notes_app_flutter/helpers/custom_widgets.dart';
import 'package:notes_app_flutter/helpers/padding_extention.dart';

class ScreenChangePassword extends StatelessWidget {
  const ScreenChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              text: "Create a New\nPassword",
              fontWeightText: FontWeight.w700,
              fontSize: 32.sp,
              textColor: AppColor.textColor,
            ),
            SizedBox(
              height: 20.h,
            ),
            MyText(
              text:
                  "Your new password should be different from the previous password",
              fontWeightText: FontWeight.w400,
              fontSize: 16.sp,
              textColor: AppColor.borderColor,
            ),
            SizedBox(
              height: 20.h,
            ),
            MyText(
              text: "New Password",
              fontWeightText: FontWeight.w500,
              fontSize: 16.sp,
              textColor: AppColor.textColor,
            ),
            SizedBox(
              height: 12.sp,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "********"),
            ),
            MyText(
              text: "Retype New Password",
              fontWeightText: FontWeight.w500,
              fontSize: 16.sp,
              textColor: AppColor.textColor,
            ),
            SizedBox(
              height: 12.sp,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "********"),
            ),
            Spacer(),
            Container(
              width: Get.width,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(AppColor.blueColor),
                ),
                onPressed: () {
                  Get.back();
                },
                child: Text(
                  "Create Password",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColor.whiteColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.sp,)
          ],
        ).symmetricPadding(horizontal: 20),
      ),
    );
  }
}
