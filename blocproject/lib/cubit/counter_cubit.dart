import 'package:blocproject/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());
  int i = 0;
  int j = 0;

  void IncrementeState(String team, int buttomNumber) {
    if (team == "A") {
      i += buttomNumber;
      emit(CounterAIncrementState());
    } else {
      j += buttomNumber;
      emit(CounterBIncrementState());
    }
  }
}
