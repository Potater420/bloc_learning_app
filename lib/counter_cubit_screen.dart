import 'package:bloc_learning_app/bloc/theme_bloc.dart';
import 'package:bloc_learning_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubitScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<CounterCubitScreen> createState() => _CounterCubitScreenState();
}

class _CounterCubitScreenState extends State<CounterCubitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.read<ThemeBloc>().add(
              ThemeSwitch(),
            ); //calling function to switch screen
          },
          icon: const Icon(Icons.dark_mode),
        ),
        title: const Text('Counter Cubit Screen'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: BlocConsumer<CounterCubit, CounterState>(
            listener: (context, state) {
              if (state.count == 10) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Reached Number 10!')),
                );
              }
              if (state.count == -10) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Reached Number -10!')),
                );
              }
            },
            builder: (context, state) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.read<CounterCubit>().counterDecrement();
                    },
                    child: const Text('-1'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(' ${state.count}'),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<CounterCubit>().counterIncrement();
                    },
                    child: const Text('+1'),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
