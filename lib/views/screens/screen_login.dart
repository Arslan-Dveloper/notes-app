import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:notes_app_flutter/controller/login_signup_controller.dart';
import 'package:notes_app_flutter/helpers/constant.dart';
import 'package:notes_app_flutter/helpers/custom_widgets.dart';
import 'package:notes_app_flutter/helpers/padding_extention.dart';
import 'package:notes_app_flutter/views/screens/screen_bottom_navigation_bar.dart';
import 'package:notes_app_flutter/views/screens/screen_forget_password.dart';
import 'package:notes_app_flutter/views/screens/screen_register.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AuthentationController());
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.h,
              ),
              MyText(
                text: "Let’s Login",
                fontSize: 32.sp,
                fontWeightText: FontWeight.w600,
                textColor: AppColor.textColor,
              ),
              SizedBox(
                height: 16.h,
              ),
              MyText(
                text: "And notes your idea",
                fontSize: 16.sp,
                fontWeightText: FontWeight.w400,
                textColor: AppColor.borderColor,
              ),
              SizedBox(
                height: 32.h,
              ),
              MyText(
                text: "Email Address",
                fontSize: 16.sp,
                fontWeightText: FontWeight.w500,
                textColor: AppColor.textColor,
              ),
              SizedBox(
                height: 12.h,
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                    hintText: "johndoe@gmail.com",
                    hintStyle: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    )),
              ),
              SizedBox(
                height: 32.h,
              ),
              MyText(
                text: "Email Address",
                fontSize: 16.sp,
                fontWeightText: FontWeight.w500,
                textColor: AppColor.textColor,
              ),
              SizedBox(
                height: 12.h,
              ),
              Obx(() {
                return TextFormField(
                  obscureText: controller.obsecureText.value,
                  obscuringCharacter: "*",
                  controller: passwordController,
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: () {
                        controller.obsecureText.value =
                            !controller.obsecureText.value;
                      },
                      child: controller.obsecureText.value
                          ? Icon(
                              Icons.remove_red_eye,
                              size: 24.sp,
                            )
                          : Icon(
                              Icons.remove_red_eye_outlined,
                              size: 24.sp,
                            ),
                    ),
                    hintText: "*********",
                    hintStyle: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                );
              }),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(ScreenForgetPassword(),
                      transition: Transition.zoom,
                      duration: Duration(milliseconds: 500));
                },
                child: MyText(
                  text: "Forgot Password",
                  fontSize: 16.sp,
                  fontWeightText: FontWeight.w600,
                  textColor: AppColor.blueColor,
                  textDecorationText: TextDecoration.underline,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(AppColor.blueColor)),
                onPressed: () {
                  Get.to(ScreenBottomNavigationBar(),
                      duration: Duration(milliseconds: 500),
                      transition: Transition.zoom);
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: 140.w,
                    ),
                    MyText(
                      text: "Login",
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
              SizedBox(
                height: 30.h,
              ),
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
              SizedBox(
                height: 40.h,
              ),
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
                      text: "Login with Google",
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
              SizedBox(
                height: 40.h,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Don’t have any account? ",
                          style: TextStyle(
                              fontFamily: "poppins",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColor.blueColor)),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.to(
                                ScreenRegister(),
                                transition: Transition.zoom,
                                duration: Duration(milliseconds: 500),
                              );
                            },
                          text: "Register here",
                          style: TextStyle(
                              fontFamily: "poppins",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColor.blueColor)),
                    ],
                  ),
                ),
              )
            ],
          ).symmetricPadding(horizontal: 20),
        ),
      ),
    );
  }
}
