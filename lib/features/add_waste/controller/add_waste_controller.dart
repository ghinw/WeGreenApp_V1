import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:we_green_v1/features/FootPrintTest/screen/footprint_test_calculating_screen.dart';


class AddWasteController extends GetxController {
  static AddWasteController get instance => Get.find();


  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;
  var dropdownValue = 'Paper'.obs;
  RxInt cat = 1.obs;

  void updatecat(int num) {
    cat.value = num;
    update();
  }

  void changeDropdownValue(String newValue) {
    dropdownValue.value = newValue;
  }

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void nextPage() {
    if (currentPageIndex == 3) {
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void previousPage() {
    int page = currentPageIndex.value - 1;
    pageController.jumpToPage(page);
  }

  @override
  void onClose() {
    pageController.dispose(); // Dispose the PageController when the controller is closed
    super.onClose();
  }
}
