import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:we_green_v1/core/constant/color.dart';
import '../../../core/constant/image_strings.dart';
import '../controller/FootPrintTest_controller.dart';
import 'FootPrintTestQuestions_screen2.dart';

class FootPrintTestQuestionsScreen extends StatelessWidget {
  const FootPrintTestQuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FootPrintTestControllerImp());

    return Scaffold(
      body: GestureDetector(
        onTap: (){
          Get.to(FootPrintTestQuestionsScreen2());
        },
        child: Container(
          height: 100.h,
          child: Image.asset(AppImages.test1),
        ),
      ),
    );
  }
}
