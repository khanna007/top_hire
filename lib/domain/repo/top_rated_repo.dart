import 'package:dio/dio.dart';

abstract class TopRatedRepo {
  Future <Response?> topRated();
}