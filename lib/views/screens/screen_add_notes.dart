import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:notes_app_flutter/helpers/constant.dart';
import 'package:notes_app_flutter/helpers/custom_widgets.dart';
import 'package:notes_app_flutter/helpers/padding_extention.dart';

class ScreenAddNotes extends StatelessWidget {
  const ScreenAddNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var descriptionController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: MyText(
          text: "Add Notes",
          fontSize: 20.sp,
          fontWeightText: FontWeight.w600,
          textColor: AppColor.textColor,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              text: "Name",
              fontSize: 14.sp,
              fontWeightText: FontWeight.w600,
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                fillColor: AppColor.borderColor.withOpacity(0.5),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.sp),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.sp),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.sp),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            MyText(
              text: "Write your data here",
              fontSize: 14.sp,
              fontWeightText: FontWeight.w600,
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFormField(
              controller: descriptionController,
              maxLines: 6,
              decoration: InputDecoration(
                fillColor: AppColor.borderColor.withOpacity(0.5),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.sp),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.sp),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.sp),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            Spacer(),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(AppColor.blueColor)),
              onPressed: () {
                nameController.clear();
                descriptionController.clear();
                Get.back();
              },
              child: Center(
                child: MyText(
                  text: "Add Notes",
                  fontSize: 18.sp,
                  fontWeightText: FontWeight.w500,
                  textColor: AppColor.whiteColor,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ).symmetricPadding(horizontal: 20),
      ),
    );
  }
}

class DataController extends GetxController {
  String? name;
  String? description;

//<editor-fold desc="Data Methods">
  DataController({
    this.name,
    this.description,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DataController &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          description == other.description);

  @override
  int get hashCode => name.hashCode ^ description.hashCode;

  @override
  String toString() {
    return 'DataController{' +
        ' name: $name,' +
        ' description: $description,' +
        '}';
  }

  DataController copyWith({
    String? name,
    String? description,
  }) {
    return DataController(
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'description': this.description,
    };
  }

  factory DataController.fromMap(Map<String, dynamic> map) {
    return DataController(
      name: map['name'] as String,
      description: map['description'] as String,
    );
  }

//</editor-fold>
}
