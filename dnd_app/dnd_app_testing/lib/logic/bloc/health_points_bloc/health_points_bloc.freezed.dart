// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'health_points_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HealthPointsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() add,
    required TResult Function() subtract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? add,
    TResult Function()? subtract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? add,
    TResult Function()? subtract,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HealthPointsAdd value) add,
    required TResult Function(HealthPointsSubtract value) subtract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HealthPointsAdd value)? add,
    TResult Function(HealthPointsSubtract value)? subtract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HealthPointsAdd value)? add,
    TResult Function(HealthPointsSubtract value)? subtract,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthPointsEventCopyWith<$Res> {
  factory $HealthPointsEventCopyWith(
          HealthPointsEvent value, $Res Function(HealthPointsEvent) then) =
      _$HealthPointsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HealthPointsEventCopyWithImpl<$Res>
    implements $HealthPointsEventCopyWith<$Res> {
  _$HealthPointsEventCopyWithImpl(this._value, this._then);

  final HealthPointsEvent _value;
  // ignore: unused_field
  final $Res Function(HealthPointsEvent) _then;
}

/// @nodoc
abstract class _$$HealthPointsAddCopyWith<$Res> {
  factory _$$HealthPointsAddCopyWith(
          _$HealthPointsAdd value, $Res Function(_$HealthPointsAdd) then) =
      __$$HealthPointsAddCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HealthPointsAddCopyWithImpl<$Res>
    extends _$HealthPointsEventCopyWithImpl<$Res>
    implements _$$HealthPointsAddCopyWith<$Res> {
  __$$HealthPointsAddCopyWithImpl(
      _$HealthPointsAdd _value, $Res Function(_$HealthPointsAdd) _then)
      : super(_value, (v) => _then(v as _$HealthPointsAdd));

  @override
  _$HealthPointsAdd get _value => super._value as _$HealthPointsAdd;
}

/// @nodoc

class _$HealthPointsAdd implements HealthPointsAdd {
  const _$HealthPointsAdd();

  @override
  String toString() {
    return 'HealthPointsEvent.add()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HealthPointsAdd);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() add,
    required TResult Function() subtract,
  }) {
    return add();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? add,
    TResult Function()? subtract,
  }) {
    return add?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? add,
    TResult Function()? subtract,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HealthPointsAdd value) add,
    required TResult Function(HealthPointsSubtract value) subtract,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HealthPointsAdd value)? add,
    TResult Function(HealthPointsSubtract value)? subtract,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HealthPointsAdd value)? add,
    TResult Function(HealthPointsSubtract value)? subtract,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class HealthPointsAdd implements HealthPointsEvent {
  const factory HealthPointsAdd() = _$HealthPointsAdd;
}

/// @nodoc
abstract class _$$HealthPointsSubtractCopyWith<$Res> {
  factory _$$HealthPointsSubtractCopyWith(_$HealthPointsSubtract value,
          $Res Function(_$HealthPointsSubtract) then) =
      __$$HealthPointsSubtractCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HealthPointsSubtractCopyWithImpl<$Res>
    extends _$HealthPointsEventCopyWithImpl<$Res>
    implements _$$HealthPointsSubtractCopyWith<$Res> {
  __$$HealthPointsSubtractCopyWithImpl(_$HealthPointsSubtract _value,
      $Res Function(_$HealthPointsSubtract) _then)
      : super(_value, (v) => _then(v as _$HealthPointsSubtract));

  @override
  _$HealthPointsSubtract get _value => super._value as _$HealthPointsSubtract;
}

/// @nodoc

class _$HealthPointsSubtract implements HealthPointsSubtract {
  const _$HealthPointsSubtract();

  @override
  String toString() {
    return 'HealthPointsEvent.subtract()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HealthPointsSubtract);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() add,
    required TResult Function() subtract,
  }) {
    return subtract();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? add,
    TResult Function()? subtract,
  }) {
    return subtract?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? add,
    TResult Function()? subtract,
    required TResult orElse(),
  }) {
    if (subtract != null) {
      return subtract();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HealthPointsAdd value) add,
    required TResult Function(HealthPointsSubtract value) subtract,
  }) {
    return subtract(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HealthPointsAdd value)? add,
    TResult Function(HealthPointsSubtract value)? subtract,
  }) {
    return subtract?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HealthPointsAdd value)? add,
    TResult Function(HealthPointsSubtract value)? subtract,
    required TResult orElse(),
  }) {
    if (subtract != null) {
      return subtract(this);
    }
    return orElse();
  }
}

abstract class HealthPointsSubtract implements HealthPointsEvent {
  const factory HealthPointsSubtract() = _$HealthPointsSubtract;
}

/// @nodoc
mixin _$HealthPointsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() added,
    required TResult Function() subtracted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? added,
    TResult Function()? subtracted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? added,
    TResult Function()? subtracted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HealthPointsInitial value) initial,
    required TResult Function(HealthPointsAdded value) added,
    required TResult Function(HealthPointsSubtracted value) subtracted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HealthPointsInitial value)? initial,
    TResult Function(HealthPointsAdded value)? added,
    TResult Function(HealthPointsSubtracted value)? subtracted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HealthPointsInitial value)? initial,
    TResult Function(HealthPointsAdded value)? added,
    TResult Function(HealthPointsSubtracted value)? subtracted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthPointsStateCopyWith<$Res> {
  factory $HealthPointsStateCopyWith(
          HealthPointsState value, $Res Function(HealthPointsState) then) =
      _$HealthPointsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HealthPointsStateCopyWithImpl<$Res>
    implements $HealthPointsStateCopyWith<$Res> {
  _$HealthPointsStateCopyWithImpl(this._value, this._then);

  final HealthPointsState _value;
  // ignore: unused_field
  final $Res Function(HealthPointsState) _then;
}

/// @nodoc
abstract class _$$HealthPointsInitialCopyWith<$Res> {
  factory _$$HealthPointsInitialCopyWith(_$HealthPointsInitial value,
          $Res Function(_$HealthPointsInitial) then) =
      __$$HealthPointsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HealthPointsInitialCopyWithImpl<$Res>
    extends _$HealthPointsStateCopyWithImpl<$Res>
    implements _$$HealthPointsInitialCopyWith<$Res> {
  __$$HealthPointsInitialCopyWithImpl(
      _$HealthPointsInitial _value, $Res Function(_$HealthPointsInitial) _then)
      : super(_value, (v) => _then(v as _$HealthPointsInitial));

  @override
  _$HealthPointsInitial get _value => super._value as _$HealthPointsInitial;
}

/// @nodoc

class _$HealthPointsInitial implements HealthPointsInitial {
  const _$HealthPointsInitial();

  @override
  String toString() {
    return 'HealthPointsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HealthPointsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() added,
    required TResult Function() subtracted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? added,
    TResult Function()? subtracted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? added,
    TResult Function()? subtracted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HealthPointsInitial value) initial,
    required TResult Function(HealthPointsAdded value) added,
    required TResult Function(HealthPointsSubtracted value) subtracted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HealthPointsInitial value)? initial,
    TResult Function(HealthPointsAdded value)? added,
    TResult Function(HealthPointsSubtracted value)? subtracted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HealthPointsInitial value)? initial,
    TResult Function(HealthPointsAdded value)? added,
    TResult Function(HealthPointsSubtracted value)? subtracted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HealthPointsInitial implements HealthPointsState {
  const factory HealthPointsInitial() = _$HealthPointsInitial;
}

/// @nodoc
abstract class _$$HealthPointsAddedCopyWith<$Res> {
  factory _$$HealthPointsAddedCopyWith(
          _$HealthPointsAdded value, $Res Function(_$HealthPointsAdded) then) =
      __$$HealthPointsAddedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HealthPointsAddedCopyWithImpl<$Res>
    extends _$HealthPointsStateCopyWithImpl<$Res>
    implements _$$HealthPointsAddedCopyWith<$Res> {
  __$$HealthPointsAddedCopyWithImpl(
      _$HealthPointsAdded _value, $Res Function(_$HealthPointsAdded) _then)
      : super(_value, (v) => _then(v as _$HealthPointsAdded));

  @override
  _$HealthPointsAdded get _value => super._value as _$HealthPointsAdded;
}

/// @nodoc

class _$HealthPointsAdded implements HealthPointsAdded {
  const _$HealthPointsAdded();

  @override
  String toString() {
    return 'HealthPointsState.added()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HealthPointsAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() added,
    required TResult Function() subtracted,
  }) {
    return added();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? added,
    TResult Function()? subtracted,
  }) {
    return added?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? added,
    TResult Function()? subtracted,
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
    required TResult Function(HealthPointsInitial value) initial,
    required TResult Function(HealthPointsAdded value) added,
    required TResult Function(HealthPointsSubtracted value) subtracted,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HealthPointsInitial value)? initial,
    TResult Function(HealthPointsAdded value)? added,
    TResult Function(HealthPointsSubtracted value)? subtracted,
  }) {
    return added?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HealthPointsInitial value)? initial,
    TResult Function(HealthPointsAdded value)? added,
    TResult Function(HealthPointsSubtracted value)? subtracted,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class HealthPointsAdded implements HealthPointsState {
  const factory HealthPointsAdded() = _$HealthPointsAdded;
}

/// @nodoc
abstract class _$$HealthPointsSubtractedCopyWith<$Res> {
  factory _$$HealthPointsSubtractedCopyWith(_$HealthPointsSubtracted value,
          $Res Function(_$HealthPointsSubtracted) then) =
      __$$HealthPointsSubtractedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HealthPointsSubtractedCopyWithImpl<$Res>
    extends _$HealthPointsStateCopyWithImpl<$Res>
    implements _$$HealthPointsSubtractedCopyWith<$Res> {
  __$$HealthPointsSubtractedCopyWithImpl(_$HealthPointsSubtracted _value,
      $Res Function(_$HealthPointsSubtracted) _then)
      : super(_value, (v) => _then(v as _$HealthPointsSubtracted));

  @override
  _$HealthPointsSubtracted get _value =>
      super._value as _$HealthPointsSubtracted;
}

/// @nodoc

class _$HealthPointsSubtracted implements HealthPointsSubtracted {
  const _$HealthPointsSubtracted();

  @override
  String toString() {
    return 'HealthPointsState.subtracted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HealthPointsSubtracted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() added,
    required TResult Function() subtracted,
  }) {
    return subtracted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? added,
    TResult Function()? subtracted,
  }) {
    return subtracted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? added,
    TResult Function()? subtracted,
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
    required TResult Function(HealthPointsInitial value) initial,
    required TResult Function(HealthPointsAdded value) added,
    required TResult Function(HealthPointsSubtracted value) subtracted,
  }) {
    return subtracted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HealthPointsInitial value)? initial,
    TResult Function(HealthPointsAdded value)? added,
    TResult Function(HealthPointsSubtracted value)? subtracted,
  }) {
    return subtracted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HealthPointsInitial value)? initial,
    TResult Function(HealthPointsAdded value)? added,
    TResult Function(HealthPointsSubtracted value)? subtracted,
    required TResult orElse(),
  }) {
    if (subtracted != null) {
      return subtracted(this);
    }
    return orElse();
  }
}

abstract class HealthPointsSubtracted implements HealthPointsState {
  const factory HealthPointsSubtracted() = _$HealthPointsSubtracted;
}
