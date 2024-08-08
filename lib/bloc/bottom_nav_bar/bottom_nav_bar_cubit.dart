import 'dart:developer' as dev;

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(BottomNavBarVisible());

  void hideBottomBar() {
    if (state is! BottomNavBarNotVisible) {
      emit(BottomNavBarNotVisible());
    }
  }

  void showBottomBar() {
    if (state is! BottomNavBarVisible) {
      emit(BottomNavBarVisible());
    }
  }

  @override
  void onChange(Change<BottomNavBarState> change) {
    dev.log(change.toString(), name: 'BottomBar');
    super.onChange(change);
  }
}
