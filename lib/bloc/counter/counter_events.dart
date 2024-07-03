import 'package:equatable/equatable.dart';

// This is a Base class or abstract class
abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

// This is a Sub class
class IncreamentCounter extends CounterEvent {}

// This is a Sub class
class DecreamentCounter extends CounterEvent {}
