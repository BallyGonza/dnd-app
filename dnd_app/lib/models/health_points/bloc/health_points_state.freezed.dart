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
    case 'updated':
      return HealthPointsUpdated.fromJson(json);

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
    required TResult Function() updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HealthPointsInitial value) init,
    required TResult Function(HealthPointsUpdated value) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HealthPointsInitial value)? init,
    TResult? Function(HealthPointsUpdated value)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HealthPointsInitial value)? init,
    TResult Function(HealthPointsUpdated value)? updated,
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
    required TResult Function() updated,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? updated,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updated,
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
    required TResult Function(HealthPointsUpdated value) updated,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HealthPointsInitial value)? init,
    TResult? Function(HealthPointsUpdated value)? updated,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HealthPointsInitial value)? init,
    TResult Function(HealthPointsUpdated value)? updated,
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
abstract class _$$HealthPointsUpdatedCopyWith<$Res> {
  factory _$$HealthPointsUpdatedCopyWith(_$HealthPointsUpdated value,
          $Res Function(_$HealthPointsUpdated) then) =
      __$$HealthPointsUpdatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HealthPointsUpdatedCopyWithImpl<$Res>
    extends _$HealthPointsStateCopyWithImpl<$Res, _$HealthPointsUpdated>
    implements _$$HealthPointsUpdatedCopyWith<$Res> {
  __$$HealthPointsUpdatedCopyWithImpl(
      _$HealthPointsUpdated _value, $Res Function(_$HealthPointsUpdated) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$HealthPointsUpdated implements HealthPointsUpdated {
  const _$HealthPointsUpdated({final String? $type})
      : $type = $type ?? 'updated';

  factory _$HealthPointsUpdated.fromJson(Map<String, dynamic> json) =>
      _$$HealthPointsUpdatedFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HealthPointsState.updated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HealthPointsUpdated);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() updated,
  }) {
    return updated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? updated,
  }) {
    return updated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HealthPointsInitial value) init,
    required TResult Function(HealthPointsUpdated value) updated,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HealthPointsInitial value)? init,
    TResult? Function(HealthPointsUpdated value)? updated,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HealthPointsInitial value)? init,
    TResult Function(HealthPointsUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthPointsUpdatedToJson(
      this,
    );
  }
}

abstract class HealthPointsUpdated implements HealthPointsState {
  const factory HealthPointsUpdated() = _$HealthPointsUpdated;

  factory HealthPointsUpdated.fromJson(Map<String, dynamic> json) =
      _$HealthPointsUpdated.fromJson;
}
