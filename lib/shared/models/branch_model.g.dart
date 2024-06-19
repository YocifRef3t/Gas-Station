// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BrancheModelAdapter extends TypeAdapter<BrancheModel> {
  @override
  final int typeId = 2;

  @override
  BrancheModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BrancheModel(
      name: fields[0] as String?,
      id: fields[1] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, BrancheModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BrancheModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
