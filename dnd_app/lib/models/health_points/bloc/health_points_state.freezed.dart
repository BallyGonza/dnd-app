// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_points_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HealthPointsState _$HealthPointsStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'init':
      return HealthPointsInitial.fromJson(json);
    case 'added':
      return HealthPointsAdded.fromJson(json);
    case 'subtracted':
      return HealthPointsSubtracted.fromJson(json);
    case 'reset':
      return HealthPointsReset.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'HealthPointsState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$HealthPointsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() added,
    required TResult Function() subtracted,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? added,
    TResult? Function()? subtracted,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? added,
    TResult Function()? subtracted,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HealthPointsInitial value) init,
    required TResult Function(HealthPointsAdded value) added,
    required TResult Function(HealthPointsSubtracted value) subtracted,
    required TResult Function(HealthPointsReset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HealthPointsInitial value)? init,
    TResult? Function(HealthPointsAdded value)? added,
    TResult? Function(HealthPointsSubtracted value)? subtracted,
    TResult? Function(HealthPointsReset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HealthPointsInitial value)? init,
    TResult Function(HealthPointsAdded value)? added,
    TResult Function(HealthPointsSubtracted value)? subtracted,
    TResult Function(HealthPointsReset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthPointsStateCopyWith<$Res> {
  factory $HealthPointsStateCopyWith(
          HealthPointsState value, $Res Function(HealthPointsState) then) =
      _$HealthPointsStateCopyWithImpl<$Res, HealthPointsState>;
}

/// @nodoc
class _$HealthPointsStateCopyWithImpl<$Res, $Val extends HealthPointsState>
    implements $HealthPointsStateCopyWith<$Res> {
  _$HealthPointsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HealthPointsInitialCopyWith<$Res> {
  factory _$$HealthPointsInitialCopyWith(_$HealthPointsInitial value,
          $Res Function(_$HealthPointsInitial) then) =
      __$$HealthPointsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HealthPointsInitialCopyWithImpl<$Res>
    extends _$HealthPointsStateCopyWithImpl<$Res, _$HealthPointsInitial>
    implements _$$HealthPointsInitialCopyWith<$Res> {
  __$$HealthPointsInitialCopyWithImpl(
      _$HealthPointsInitial _value, $Res Function(_$HealthPointsInitial) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$HealthPointsInitial implements HealthPointsInitial {
  const _$HealthPointsInitial({final String? $type}) : $type = $type ?? 'init';

  factory _$HealthPointsInitial.fromJson(Map<String, dynamic> json) =>
      _$$HealthPointsInitialFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HealthPointsState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HealthPointsInitial);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() added,
    required TResult Function() subtracted,
    required TResult Function() reset,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? added,
    TResult? Function()? subtracted,
    TResult? Function()? reset,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? added,
    TResult Function()? subtracted,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HealthPointsInitial value) init,
    required TResult Function(HealthPointsAdded value) added,
    required TResult Function(HealthPointsSubtracted value) subtracted,
    required TResult Function(HealthPointsReset value) reset,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HealthPointsInitial value)? init,
    TResult? Function(HealthPointsAdded value)? added,
    TResult? Function(HealthPointsSubtracted value)? subtracted,
    TResult? Function(HealthPointsReset value)? reset,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HealthPointsInitial value)? init,
    TResult Function(HealthPointsAdded value)? added,
    TResult Function(HealthPointsSubtracted value)? subtracted,
    TResult Function(HealthPointsReset value)? reset,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthPointsInitialToJson(
      this,
    );
  }
}

abstract class HealthPointsInitial implements HealthPointsState {
  const factory HealthPointsInitial() = _$HealthPointsInitial;

  factory HealthPointsInitial.fromJson(Map<String, dynamic> json) =
      _$HealthPointsInitial.fromJson;
}

/// @nodoc
abstract class _$$HealthPointsAddedCopyWith<$Res> {
  factory _$$HealthPointsAddedCopyWith(
          _$HealthPointsAdded value, $Res Function(_$HealthPointsAdded) then) =
      __$$HealthPointsAddedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HealthPointsAddedCopyWithImpl<$Res>
    extends _$HealthPointsStateCopyWithImpl<$Res, _$HealthPointsAdded>
    implements _$$HealthPointsAddedCopyWith<$Res> {
  __$$HealthPointsAddedCopyWithImpl(
      _$HealthPointsAdded _value, $Res Function(_$HealthPointsAdded) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$HealthPointsAdded implements HealthPointsAdded {
  const _$HealthPointsAdded({final String? $type}) : $type = $type ?? 'added';

  factory _$HealthPointsAdded.fromJson(Map<String, dynamic> json) =>
      _$$HealthPointsAddedFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HealthPointsState.added()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HealthPointsAdded);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() added,
    required TResult Function() subtracted,
    required TResult Function() reset,
  }) {
    return added();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? added,
    TResult? Function()? subtracted,
    TResult? Function()? reset,
  }) {
    return added?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? added,
    TResult Function()? subtracted,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HealthPointsInitial value) init,
    required TResult Function(HealthPointsAdded value) added,
    required TResult Function(HealthPointsSubtracted value) subtracted,
    required TResult Function(HealthPointsReset value) reset,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HealthPointsInitial value)? init,
    TResult? Function(HealthPointsAdded value)? added,
    TResult? Function(HealthPointsSubtracted value)? subtracted,
    TResult? Function(HealthPointsReset value)? reset,
  }) {
    return added?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HealthPointsInitial value)? init,
    TResult Function(HealthPointsAdded value)? added,
    TResult Function(HealthPointsSubtracted value)? subtracted,
    TResult Function(HealthPointsReset value)? reset,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthPointsAddedToJson(
      this,
    );
  }
}

abstract class HealthPointsAdded implements HealthPointsState {
  const factory HealthPointsAdded() = _$HealthPointsAdded;

  factory HealthPointsAdded.fromJson(Map<String, dynamic> json) =
      _$HealthPointsAdded.fromJson;
}

/// @nodoc
abstract class _$$HealthPointsSubtractedCopyWith<$Res> {
  factory _$$HealthPointsSubtractedCopyWith(_$HealthPointsSubtracted value,
          $Res Function(_$HealthPointsSubtracted) then) =
      __$$HealthPointsSubtractedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HealthPointsSubtractedCopyWithImpl<$Res>
    extends _$HealthPointsStateCopyWithImpl<$Res, _$HealthPointsSubtracted>
    implements _$$HealthPointsSubtractedCopyWith<$Res> {
  __$$HealthPointsSubtractedCopyWithImpl(_$HealthPointsSubtracted _value,
      $Res Function(_$HealthPointsSubtracted) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$HealthPointsSubtracted implements HealthPointsSubtracted {
  const _$HealthPointsSubtracted({final String? $type})
      : $type = $type ?? 'subtracted';

  factory _$HealthPointsSubtracted.fromJson(Map<String, dynamic> json) =>
      _$$HealthPointsSubtractedFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HealthPointsState.subtracted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HealthPointsSubtracted);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() added,
    required TResult Function() subtracted,
    required TResult Function() reset,
  }) {
    return subtracted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? added,
    TResult? Function()? subtracted,
    TResult? Function()? reset,
  }) {
    return subtracted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? added,
    TResult Function()? subtracted,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (subtracted != null) {
      return subtracted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HealthPointsInitial value) init,
    required TResult Function(HealthPointsAdded value) added,
    required TResult Function(HealthPointsSubtracted value) subtracted,
    required TResult Function(HealthPointsReset value) reset,
  }) {
    return subtracted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HealthPointsInitial value)? init,
    TResult? Function(HealthPointsAdded value)? added,
    TResult? Function(HealthPointsSubtracted value)? subtracted,
    TResult? Function(HealthPointsReset value)? reset,
  }) {
    return subtracted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HealthPointsInitial value)? init,
    TResult Function(HealthPointsAdded value)? added,
    TResult Function(HealthPointsSubtracted value)? subtracted,
    TResult Function(HealthPointsReset value)? reset,
    required TResult orElse(),
  }) {
    if (subtracted != null) {
      return subtracted(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthPointsSubtractedToJson(
      this,
    );
  }
}

abstract class HealthPointsSubtracted implements HealthPointsState {
  const factory HealthPointsSubtracted() = _$HealthPointsSubtracted;

  factory HealthPointsSubtracted.fromJson(Map<String, dynamic> json) =
      _$HealthPointsSubtracted.fromJson;
}

/// @nodoc
abstract class _$$HealthPointsResetCopyWith<$Res> {
  factory _$$HealthPointsResetCopyWith(
          _$HealthPointsReset value, $Res Function(_$HealthPointsReset) then) =
      __$$HealthPointsResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HealthPointsResetCopyWithImpl<$Res>
    extends _$HealthPointsStateCopyWithImpl<$Res, _$HealthPointsReset>
    implements _$$HealthPointsResetCopyWith<$Res> {
  __$$HealthPointsResetCopyWithImpl(
      _$HealthPointsReset _value, $Res Function(_$HealthPointsReset) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$HealthPointsReset implements HealthPointsReset {
  const _$HealthPointsReset({final String? $type}) : $type = $type ?? 'reset';

  factory _$HealthPointsReset.fromJson(Map<String, dynamic> json) =>
      _$$HealthPointsResetFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HealthPointsState.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HealthPointsReset);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() added,
    required TResult Function() subtracted,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? added,
    TResult? Function()? subtracted,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? added,
    TResult Function()? subtracted,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HealthPointsInitial value) init,
    required TResult Function(HealthPointsAdded value) added,
    required TResult Function(HealthPointsSubtracted value) subtracted,
    required TResult Function(HealthPointsReset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HealthPointsInitial value)? init,
    TResult? Function(HealthPointsAdded value)? added,
    TResult? Function(HealthPointsSubtracted value)? subtracted,
    TResult? Function(HealthPointsReset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HealthPointsInitial value)? init,
    TResult Function(HealthPointsAdded value)? added,
    TResult Function(HealthPointsSubtracted value)? subtracted,
    TResult Function(HealthPointsReset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthPointsResetToJson(
      this,
    );
  }
}

abstract class HealthPointsReset implements HealthPointsState {
  const factory HealthPointsReset() = _$HealthPointsReset;

  factory HealthPointsReset.fromJson(Map<String, dynamic> json) =
      _$HealthPointsReset.fromJson;
}
