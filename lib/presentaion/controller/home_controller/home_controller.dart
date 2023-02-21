import 'package:get/get.dart';

import '../../../data/model/popular_model.dart';
import '../../../domain/use_case/top_rated_use_case.dart';

class HomeController extends GetxController {
  PopularModel popularModel = PopularModel();
  HomeController(this._ratedUseCase);
  final TopRatedUseCase _ratedUseCase;
  var doShimmer = false.obs;

  @override
  void onInit() {
    fetchApiData();
    super.onInit();
  }

  Future fetchApiData() async {
    doShimmer(true);
    final response = await _ratedUseCase.topRatedCall();
    if (response?.statusCode == 200) {
    popularModel=   PopularModel.fromJson(response?.data);
    }
    print("i am here");
    doShimmer(false);

  }
}
