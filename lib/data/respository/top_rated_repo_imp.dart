import 'package:dio/dio.dart';
import 'package:flutter_app_top_hire_sample/data/network/rest_client.dart';
import 'package:flutter_app_top_hire_sample/domain/repo/top_rated_repo.dart';

class TopRepositoryImplementation extends TopRatedRepo {
  @override
  Future<Response?> topRated() async {
    RestClient restClient =RestClient();
    Response? response = await restClient.getRequest(
        "popular?api_key=909594533c98883408adef5d56143539&language=en-US&page=1");
    return response;
  }
}