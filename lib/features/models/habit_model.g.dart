// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HabitModelAdapter extends TypeAdapter<HabitModel> {
  @override
  final int typeId = 2;

  @override
  HabitModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HabitModel(
      id: fields[0] as String,
      name: fields[1] as String,
      description: fields[2] as String?,
      recurrenceType: fields[3] as HabitRecurrenceType,
      daysOfWeek: (fields[4] as List?)?.cast<int>(),
      interval: fields[5] as int?,
      creationDate: fields[6] as DateTime,
      completedDates: (fields[7] as Map).cast<String, bool>(),
    );
  }

  @override
  void write(BinaryWriter writer, HabitModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.recurrenceType)
      ..writeByte(4)
      ..write(obj.daysOfWeek)
      ..writeByte(5)
      ..write(obj.interval)
      ..writeByte(6)
      ..write(obj.creationDate)
      ..writeByte(7)
      ..write(obj.completedDates);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HabitModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HabitRecurrenceTypeAdapter extends TypeAdapter<HabitRecurrenceType> {
  @override
  final int typeId = 3;

  @override
  HabitRecurrenceType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return HabitRecurrenceType.daily;
      case 1:
        return HabitRecurrenceType.weekly;
      case 2:
        return HabitRecurrenceType.everyXDays;
      default:
        return HabitRecurrenceType.daily;
    }
  }

  @override
  void write(BinaryWriter writer, HabitRecurrenceType obj) {
    switch (obj) {
      case HabitRecurrenceType.daily:
        writer.writeByte(0);
        break;
      case HabitRecurrenceType.weekly:
        writer.writeByte(1);
        break;
      case HabitRecurrenceType.everyXDays:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HabitRecurrenceTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
