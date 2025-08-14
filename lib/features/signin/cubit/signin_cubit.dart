import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:habits_app/core/cache/hive_service.dart';
import 'package:habits_app/core/services/service_locator.dart';
import 'package:habits_app/features/models/gender_enum.dart';
import 'package:habits_app/features/models/user_model.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  final GenericHiveService<UserModel> _userService =
      sl<GenericHiveService<UserModel>>();

  SigninCubit() : super(const SigninInitial());

  bool _isFormValid(String name, Gender? gender) {
    return name.isNotEmpty && gender != null;
  }

  void updateName(String name) {
    final isValid = _isFormValid(name, state.selectedGender);
    emit(SigninFormState(
      userName: name,
      selectedGender: state.selectedGender,
      isFormValid: isValid,
    ));
  }

  void updateGender(Gender gender) {
    final isValid = _isFormValid(state.userName, gender);
    emit(SigninFormState(
      userName: state.userName,
      selectedGender: gender,
      isFormValid: isValid,
    ));
  }

  Future<void> submitForm() async {
    if (!state.isFormValid) {
      return;
    }

    emit(SigninLoading(
      userName: state.userName,
      selectedGender: state.selectedGender,
      isFormValid: state.isFormValid,
    ));

    try {
      final user = UserModel(
        userName: state.userName,
        gender: state.selectedGender,
      );

      await _userService.saveItem('current_user', user);

      emit(SigninSuccess(
        userName: state.userName,
        selectedGender: state.selectedGender,
        isFormValid: state.isFormValid,
      ));
    } catch (e) {
      emit(SigninError(
        userName: state.userName,
        selectedGender: state.selectedGender,
        isFormValid: state.isFormValid,
        errorMessage: e.toString(),
      ));
    }
  }
}
