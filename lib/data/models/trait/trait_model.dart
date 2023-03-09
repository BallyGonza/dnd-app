import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'trait_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 9)
class Trait {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String description;

  Trait({
    required this.name,
    required this.description,
  });

  factory Trait.fromJson(Map<String, dynamic> json) => _$TraitFromJson(json);

  Map<String, dynamic> toJson() => _$TraitToJson(this);
}
