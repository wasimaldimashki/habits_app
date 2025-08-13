part of 'habit_screen_cubit.dart';

enum HabitScreenStatus { initial, loading, loaded, error }

class HabitScreenState extends Equatable {
  final HabitScreenStatus status;
  final List<HabitModel> allHabits;
  final DateTime selectedDate;
  final List<HabitModel> habitsForSelectedDay;
  final CalendarFormat calendarFormat;
  final Set<DateTime> markedDates;

  const HabitScreenState({
    required this.status,
    required this.allHabits,
    required this.selectedDate,
    required this.habitsForSelectedDay,
    required this.calendarFormat,
    required this.markedDates,
  });

  factory HabitScreenState.initial() => HabitScreenState(
        status: HabitScreenStatus.initial,
        allHabits: const [],
        selectedDate: DateTime.now(),
        habitsForSelectedDay: const [],
        calendarFormat: CalendarFormat.week,
        markedDates: const {},
      );

  HabitScreenState copyWith({
    HabitScreenStatus? status,
    List<HabitModel>? allHabits,
    DateTime? selectedDate,
    List<HabitModel>? habitsForSelectedDay,
    CalendarFormat? calendarFormat,
    Set<DateTime>? markedDates,
  }) {
    return HabitScreenState(
      status: status ?? this.status,
      allHabits: allHabits ?? this.allHabits,
      selectedDate: selectedDate ?? this.selectedDate,
      habitsForSelectedDay: habitsForSelectedDay ?? this.habitsForSelectedDay,
      calendarFormat: calendarFormat ?? this.calendarFormat,
      markedDates: markedDates ?? this.markedDates,
    );
  }

  @override
  List<Object?> get props => [
        status,
        allHabits,
        selectedDate,
        habitsForSelectedDay,
        calendarFormat,
        markedDates,
      ];
}
