import 'package:hive/hive.dart';

part 'health_points_model.g.dart';

@HiveType(typeId: 1)
class HealthPointsModel {
  @HiveField(0)
  int current;
  @HiveField(1)
  int max;

  HealthPointsModel({
    required this.current,
    required this.max,
  });

  void add() {
    current += 1;
    if (current > max) {
      current = max;
    }
  }

  void subtract() {
    current -= 1;
    if (current < 0) {
      current = 0;
    }
  }

  void reset() {
    current = max;
  }
}
