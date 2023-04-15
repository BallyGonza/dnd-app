import 'package:freezed_annotation/freezed_annotation.dart';

part 'wild_form_health_points_state.freezed.dart';

@freezed
class WildFormHealthPointsState with _$WildFormHealthPointsState {
  const factory WildFormHealthPointsState.initial() =
      WildFormHealthPointsInitial;
  const factory WildFormHealthPointsState.loading() =
      WildFormHealthPointsLoading;
  const factory WildFormHealthPointsState.loaded(
    int current,
  ) = WildFormHealthPointsUpdated;
}
