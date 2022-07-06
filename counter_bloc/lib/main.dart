import 'package:counter_bloc/bloc/counter_bloc.dart';
import 'package:counter_bloc/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:BlocProvider(
        create: (context) => CounterBloc(),
        child:const Home(),
      ),
    );
  }
}
