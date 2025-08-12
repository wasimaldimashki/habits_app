import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:habits_app/core/cache/hive_service.dart';
import 'package:habits_app/core/services/service_locator.dart';
import 'package:habits_app/features/models/user_model.dart';

part 'profile_header_state.dart';

class ProfileHeaderCubit extends Cubit<ProfileHeaderState> {
  final GenericHiveService<UserModel> _userService =
      sl<GenericHiveService<UserModel>>();
  StreamSubscription? _userSubscription;

  ProfileHeaderCubit() : super(ProfileHeaderInitial()) {
    _startListeningToUserChanges();
  }

  void _startListeningToUserChanges() {
    // Start listening to the Hive box for user model
    _userSubscription = _userService.box.watch().listen((event) {
      loadProfileData();
    });
    // Load initial data
    loadProfileData();
  }

  void loadProfileData() {
    emit(ProfileHeaderLoading());
    try {
      final user = _userService.getSingleItem();
      if (user != null) {
        emit(ProfileHeaderLoaded(user: user));
      } else {
        // Handle case where no user data exists
        emit(const ProfileHeaderError(
            errorMessage: 'No user data found. Please create a profile.'));
      }
    } catch (e) {
      emit(ProfileHeaderError(
          errorMessage: 'Failed to load user data: ${e.toString()}'));
    }
  }

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    return super.close();
  }
}
