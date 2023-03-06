import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'background_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 4)
class Background {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String description;

  Background({
    required this.name,
    required this.description,
  });

  factory Background.fromJson(Map<String, dynamic> json) =>
      _$BackgroundFromJson(json);

  Map<String, dynamic> toJson() => _$BackgroundToJson(this);
}
