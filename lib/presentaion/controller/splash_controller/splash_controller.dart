
import 'dart:async';

import 'package:flutter_app_top_hire_sample/routes/app_routes.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashController extends GetxController{

  @override
  void onInit() {
    Timer(const Duration(seconds: 2), () => {Get.offNamed(Routes.dashBoard)});
    super.onInit();
  }

}