import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:habits_app/core/cache/hive_service.dart';
import 'package:habits_app/core/services/service_locator.dart';
import 'package:habits_app/features/models/gender_enum.dart';
import 'package:habits_app/features/models/user_model.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  // A service to save and retrieve user data from Hive
  final GenericHiveService<UserModel> _userService =
      sl<GenericHiveService<UserModel>>();

  SigninCubit() : super(const SigninInitial());

  // Method to check if the form is valid based on the current state.
  bool _isFormValid(String name, Gender? gender) {
    return name.isNotEmpty && gender != null;
  }

  // Method to update the user name in the state and check form validity.
  void updateName(String name) {
    final isValid = _isFormValid(name, state.selectedGender);
    emit(SigninFormState(
      userName: name,
      selectedGender: state.selectedGender,
      isFormValid: isValid,
    ));
  }

  // Method to update the selected gender in the state and check form validity.
  void updateGender(Gender gender) {
    final isValid = _isFormValid(state.userName, gender);
    emit(SigninFormState(
      userName: state.userName,
      selectedGender: gender,
      isFormValid: isValid,
    ));
  }

  // Method to handle the form submission logic.
  Future<void> submitForm() async {
    // Only proceed if the form is valid.
    if (!state.isFormValid) {
      return;
    }

    // Emit a loading state to show progress on the UI.
    emit(SigninLoading(
      userName: state.userName,
      selectedGender: state.selectedGender,
      isFormValid: state.isFormValid,
    ));

    try {
      // Create the user model with the collected data.
      final user = UserModel(
        userName: state.userName,
        gender: state.selectedGender,
      );

      // Save the user model to the Hive box.
      await _userService.saveItem('current_user', user);

      // Emit a success state. The UI will listen for this to navigate.
      emit(SigninSuccess(
        userName: state.userName,
        selectedGender: state.selectedGender,
        isFormValid: state.isFormValid,
      ));
    } catch (e) {
      // If an error occurs, emit an error state with a message.
      emit(SigninError(
        userName: state.userName,
        selectedGender: state.selectedGender,
        isFormValid: state.isFormValid,
        errorMessage: e.toString(),
      ));
    }
  }
}
