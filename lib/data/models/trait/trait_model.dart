import 'package:hive/hive.dart';

part 'trait_model.g.dart';

@HiveType(typeId: 9)
class TraitModel {
  TraitModel({
    required this.name,
    required this.description,
  });
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String description;
}
