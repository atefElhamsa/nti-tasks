import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubjectCubit extends Cubit<SubjectState> {
  SubjectCubit()
    : super(SubjectState(text: "Atef Elhamsa", color: Colors.red, number: 0));

  void changeText(String text, Color color, int counter) {
    emit(state.copyWith(text: text, color: color, number: counter + 1));
  }
}

class SubjectState {
  final String text;
  final Color color;
  final int number;
  SubjectState({required this.text, required this.color, required this.number});

  SubjectState copyWith({String? text, Color? color, int? number}) {
    return SubjectState(
      text: text ?? this.text,
      color: color ?? this.color,
      number: number ?? this.number,
    );
  }
}
