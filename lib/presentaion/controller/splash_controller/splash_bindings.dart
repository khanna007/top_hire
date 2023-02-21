import 'package:flutter_app_top_hire_sample/presentaion/controller/splash_controller/splash_controller.dart';
import 'package:get/get.dart';

class SplashBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}