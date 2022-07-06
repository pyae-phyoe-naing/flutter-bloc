import 'package:api_bloc/bloc/api_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ApiBloc _bloc = BlocProvider.of<ApiBloc>(context);
    return BlocBuilder<ApiBloc, ApiState>(
      builder: (context, state) {
        if (state is SuccessState) {
          return Center(
            child: Text(state.str),
          );
        } else if (state is LoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is FailState) {
          return  Center(
            child: Text(state.error),
          );
        }
        return Center(
          child: ElevatedButton(
            child: Text('Get Data'),
            onPressed: () {
              _bloc.add(GetDataEvent());
            },
          ),
        );
      },
    );
  }
}
