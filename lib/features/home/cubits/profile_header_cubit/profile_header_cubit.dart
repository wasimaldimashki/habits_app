import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:habits_app/core/cache/hive_service.dart';
import 'package:habits_app/core/services/service_locator.dart';
import 'package:habits_app/features/models/user_model.dart';

part 'profile_header_state.dart';

class ProfileHeaderCubit extends Cubit<ProfileHeaderState> {
  final GenericHiveService<UserModel> _userService =
      sl<GenericHiveService<UserModel>>();

  ProfileHeaderCubit() : super(ProfileHeaderInitial());

  Future<void> loadUserProfile() async {
    emit(ProfileHeaderLoading());
    try {
      final user = _userService.getSingleItem();
      if (user != null) {
        emit(ProfileHeaderLoaded(user: user));
      } else {
        emit(ProfileHeaderEmpty());
      }
    } catch (e) {
      emit(ProfileHeaderError(errorMessage: 'Failed to load user profile: $e'));
    }
  }
}
