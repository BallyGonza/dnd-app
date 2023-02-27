// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_health_points_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterHealthPointsState _$CharacterHealthPointsStateFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'init':
      return CharacterHealthPointsInitial.fromJson(json);
    case 'updated':
      return CharacterHealthPointsUpdated.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'CharacterHealthPointsState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$CharacterHealthPointsState {
  int get current => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int current) init,
    required TResult Function(int current) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int current)? init,
    TResult? Function(int current)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int current)? init,
    TResult Function(int current)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterHealthPointsInitial value) init,
    required TResult Function(CharacterHealthPointsUpdated value) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterHealthPointsInitial value)? init,
    TResult? Function(CharacterHealthPointsUpdated value)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterHealthPointsInitial value)? init,
    TResult Function(CharacterHealthPointsUpdated value)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterHealthPointsStateCopyWith<CharacterHealthPointsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterHealthPointsStateCopyWith<$Res> {
  factory $CharacterHealthPointsStateCopyWith(CharacterHealthPointsState value,
          $Res Function(CharacterHealthPointsState) then) =
      _$CharacterHealthPointsStateCopyWithImpl<$Res,
          CharacterHealthPointsState>;
  @useResult
  $Res call({int current});
}

/// @nodoc
class _$CharacterHealthPointsStateCopyWithImpl<$Res,
        $Val extends CharacterHealthPointsState>
    implements $CharacterHealthPointsStateCopyWith<$Res> {
  _$CharacterHealthPointsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterHealthPointsInitialCopyWith<$Res>
    implements $CharacterHealthPointsStateCopyWith<$Res> {
  factory _$$CharacterHealthPointsInitialCopyWith(
          _$CharacterHealthPointsInitial value,
          $Res Function(_$CharacterHealthPointsInitial) then) =
      __$$CharacterHealthPointsInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int current});
}

/// @nodoc
class __$$CharacterHealthPointsInitialCopyWithImpl<$Res>
    extends _$CharacterHealthPointsStateCopyWithImpl<$Res,
        _$CharacterHealthPointsInitial>
    implements _$$CharacterHealthPointsInitialCopyWith<$Res> {
  __$$CharacterHealthPointsInitialCopyWithImpl(
      _$CharacterHealthPointsInitial _value,
      $Res Function(_$CharacterHealthPointsInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
  }) {
    return _then(_$CharacterHealthPointsInitial(
      null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterHealthPointsInitial implements CharacterHealthPointsInitial {
  const _$CharacterHealthPointsInitial(this.current, {final String? $type})
      : $type = $type ?? 'init';

  factory _$CharacterHealthPointsInitial.fromJson(Map<String, dynamic> json) =>
      _$$CharacterHealthPointsInitialFromJson(json);

  @override
  final int current;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CharacterHealthPointsState.init(current: $current)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterHealthPointsInitial &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterHealthPointsInitialCopyWith<_$CharacterHealthPointsInitial>
      get copyWith => __$$CharacterHealthPointsInitialCopyWithImpl<
          _$CharacterHealthPointsInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int current) init,
    required TResult Function(int current) updated,
  }) {
    return init(current);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int current)? init,
    TResult? Function(int current)? updated,
  }) {
    return init?.call(current);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int current)? init,
    TResult Function(int current)? updated,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(current);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterHealthPointsInitial value) init,
    required TResult Function(CharacterHealthPointsUpdated value) updated,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterHealthPointsInitial value)? init,
    TResult? Function(CharacterHealthPointsUpdated value)? updated,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterHealthPointsInitial value)? init,
    TResult Function(CharacterHealthPointsUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterHealthPointsInitialToJson(
      this,
    );
  }
}

abstract class CharacterHealthPointsInitial
    implements CharacterHealthPointsState {
  const factory CharacterHealthPointsInitial(final int current) =
      _$CharacterHealthPointsInitial;

  factory CharacterHealthPointsInitial.fromJson(Map<String, dynamic> json) =
      _$CharacterHealthPointsInitial.fromJson;

  @override
  int get current;
  @override
  @JsonKey(ignore: true)
  _$$CharacterHealthPointsInitialCopyWith<_$CharacterHealthPointsInitial>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharacterHealthPointsUpdatedCopyWith<$Res>
    implements $CharacterHealthPointsStateCopyWith<$Res> {
  factory _$$CharacterHealthPointsUpdatedCopyWith(
          _$CharacterHealthPointsUpdated value,
          $Res Function(_$CharacterHealthPointsUpdated) then) =
      __$$CharacterHealthPointsUpdatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int current});
}

/// @nodoc
class __$$CharacterHealthPointsUpdatedCopyWithImpl<$Res>
    extends _$CharacterHealthPointsStateCopyWithImpl<$Res,
        _$CharacterHealthPointsUpdated>
    implements _$$CharacterHealthPointsUpdatedCopyWith<$Res> {
  __$$CharacterHealthPointsUpdatedCopyWithImpl(
      _$CharacterHealthPointsUpdated _value,
      $Res Function(_$CharacterHealthPointsUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
  }) {
    return _then(_$CharacterHealthPointsUpdated(
      null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterHealthPointsUpdated implements CharacterHealthPointsUpdated {
  const _$CharacterHealthPointsUpdated(this.current, {final String? $type})
      : $type = $type ?? 'updated';

  factory _$CharacterHealthPointsUpdated.fromJson(Map<String, dynamic> json) =>
      _$$CharacterHealthPointsUpdatedFromJson(json);

  @override
  final int current;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CharacterHealthPointsState.updated(current: $current)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterHealthPointsUpdated &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterHealthPointsUpdatedCopyWith<_$CharacterHealthPointsUpdated>
      get copyWith => __$$CharacterHealthPointsUpdatedCopyWithImpl<
          _$CharacterHealthPointsUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int current) init,
    required TResult Function(int current) updated,
  }) {
    return updated(current);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int current)? init,
    TResult? Function(int current)? updated,
  }) {
    return updated?.call(current);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int current)? init,
    TResult Function(int current)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(current);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterHealthPointsInitial value) init,
    required TResult Function(CharacterHealthPointsUpdated value) updated,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterHealthPointsInitial value)? init,
    TResult? Function(CharacterHealthPointsUpdated value)? updated,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterHealthPointsInitial value)? init,
    TResult Function(CharacterHealthPointsUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterHealthPointsUpdatedToJson(
      this,
    );
  }
}

abstract class CharacterHealthPointsUpdated
    implements CharacterHealthPointsState {
  const factory CharacterHealthPointsUpdated(final int current) =
      _$CharacterHealthPointsUpdated;

  factory CharacterHealthPointsUpdated.fromJson(Map<String, dynamic> json) =
      _$CharacterHealthPointsUpdated.fromJson;

  @override
  int get current;
  @override
  @JsonKey(ignore: true)
  _$$CharacterHealthPointsUpdatedCopyWith<_$CharacterHealthPointsUpdated>
      get copyWith => throw _privateConstructorUsedError;
}
