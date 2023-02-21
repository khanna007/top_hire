import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app_top_hire_sample/presentaion/controller/home_controller/home_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.doShimmer.value
          ? const Center(
        child: CircularProgressIndicator(),
      )
          : ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              leading: const Icon(Icons.list),
              title:
              Text("${controller.popularModel.results?[index].title}"));
        },
      ))

    );
  }
}
