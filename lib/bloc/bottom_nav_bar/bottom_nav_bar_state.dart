part of 'bottom_nav_bar_cubit.dart';

abstract class BottomNavBarState extends Equatable {
  const BottomNavBarState();

  @override
  List<Object> get props => [];
}

class BottomNavBarVisible extends BottomNavBarState {}

class BottomNavBarNotVisible extends BottomNavBarState {}
