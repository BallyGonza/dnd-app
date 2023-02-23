class HealthPoints {
  int current;
  int max;

  HealthPoints({required this.current, required this.max});

  HealthPoints copyWith({
    int? current,
    int? max,
  }) {
    return HealthPoints(
      current: current ?? this.current,
      max: max ?? this.max,
    );
  }

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

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'current': current,
//       'max': max,
//     };
//   }

//   factory HealthPoints.fromMap(Map<String, dynamic> map) {
//     return HealthPoints(
//       current: map['current'] as int,
//       max: map['max'] as int,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory HealthPoints.fromJson(String source) =>
//       HealthPoints.fromMap(json.decode(source) as Map<String, dynamic>);
// }
}
