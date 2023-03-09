// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pet_health_points_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PetHealthPointsState _$PetHealthPointsStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'init':
      return PetHealthPointsInitial.fromJson(json);
    case 'updated':
      return PetHealthPointsUpdated.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'PetHealthPointsState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PetHealthPointsState {
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
    required TResult Function(PetHealthPointsInitial value) init,
    required TResult Function(PetHealthPointsUpdated value) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PetHealthPointsInitial value)? init,
    TResult? Function(PetHealthPointsUpdated value)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PetHealthPointsInitial value)? init,
    TResult Function(PetHealthPointsUpdated value)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetHealthPointsStateCopyWith<PetHealthPointsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetHealthPointsStateCopyWith<$Res> {
  factory $PetHealthPointsStateCopyWith(PetHealthPointsState value,
          $Res Function(PetHealthPointsState) then) =
      _$PetHealthPointsStateCopyWithImpl<$Res, PetHealthPointsState>;
  @useResult
  $Res call({int current});
}

/// @nodoc
class _$PetHealthPointsStateCopyWithImpl<$Res,
        $Val extends PetHealthPointsState>
    implements $PetHealthPointsStateCopyWith<$Res> {
  _$PetHealthPointsStateCopyWithImpl(this._value, this._then);

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
abstract class _$$PetHealthPointsInitialCopyWith<$Res>
    implements $PetHealthPointsStateCopyWith<$Res> {
  factory _$$PetHealthPointsInitialCopyWith(_$PetHealthPointsInitial value,
          $Res Function(_$PetHealthPointsInitial) then) =
      __$$PetHealthPointsInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int current});
}

/// @nodoc
class __$$PetHealthPointsInitialCopyWithImpl<$Res>
    extends _$PetHealthPointsStateCopyWithImpl<$Res, _$PetHealthPointsInitial>
    implements _$$PetHealthPointsInitialCopyWith<$Res> {
  __$$PetHealthPointsInitialCopyWithImpl(_$PetHealthPointsInitial _value,
      $Res Function(_$PetHealthPointsInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
  }) {
    return _then(_$PetHealthPointsInitial(
      null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PetHealthPointsInitial implements PetHealthPointsInitial {
  const _$PetHealthPointsInitial(this.current, {final String? $type})
      : $type = $type ?? 'init';

  factory _$PetHealthPointsInitial.fromJson(Map<String, dynamic> json) =>
      _$$PetHealthPointsInitialFromJson(json);

  @override
  final int current;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PetHealthPointsState.init(current: $current)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetHealthPointsInitial &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PetHealthPointsInitialCopyWith<_$PetHealthPointsInitial> get copyWith =>
      __$$PetHealthPointsInitialCopyWithImpl<_$PetHealthPointsInitial>(
          this, _$identity);

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
    required TResult Function(PetHealthPointsInitial value) init,
    required TResult Function(PetHealthPointsUpdated value) updated,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PetHealthPointsInitial value)? init,
    TResult? Function(PetHealthPointsUpdated value)? updated,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PetHealthPointsInitial value)? init,
    TResult Function(PetHealthPointsUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PetHealthPointsInitialToJson(
      this,
    );
  }
}

abstract class PetHealthPointsInitial implements PetHealthPointsState {
  const factory PetHealthPointsInitial(final int current) =
      _$PetHealthPointsInitial;

  factory PetHealthPointsInitial.fromJson(Map<String, dynamic> json) =
      _$PetHealthPointsInitial.fromJson;

  @override
  int get current;
  @override
  @JsonKey(ignore: true)
  _$$PetHealthPointsInitialCopyWith<_$PetHealthPointsInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PetHealthPointsUpdatedCopyWith<$Res>
    implements $PetHealthPointsStateCopyWith<$Res> {
  factory _$$PetHealthPointsUpdatedCopyWith(_$PetHealthPointsUpdated value,
          $Res Function(_$PetHealthPointsUpdated) then) =
      __$$PetHealthPointsUpdatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int current});
}

/// @nodoc
class __$$PetHealthPointsUpdatedCopyWithImpl<$Res>
    extends _$PetHealthPointsStateCopyWithImpl<$Res, _$PetHealthPointsUpdated>
    implements _$$PetHealthPointsUpdatedCopyWith<$Res> {
  __$$PetHealthPointsUpdatedCopyWithImpl(_$PetHealthPointsUpdated _value,
      $Res Function(_$PetHealthPointsUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
  }) {
    return _then(_$PetHealthPointsUpdated(
      null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PetHealthPointsUpdated implements PetHealthPointsUpdated {
  const _$PetHealthPointsUpdated(this.current, {final String? $type})
      : $type = $type ?? 'updated';

  factory _$PetHealthPointsUpdated.fromJson(Map<String, dynamic> json) =>
      _$$PetHealthPointsUpdatedFromJson(json);

  @override
  final int current;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PetHealthPointsState.updated(current: $current)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetHealthPointsUpdated &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PetHealthPointsUpdatedCopyWith<_$PetHealthPointsUpdated> get copyWith =>
      __$$PetHealthPointsUpdatedCopyWithImpl<_$PetHealthPointsUpdated>(
          this, _$identity);

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
    required TResult Function(PetHealthPointsInitial value) init,
    required TResult Function(PetHealthPointsUpdated value) updated,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PetHealthPointsInitial value)? init,
    TResult? Function(PetHealthPointsUpdated value)? updated,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PetHealthPointsInitial value)? init,
    TResult Function(PetHealthPointsUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PetHealthPointsUpdatedToJson(
      this,
    );
  }
}

abstract class PetHealthPointsUpdated implements PetHealthPointsState {
  const factory PetHealthPointsUpdated(final int current) =
      _$PetHealthPointsUpdated;

  factory PetHealthPointsUpdated.fromJson(Map<String, dynamic> json) =
      _$PetHealthPointsUpdated.fromJson;

  @override
  int get current;
  @override
  @JsonKey(ignore: true)
  _$$PetHealthPointsUpdatedCopyWith<_$PetHealthPointsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}