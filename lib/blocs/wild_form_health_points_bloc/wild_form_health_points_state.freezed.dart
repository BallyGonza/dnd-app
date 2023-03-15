// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wild_form_health_points_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WildFormHealthPointsState _$WildFormHealthPointsStateFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'init':
      return WildFormHealthPointsInitial.fromJson(json);
    case 'updated':
      return WildFormHealthPointsUpdated.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'WildFormHealthPointsState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$WildFormHealthPointsState {
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
    required TResult Function(WildFormHealthPointsInitial value) init,
    required TResult Function(WildFormHealthPointsUpdated value) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WildFormHealthPointsInitial value)? init,
    TResult? Function(WildFormHealthPointsUpdated value)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WildFormHealthPointsInitial value)? init,
    TResult Function(WildFormHealthPointsUpdated value)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WildFormHealthPointsStateCopyWith<WildFormHealthPointsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WildFormHealthPointsStateCopyWith<$Res> {
  factory $WildFormHealthPointsStateCopyWith(WildFormHealthPointsState value,
          $Res Function(WildFormHealthPointsState) then) =
      _$WildFormHealthPointsStateCopyWithImpl<$Res, WildFormHealthPointsState>;
  @useResult
  $Res call({int current});
}

/// @nodoc
class _$WildFormHealthPointsStateCopyWithImpl<$Res,
        $Val extends WildFormHealthPointsState>
    implements $WildFormHealthPointsStateCopyWith<$Res> {
  _$WildFormHealthPointsStateCopyWithImpl(this._value, this._then);

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
abstract class _$$WildFormHealthPointsInitialCopyWith<$Res>
    implements $WildFormHealthPointsStateCopyWith<$Res> {
  factory _$$WildFormHealthPointsInitialCopyWith(
          _$WildFormHealthPointsInitial value,
          $Res Function(_$WildFormHealthPointsInitial) then) =
      __$$WildFormHealthPointsInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int current});
}

/// @nodoc
class __$$WildFormHealthPointsInitialCopyWithImpl<$Res>
    extends _$WildFormHealthPointsStateCopyWithImpl<$Res,
        _$WildFormHealthPointsInitial>
    implements _$$WildFormHealthPointsInitialCopyWith<$Res> {
  __$$WildFormHealthPointsInitialCopyWithImpl(
      _$WildFormHealthPointsInitial _value,
      $Res Function(_$WildFormHealthPointsInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
  }) {
    return _then(_$WildFormHealthPointsInitial(
      null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WildFormHealthPointsInitial implements WildFormHealthPointsInitial {
  const _$WildFormHealthPointsInitial(this.current, {final String? $type})
      : $type = $type ?? 'init';

  factory _$WildFormHealthPointsInitial.fromJson(Map<String, dynamic> json) =>
      _$$WildFormHealthPointsInitialFromJson(json);

  @override
  final int current;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WildFormHealthPointsState.init(current: $current)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WildFormHealthPointsInitial &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WildFormHealthPointsInitialCopyWith<_$WildFormHealthPointsInitial>
      get copyWith => __$$WildFormHealthPointsInitialCopyWithImpl<
          _$WildFormHealthPointsInitial>(this, _$identity);

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
    required TResult Function(WildFormHealthPointsInitial value) init,
    required TResult Function(WildFormHealthPointsUpdated value) updated,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WildFormHealthPointsInitial value)? init,
    TResult? Function(WildFormHealthPointsUpdated value)? updated,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WildFormHealthPointsInitial value)? init,
    TResult Function(WildFormHealthPointsUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WildFormHealthPointsInitialToJson(
      this,
    );
  }
}

abstract class WildFormHealthPointsInitial
    implements WildFormHealthPointsState {
  const factory WildFormHealthPointsInitial(final int current) =
      _$WildFormHealthPointsInitial;

  factory WildFormHealthPointsInitial.fromJson(Map<String, dynamic> json) =
      _$WildFormHealthPointsInitial.fromJson;

  @override
  int get current;
  @override
  @JsonKey(ignore: true)
  _$$WildFormHealthPointsInitialCopyWith<_$WildFormHealthPointsInitial>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WildFormHealthPointsUpdatedCopyWith<$Res>
    implements $WildFormHealthPointsStateCopyWith<$Res> {
  factory _$$WildFormHealthPointsUpdatedCopyWith(
          _$WildFormHealthPointsUpdated value,
          $Res Function(_$WildFormHealthPointsUpdated) then) =
      __$$WildFormHealthPointsUpdatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int current});
}

/// @nodoc
class __$$WildFormHealthPointsUpdatedCopyWithImpl<$Res>
    extends _$WildFormHealthPointsStateCopyWithImpl<$Res,
        _$WildFormHealthPointsUpdated>
    implements _$$WildFormHealthPointsUpdatedCopyWith<$Res> {
  __$$WildFormHealthPointsUpdatedCopyWithImpl(
      _$WildFormHealthPointsUpdated _value,
      $Res Function(_$WildFormHealthPointsUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
  }) {
    return _then(_$WildFormHealthPointsUpdated(
      null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WildFormHealthPointsUpdated implements WildFormHealthPointsUpdated {
  const _$WildFormHealthPointsUpdated(this.current, {final String? $type})
      : $type = $type ?? 'updated';

  factory _$WildFormHealthPointsUpdated.fromJson(Map<String, dynamic> json) =>
      _$$WildFormHealthPointsUpdatedFromJson(json);

  @override
  final int current;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WildFormHealthPointsState.updated(current: $current)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WildFormHealthPointsUpdated &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WildFormHealthPointsUpdatedCopyWith<_$WildFormHealthPointsUpdated>
      get copyWith => __$$WildFormHealthPointsUpdatedCopyWithImpl<
          _$WildFormHealthPointsUpdated>(this, _$identity);

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
    required TResult Function(WildFormHealthPointsInitial value) init,
    required TResult Function(WildFormHealthPointsUpdated value) updated,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WildFormHealthPointsInitial value)? init,
    TResult? Function(WildFormHealthPointsUpdated value)? updated,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WildFormHealthPointsInitial value)? init,
    TResult Function(WildFormHealthPointsUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WildFormHealthPointsUpdatedToJson(
      this,
    );
  }
}

abstract class WildFormHealthPointsUpdated
    implements WildFormHealthPointsState {
  const factory WildFormHealthPointsUpdated(final int current) =
      _$WildFormHealthPointsUpdated;

  factory WildFormHealthPointsUpdated.fromJson(Map<String, dynamic> json) =
      _$WildFormHealthPointsUpdated.fromJson;

  @override
  int get current;
  @override
  @JsonKey(ignore: true)
  _$$WildFormHealthPointsUpdatedCopyWith<_$WildFormHealthPointsUpdated>
      get copyWith => throw _privateConstructorUsedError;
}
