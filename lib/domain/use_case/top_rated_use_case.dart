
import 'package:dio/dio.dart';
import 'package:flutter_app_top_hire_sample/domain/repo/top_rated_repo.dart';

class TopRatedUseCase {
  final TopRatedRepo? repository;
  TopRatedUseCase(this.repository);

  Future <Response?> topRatedCall() {
    return repository!.topRated();
  }
}