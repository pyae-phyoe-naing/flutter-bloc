import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<IncreaseEvent>(((event, emit) => emit(state + 1)));
    on<DecreaseEvent>(((event, emit) => emit(state - 1)));
    on<DoubleEvent>(((event, emit) => emit(state * 2)));
  }
}
