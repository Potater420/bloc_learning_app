part of 'counter_bloc.dart';

@immutable
class CounterState {
  //you only need one state to display the value but multiple events on how you interact with the value
  const CounterState(this.count);
  final int count;
}


