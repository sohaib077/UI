import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:ui/habit%20tracker/views/achievement%20view/achievement%20view.dart';
import 'package:ui/habit%20tracker/views/discover%20view/discover%20view.dart';
import 'package:ui/habit%20tracker/views/home%20view/home%20view.dart';
import 'package:ui/habit%20tracker/views/profile%20view/profile%20view.dart';

part 'home_layout_state.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  HomeLayoutCubit() : super(HomeLayoutInitial());

  static HomeLayoutCubit get(context) => BlocProvider.of(context);

  List<Widget> pages = const [
    HomeView(),
    DiscoverView(),
    DiscoverView(),
    AchievementView(),
    ProfileView(),
  ];

  int currentPageIndex = 0;

  void changePageIndex(int index) {
    currentPageIndex = index;
    emit(ChangePageIndexState());
  }
}
