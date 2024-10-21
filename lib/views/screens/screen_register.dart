import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:notes_app_flutter/controller/login_signup_controller.dart';
import 'package:notes_app_flutter/helpers/constant.dart';
import 'package:notes_app_flutter/helpers/custom_widgets.dart';
import 'package:notes_app_flutter/helpers/padding_extention.dart';
import 'package:notes_app_flutter/views/screens/screen_login.dart';

class ScreenRegister extends StatelessWidget {
  const ScreenRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AuthentationController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
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
                height: 20.h,
              ),
              MyText(
                text: "Register",
                fontSize: 32.sp,
                fontWeightText: FontWeight.w600,
                textColor: AppColor.textColor,
              ),
              SizedBox(
                height: 16.h,
              ),
              MyText(
                text: "And start taking notes",
                fontSize: 16.sp,
                fontWeightText: FontWeight.w500,
                textColor: AppColor.borderColor,
              ),
              SizedBox(
                height: 32.h,
              ),
              MyText(
                text: "Full Name",
                fontSize: 16.sp,
                fontWeightText: FontWeight.w600,
                textColor: AppColor.textColor,
              ),
              SizedBox(
                height: 12.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    fontFamily: "poppins",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  hintText: "John Doe",
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              MyText(
                text: "Full Name",
                fontSize: 16.sp,
                fontWeightText: FontWeight.w600,
                textColor: AppColor.textColor,
              ),
              SizedBox(
                height: 12.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    fontFamily: "poppins",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  hintText: "Example: johndoe@gmail.com",
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              MyText(
                text: "Password",
                fontSize: 16.sp,
                fontWeightText: FontWeight.w600,
                textColor: AppColor.textColor,
              ),
              SizedBox(
                height: 12.h,
              ),
              Obx(() {
                return TextFormField(
                  obscureText: controller.obsecureTextRegister.value,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontFamily: "poppins",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      hintText: "**********",
                      suffixIcon: GestureDetector(
                        onTap: () {
                          controller.obsecureTextRegister.value =
                              !controller.obsecureTextRegister.value;
                        },
                        child: controller.obsecureTextRegister.value
                            ? Icon(
                                Icons.remove_red_eye_outlined,
                                size: 20,
                              )
                            : Icon(
                                Icons.remove_red_eye,
                                size: 20,
                              ),
                      )),
                );
              }),
              SizedBox(
                height: 32.h,
              ),
              MyText(
                text: "Retype Password",
                fontSize: 16.sp,
                fontWeightText: FontWeight.w600,
                textColor: AppColor.textColor,
              ),
              SizedBox(
                height: 12.h,
              ),
              Obx(() {
                return TextFormField(
                  obscureText: controller.obsecureTextRegisterRetype.value,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontFamily: "poppins",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      hintText: "**********",
                      suffixIcon: GestureDetector(
                        onTap: () {
                          controller.obsecureTextRegisterRetype.value =
                              !controller.obsecureTextRegisterRetype.value;
                        },
                        child: controller.obsecureTextRegisterRetype.value
                            ? Icon(
                                Icons.remove_red_eye_outlined,
                                size: 20,
                              )
                            : Icon(
                                Icons.remove_red_eye,
                                size: 20,
                              ),
                      )),
                );
              }),
              SizedBox(height: 40.h,),
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
                      text: "Register",
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
              SizedBox(height: 16.h,),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      endIndent: 20.sp,
                    ),
                  ),
                  MyText(
                    text: "Or",
                    fontSize: 16.sp,
                    fontWeightText: FontWeight.w500,
                    textColor: AppColor.borderColor,
                  ),
                  Expanded(
                    child: Divider(
                      indent: 20.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25.h,),
              Container(
                width: Get.width,
                height: 60.h,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.borderColor),
                  borderRadius: BorderRadius.circular(30.sp),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assests/images/google image.png",
                      scale: 3,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    MyText(
                      text: "Register with Google",
                      textColor: AppColor.textColor,
                      fontSize: 16.sp,
                      fontWeightText: FontWeight.w600,
                    ),
                    SizedBox(
                      height: 32,
                    ),


                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Already have an account?",
                          style: TextStyle(
                              fontFamily: "poppins",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColor.blueColor)),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.to(
                                ScreenLogin(),
                                transition: Transition.zoom,
                                duration: Duration(milliseconds: 500),
                              );
                            },
                          text: " Login here",
                          style: TextStyle(
                              fontFamily: "poppins",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColor.blueColor)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
            ],
          ).symmetricPadding(horizontal: 20.sp),
        ),
      ),
    );
  }
}
