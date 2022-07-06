import 'package:api_bloc/data/api.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'api_event.dart';
part 'api_state.dart';

class ApiBloc extends Bloc<ApiEvent, ApiState> {
  ApiBloc() : super(StartState()) {
    on<GetDataEvent>(((event, emit) async {
      emit(LoadingState());
      try {
        String str = await getData();
        emit(SuccessState(str));
      } catch (e) {
        emit(FailState(e.toString()));
      }
    }));
  }
}
