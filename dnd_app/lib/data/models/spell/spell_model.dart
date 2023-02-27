class Spell {
  final String name;
  final int level;
  final String range;
  final String castTime;
  final String duration;
  final List<String> comp;
  final List<String> description;

  Spell({
    required this.name,
    required this.level,
    required this.range,
    required this.castTime,
    required this.duration,
    required this.comp,
    required this.description,
  });
}
