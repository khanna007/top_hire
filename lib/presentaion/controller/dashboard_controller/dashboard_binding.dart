import 'package:flutter_app_top_hire_sample/presentaion/controller/dashboard_controller/dashboard_controller.dart';
import 'package:flutter_app_top_hire_sample/presentaion/controller/home_controller/home_controller.dart';
import 'package:get/get.dart';

import '../../../data/respository/top_rated_repo_imp.dart';
import '../../../domain/use_case/top_rated_use_case.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<DashBoardController>(
      DashBoardController(),
    );
    Get.lazyPut(() => HomeController(Get.find()));
    Get.lazyPut(()=>TopRatedUseCase(Get.find<TopRepositoryImplementation>()));
    Get.lazyPut(() => TopRepositoryImplementation());
  }
}
