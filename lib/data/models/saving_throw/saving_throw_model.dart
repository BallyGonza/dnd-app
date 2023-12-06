import 'package:hive/hive.dart';

part 'saving_throw_model.g.dart';

@HiveType(typeId: 6)
class SavingThrowModel {
  SavingThrowModel({
    required this.name,
    required this.modifier,
    required this.proficiency,
  });
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int modifier;
  @HiveField(2)
  final bool proficiency;
}
