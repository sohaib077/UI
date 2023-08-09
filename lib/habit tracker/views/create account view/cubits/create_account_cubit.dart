import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'create_account_state.dart';

class CreateAccountCubit extends Cubit<CreateAccountState> {
  CreateAccountCubit() : super(CreateAccountInitial());
  static CreateAccountCubit get(context) => BlocProvider.of(context);

  int gender = -1;
  void changeSelectedItem(int index){
    gender = index;
    emit(ChooseGenderState());
  }
}
