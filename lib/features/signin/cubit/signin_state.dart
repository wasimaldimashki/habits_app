part of 'signin_cubit.dart';

sealed class SigninState extends Equatable {
  final String userName;
  final Gender? selectedGender;
  final bool isFormValid;

  const SigninState({
    this.userName = '',
    this.selectedGender,
    this.isFormValid = false,
  });

  @override
  List<Object?> get props => [userName, selectedGender, isFormValid];
}

// The initial state of the screen before any user interaction.
final class SigninInitial extends SigninState {
  const SigninInitial({
    super.userName = '',
    super.selectedGender,
    super.isFormValid = false,
  });
}

// This state is used when the user is interacting with the form.
final class SigninFormState extends SigninState {
  const SigninFormState({
    required super.userName,
    required super.selectedGender,
    required super.isFormValid,
  });
}

// This state is emitted when the user clicks the "Continue" button.
final class SigninLoading extends SigninState {
  const SigninLoading({
    required super.userName,
    required super.selectedGender,
    required super.isFormValid,
  });
}

// This state is emitted when the user data is successfully saved.
final class SigninSuccess extends SigninState {
  const SigninSuccess({
    required super.userName,
    required super.selectedGender,
    required super.isFormValid,
  });
}

// This state is for handling any errors during the process.
final class SigninError extends SigninState {
  final String errorMessage;

  const SigninError({
    required super.userName,
    required super.selectedGender,
    required super.isFormValid,
    required this.errorMessage,
  });

  @override
  List<Object?> get props =>
      [userName, selectedGender, isFormValid, errorMessage];
}
