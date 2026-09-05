import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(0)) {
    // initial state, called when the bloc is created, inisital count value = 0
    on<IncrementEvent>(
      //on each event, emit a state and pass a new value to that state
      (event, emit) {
        //the "on<event>" reieves event and gives emit
        emit(CounterState(state.count + 1)); //emit new state
      },
    );

    on<DecrementEvent>(
      (event, emit) {
        emit(CounterState(state.count - 1));
      },
    );
  }
}
