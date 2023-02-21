import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app_top_hire_sample/presentaion/controller/splash_controller/splash_controller.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class SplashScreen extends GetView<SplashController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Hi i am splash screen",)
        ),
      ),
    );
  }
}
