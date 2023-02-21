import 'package:flutter/material.dart';
import 'package:flutter_app_top_hire_sample/presentaion/controller/dashboard_controller/dashboard_controller.dart';
import 'package:flutter_app_top_hire_sample/utils/custom_bottom_app_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class DashBoard extends GetView<DashBoardController> {
  @override
  Widget build(BuildContext context) {
    if (Get.parameters['index'] != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        controller
            .changeTabIndex(int.parse(Get.parameters['index'].toString()));
      });
    }
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Test Demo')),
        backgroundColor: Colors.lightGreen,
        elevation: 0,
        actions: const [ Icon(Icons.dehaze_sharp)],
      ),
      bottomNavigationBar: Obx(
            () => MyBottomNavigationBar(
          onTap: controller.changeTabIndex,
          currentIndex: controller.navIndex.value,
        ),
      ),
      body: SafeArea(
        child: Obx(
              () => controller.currentPage.value,
        ),
      ),
    );
  }
}
