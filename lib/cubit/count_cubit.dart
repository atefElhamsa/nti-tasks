import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'count_state.dart';

class CountCubit extends Cubit<CountState> {
  CountCubit() : super(CountInitial());
  int num = 0;
  String imageBack = "assets/image_1.png";
  Color colorAppBar = Colors.black;
  String textAppBar = "سبحان الله";

  void increment() {
    num++;
    emit(AddNumState());
  }

  void reClearNum() {
    num = 0;
    emit(ClearNumState());
  }

  void changeImage({required String image}) {
    imageBack = image;
    emit(ImageState());
  }

  void changeColor({required Color color}) {
    colorAppBar = color;
    emit(ColorState());
  }

  void changeText({required String text}) {
    textAppBar = text;
    emit(TextState());
  }
}
