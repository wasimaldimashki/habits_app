import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:habits_app/core/cache/hive_service.dart';
import 'package:habits_app/features/models/habit_model.dart';

part 'manage_habit_state.dart';

class ManageHabitCubit extends Cubit<ManageHabitState> {
  final GenericHiveService<HabitModel> _hiveService;
  late final StreamSubscription _habitsSubscription;

  ManageHabitCubit(this._hiveService) : super(ManageHabitInitial()) {
    _habitsSubscription = _hiveService.itemsStream.listen((habits) {
      emit(ManageHabitLoaded(habits: habits));
    });
    final habits = _hiveService.getAll();
    emit(ManageHabitLoaded(habits: habits));
  }

  Future<void> deleteHabit(String id) async {
    try {
      await _hiveService.delete(id);
    } catch (e) {
      emit(ManageHabitError(message: 'Failed to delete habit: $e'));
    }
  }

  Future<void> editHabit({
    required String habitId,
    required String newName,
    required String newDescription,
  }) async {
    if (newName.trim().isEmpty) {
      emit(ManageHabitError(message: 'Habit name cannot be empty.'));
      return;
    }

    try {
      final existingHabit = _hiveService.get(habitId);
      if (existingHabit == null) {
        emit(ManageHabitError(message: 'Habit not found.'));
        return;
      }
      final updatedHabit = existingHabit.copyWith(
        name: newName.trim(),
        description: newDescription.trim(),
      );

      await _hiveService.saveItem(updatedHabit.id, updatedHabit);
    } catch (e) {
      emit(ManageHabitError(message: 'Failed to update habit: $e'));
    }
  }

  @override
  Future<void> close() {
    _habitsSubscription.cancel();
    return super.close();
  }
}
