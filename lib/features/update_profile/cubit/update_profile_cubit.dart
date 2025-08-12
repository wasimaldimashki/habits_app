import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:habits_app/core/cache/hive_service.dart';
import 'package:habits_app/core/services/service_locator.dart';
import 'package:habits_app/features/models/gender_enum.dart';
import 'package:habits_app/features/models/user_model.dart';

part 'update_profile_state.dart';

class UpdateProfileCubit extends Cubit<UpdateProfileState> {
  final GenericHiveService<UserModel> _userService =
      sl<GenericHiveService<UserModel>>();

  UpdateProfileCubit() : super(UpdateProfileInitial()) {
    _loadInitialUserData();
  }

  void _loadInitialUserData() {
    try {
      final currentUser = _userService.getSingleItem();
      if (currentUser != null) {
        emit(UpdateProfileFormState(
          username: currentUser.userName,
          gender: currentUser.gender,
        ));
      } else {
        emit(UpdateProfileFormState());
      }
    } catch (e) {
      emit(UpdateProfileError(errorMessage: 'Failed to load user data: $e'));
    }
  }

  void onUsernameChanged(String newUsername) {
    if (state is UpdateProfileFormState) {
      final currentState = state as UpdateProfileFormState;
      emit(currentState.copyWith(username: newUsername));
    }
  }

  void onGenderChanged(Gender? newGender) {
    if (state is UpdateProfileFormState) {
      final currentState = state as UpdateProfileFormState;
      emit(currentState.copyWith(gender: newGender));
    }
  }

  Future<void> updateUserProfile() async {
    if (state is UpdateProfileFormState) {
      final currentState = state as UpdateProfileFormState;
      if (currentState.username == null || currentState.username!.isEmpty) {
        emit(UpdateProfileError(errorMessage: 'Username cannot be empty.'));
        return;
      }
      try {
        emit(UpdateProfileLoading());
        final updatedUser = UserModel(
          userName: currentState.username,
          gender: currentState.gender,
        );
        await _userService.saveItem('current_user', updatedUser);
        emit(UpdateProfileSuccess());
      } catch (e) {
        emit(UpdateProfileError(errorMessage: 'Failed to update profile: $e'));
      }
    }
  }
}
