import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    state > 9 ? showToast() : emit(state + 1);
  }

  void decrement() {
    state < -9 ? showToast() : emit(state - 1);
  }

  void reset() {
    emit(0);
  }

  void showToast() {
    Fluttertoast.showToast(
        msg: "Fuera de limite",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
