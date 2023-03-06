import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'ability_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 3)
class Ability {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int score;
  @HiveField(2)
  final int modifier;

  Ability({
    required this.name,
    required this.score,
    required this.modifier,
  });

  factory Ability.fromJson(Map<String, dynamic> json) =>
      _$AbilityFromJson(json);

  Map<String, dynamic> toJson() => _$AbilityToJson(this);
}
