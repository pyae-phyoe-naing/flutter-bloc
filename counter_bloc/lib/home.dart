import 'package:counter_bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterBloc _bloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Exercise'),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: BlocBuilder<CounterBloc, int>(
            builder: (context, state) {
              return Text(
                state.toString(),
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              );
            },
          ),
        ),
        ElevatedButton(
            onPressed: () => _bloc.add(IncreaseEvent()),
            child: const Text('Increase + 1')),
        ElevatedButton(
            onPressed: () => _bloc.add(DecreaseEvent()),
            child: const Text('Decrease - 1')),
        ElevatedButton(
            onPressed: () => _bloc.add(DoubleEvent()),
            child: const Text('Double * 2')),
        BlocListener<CounterBloc, int>(
          listener: (context, state) {
            print(state);
          },
          child: const Text('Listener Not change UI . It is listen only;'),
        ),
      ]),
    );
  }
}
