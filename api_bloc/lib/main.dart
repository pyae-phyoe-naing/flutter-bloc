import 'package:api_bloc/bloc/api_bloc.dart';
import 'package:api_bloc/page/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(centerTitle: true,title:const Text('Bloc Exercise'),),
        body: BlocProvider(
          create: (context) => ApiBloc(),
          child: const Home(),
        ),
      ),
    );
  }
}
