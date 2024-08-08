import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'clear_text_state.dart';

class ClearTextCubit extends Cubit<ClearTextState> {
  ClearTextCubit() : super(ClearTextNotVisible());

  void showClearText() {
    if (state is! ClearTextVisible) {
      emit(ClearTextVisible());
    }
  }

  void hideClearText() {
    if (state is! ClearTextNotVisible) {
      emit(ClearTextNotVisible());
    }
  }
}
