import 'package:freezed_annotation/freezed_annotation.dart';

part 'wild_form_hp_state.freezed.dart';

@freezed
class WildFormHPState with _$WildFormHPState {
  const factory WildFormHPState.initial() = WildFormHPInitial;
  const factory WildFormHPState.loading() = WildFormHPLoading;
  const factory WildFormHPState.loaded(
    int current,
  ) = WildFormHPUpdated;
}
