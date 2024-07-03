import 'package:bloc/bloc.dart';
import 'package:counter_bloc/bloc/counter/counter_events.dart';
import 'package:counter_bloc/bloc/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<IncreamentCounter>(_increament);
    on<DecreamentCounter>(_decreament);
  }

// for increament a number
  void _increament(IncreamentCounter event, Emitter<CounterState> emitter) {
    emit(state.copyWith(counter: state.counter + 1));
  }

// for decreament a number
  void _decreament(DecreamentCounter event, Emitter<CounterState> emitter) {
    emit(state.copyWith(counter: state.counter - 1));
  }
}
