part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}
class ChangeDayIndexState extends HomeState {}
class ChangeEmojiIndexState extends HomeState {}
