// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_info_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class Notes extends TypeAdapter<NotesInfo> {
  @override
  final int typeId = 0;

  @override
  NotesInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NotesInfo(
      title: fields[0] as String,
      description: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, NotesInfo obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Notes &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
