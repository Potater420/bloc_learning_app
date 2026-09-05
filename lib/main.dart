import "package:bloc_learning_app/bloc/counter_bloc.dart";
import "package:bloc_learning_app/bloc/theme_bloc.dart";
import "package:bloc_learning_app/counter_cubit_screen.dart";
import "package:bloc_learning_app/cubit/counter_cubit.dart";
import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      //MultiBlocProivder because we have multiple Blocs we need
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
        BlocProvider(
          create: (context) => ThemeBloc(),
        ),
        BlocProvider(
          create: (context) => CounterCubit(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      //bloc builder here to rebuild the whole screen according to the new theme
      builder: (context, state) {
        return MaterialApp(
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: state is ThemeDark ? ThemeMode.dark : ThemeMode.light,
          debugShowCheckedModeBanner: false,
          home: const CounterCubitScreen(),
        );
      },
    );
  }
}
