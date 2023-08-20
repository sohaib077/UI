import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../ widgets/profile_achievement_column.dart';
import '../ widgets/profile_activity_column.dart';
import '../ widgets/profile_friends_column.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());

  static ProfileCubit get(context) => BlocProvider.of(context);


  List<Widget> profileLists = const [
    ProfileActivityColumn(),
    ProfileFriendsColumn(),
    ProfileAchievementColumn(),
  ];
  int currentIndex = 0;
  void changeIndex(int index){
    currentIndex = index;
    emit(ChangeIndexState());
  }
}
