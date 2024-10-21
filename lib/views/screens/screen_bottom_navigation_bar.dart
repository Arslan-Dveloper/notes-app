import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:notes_app_flutter/helpers/constant.dart';
import 'package:notes_app_flutter/helpers/custom_widgets.dart';
import 'package:notes_app_flutter/helpers/padding_extention.dart';
import 'package:notes_app_flutter/views/layout/layout_home.dart';
import 'package:notes_app_flutter/views/layout/layout_profile.dart';
import 'package:notes_app_flutter/views/screens/screen_add_notes.dart';

class ScreenBottomNavigationBar extends StatelessWidget {
  const ScreenBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = [
      {
        "images": "assests/images/home.png",
        "imagesBlue": "assests/images/home two.png",
        "layout": LayoutHome(),
        "text": "Home",
      },
      {
        "images": "assests/images/profile.png",
        "imagesBlue": "assests/images/profile two.png",
        "layout": LayoutProfile(),
        "text": "Profile",
      },
    ];
    Rx<Map<String, dynamic>> selectedData = Rx(data[0]);

    return Obx(() {
      return Scaffold(
        appBar: selectedData.value["text"] == "Home"
            ? AppBar(
                automaticallyImplyLeading: false,
                title: MyText(
                  text: "Home",
                  fontSize: 20.sp,
                  fontWeightText: FontWeight.w600,
                  textColor: AppColor.textColor,
                ),
                centerTitle: true,
              )
            : null,
        body: Obx(
          () {
            return selectedData.value["layout"] as Widget;
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          width: 50,
          height: 50,
          child: FloatingActionButton.small(
            hoverColor: AppColor.whiteColor,
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: Icon(Icons.add),
            onPressed: () {
              Get.to(
                ScreenAddNotes(),
                transition: Transition.zoom,
                duration: Duration(milliseconds: 500),
              );
            },
          ),
        ),
        bottomNavigationBar: Obx(() {
          return Container(
            width: Get.width,
            height: 80.h,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: AppColor.blackColor.withOpacity(0.05),
                    offset: Offset(0, -5),
                    spreadRadius: 1,
                    blurRadius: 15),
              ],
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.sp),
                topLeft: Radius.circular(30.sp),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: data.map(
                (e) {
                  return GestureDetector(
                    onTap: () {
                      selectedData.value = e;
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          child: selectedData.value == e
                              ? Image.asset(e["imagesBlue"].toString())
                              : Image.asset(e["images"].toString()),
                        ),
                        MyText(
                          text: e["text"].toString(),
                          fontSize: 14.sp,
                          fontWeightText: FontWeight.w700,
                          textColor: selectedData.value == e
                              ? AppColor.blueColor
                              : AppColor.borderColor,
                        )
                      ],
                    ),
                  );
                },
              ).toList(),
            ).onlyPadding(left: 20, right: 20),
          );
        }),
      );
    });
  }
}
