import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'saving_throw_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 6)
class SavingThrow {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int modifier;
  @HiveField(2)
  final bool proficiency;

  SavingThrow({
    required this.name,
    required this.modifier,
    required this.proficiency,
  });

  factory SavingThrow.fromJson(Map<String, dynamic> json) =>
      _$SavingThrowFromJson(json);

  Map<String, dynamic> toJson() => _$SavingThrowToJson(this);
}
