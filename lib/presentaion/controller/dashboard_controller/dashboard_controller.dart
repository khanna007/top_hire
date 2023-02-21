import 'package:flutter/material.dart';
import 'package:flutter_app_top_hire_sample/data/model/popular_model.dart';
import 'package:flutter_app_top_hire_sample/domain/use_case/top_rated_use_case.dart';
import 'package:flutter_app_top_hire_sample/presentaion/home_screen/home_screen.dart';
import 'package:get/get.dart';

class DashBoardController extends GetxController{
  final navIndex = 0.obs;
  late Rx<Widget> currentPage = Rx<Widget>(HomeScreen());

  @override
  void onInit() {

    if (Get.parameters['index'] != null) {
      changeTabIndex(int.parse(Get.parameters['index'].toString()));
    }
    super.onInit();
  }



  void changeTabIndex(int i) {
    navIndex.value = i;
    currentPage.value = buildContentBody(i);
  }

  Widget buildContentBody(int i) {
    switch (i) {
      case 0:
        {
          return  HomeScreen();
        }
      case 1:
        {
          return  HomeScreen();
        }
      default:
        {
          return  HomeScreen();
        }
    }
  }

}