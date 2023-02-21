
import 'package:flutter_app_top_hire_sample/presentaion/controller/dashboard_controller/dashboard_binding.dart';
import 'package:flutter_app_top_hire_sample/presentaion/controller/home_controller/home_bindings.dart';
import 'package:flutter_app_top_hire_sample/presentaion/dashboard/dashboard.dart';
import 'package:flutter_app_top_hire_sample/presentaion/home_screen/home_screen.dart';
import 'package:flutter_app_top_hire_sample/routes/app_routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../presentaion/controller/splash_controller/splash_bindings.dart';
import '../presentaion/spash_screen/splash_screen.dart';

class AppPages {
  static final pages = [
  GetPage(
  name: Routes.splash,
  page: () => SplashScreen(),
  binding: SplashBinding(),
  ),
    GetPage(
        name: Routes.dashBoard,
        page: () => DashBoard(),
        binding: DashboardBinding()
    ),
    GetPage(
        name: Routes.home,
        page: () => HomeScreen(),
        binding: HomeBinding()
    ),
];
}