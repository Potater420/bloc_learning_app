import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState(0));

  void counterIncrement() {
    emit(CounterState(state.count + 1));
  }

  void counterDecrement() {
    emit(CounterState(state.count - 1));
  }
}
