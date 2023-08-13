import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  int dayIndex = 2;

  void changeDayIndex(int index) {
    dayIndex = index;
    randomGoals();
    emit(ChangeDayIndexState());
  }

  int goals = 1;
  void randomGoals() {
    goals = Random().nextInt(5);
  }
}
