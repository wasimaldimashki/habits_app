part of 'update_profile_cubit.dart';

abstract class UpdateProfileState extends Equatable {
  const UpdateProfileState();

  @override
  List<Object?> get props => [];
}

class UpdateProfileInitial extends UpdateProfileState {}

class UpdateProfileFormState extends UpdateProfileState {
  final String? username;
  final Gender? gender;

  const UpdateProfileFormState({this.username, this.gender});

  UpdateProfileFormState copyWith({String? username, Gender? gender}) {
    return UpdateProfileFormState(
      username: username ?? this.username,
      gender: gender ?? this.gender,
    );
  }

  @override
  List<Object?> get props => [username, gender];
}

class UpdateProfileLoading extends UpdateProfileState {}

class UpdateProfileSuccess extends UpdateProfileState {}

class UpdateProfileError extends UpdateProfileState {
  final String errorMessage;

  const UpdateProfileError({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
