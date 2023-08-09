import 'package:dio/dio.dart';

//Data states for remote data
abstract class DataState<T> {
  final T? data;
  final DioException? exception;

  const DataState({this.data, this.exception});
}

class DataSuccess<T> extends DataState {
  DataSuccess(T data) : super(data: data);
}

class DataFailure extends DataState {
  DataFailure(DioException? exception) : super(exception: exception);
}
