import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 11)
class Note extends HiveObject {
  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.date,
    required this.color,
  });
  @HiveField(0)
  final int id;
  @HiveField(1)
  String title;
  @HiveField(2)
  String content;
  @HiveField(3)
  String date;
  @HiveField(4)
  int color;
}
