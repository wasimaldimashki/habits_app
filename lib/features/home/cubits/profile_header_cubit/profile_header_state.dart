part of 'profile_header_cubit.dart';

abstract class ProfileHeaderState extends Equatable {
  const ProfileHeaderState();

  @override
  List<Object> get props => [];
}

class ProfileHeaderInitial extends ProfileHeaderState {}

class ProfileHeaderLoading extends ProfileHeaderState {}

class ProfileHeaderLoaded extends ProfileHeaderState {
  final UserModel user;

  const ProfileHeaderLoaded({required this.user});

  @override
  List<Object> get props => [user];
}

class ProfileHeaderEmpty extends ProfileHeaderState {}

class ProfileHeaderError extends ProfileHeaderState {
  final String errorMessage;

  const ProfileHeaderError({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
