part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class IncreaseEvent extends CounterEvent {}

class DecreaseEvent extends CounterEvent {}

class DoubleEvent extends CounterEvent{}
