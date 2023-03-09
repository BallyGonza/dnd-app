import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'note_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 11)
class Note extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String content;
  @HiveField(2)
  String date;
  @HiveField(3)
  int color;

  Note({
    required this.title,
    required this.content,
    required this.date,
    required this.color,
  });

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);

  Map<String, dynamic> toJson() => _$NoteToJson(this);
}
