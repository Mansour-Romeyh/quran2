
import 'package:get/get.dart';
import 'package:quran2/core/constant/approutes.dart';
class Splashcontroller extends GetxController {
  gotOnpording() {
    Get.offNamed(Approutes.homeview);
  }

  @override
  void onInit() {
    Future.delayed(Duration(seconds: 4), () {
      gotOnpording();
    });
    super.onInit();
  }
}
