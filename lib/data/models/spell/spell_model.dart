import 'package:hive/hive.dart';

part 'spell_model.g.dart';

@HiveType(typeId: 8)
class SpellModel {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String level;
  @HiveField(2)
  final String range;
  @HiveField(3)
  final String castTime;
  @HiveField(4)
  final String duration;
  @HiveField(5)
  final String comp;
  @HiveField(6)
  final String description;

  SpellModel({
    required this.name,
    required this.level,
    required this.range,
    required this.castTime,
    required this.duration,
    required this.comp,
    required this.description,
  });
}
