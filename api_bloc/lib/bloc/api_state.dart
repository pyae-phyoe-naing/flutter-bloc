part of 'api_bloc.dart';

@immutable
abstract class ApiState {}

class StartState extends ApiState {}

class LoadingState extends ApiState {}

class SuccessState extends ApiState {
  final String str;
  SuccessState(this.str);
}

class FailState extends ApiState {
  final String error;
  FailState(this.error);
}
