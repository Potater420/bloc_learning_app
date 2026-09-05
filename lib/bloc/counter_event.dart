part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class IncrementEvent extends CounterEvent {} //event of increasing the value

class DecrementEvent extends CounterEvent {} //event of decreasing the value
