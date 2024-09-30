import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/reviews/reviews/reviews_bloc.dart';

class ReviewsWrapper extends StatelessWidget {
  const ReviewsWrapper({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReviewsBloc(),
      child: child,
    );
  }
}
