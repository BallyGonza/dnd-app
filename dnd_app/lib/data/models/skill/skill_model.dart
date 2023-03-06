import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'skill_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 7)
class Skill {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int modifier;
  @HiveField(2)
  final bool proficiency;

  Skill({
    required this.name,
    required this.modifier,
    required this.proficiency,
  });

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);

  Map<String, dynamic> toJson() => _$SkillToJson(this);
}
