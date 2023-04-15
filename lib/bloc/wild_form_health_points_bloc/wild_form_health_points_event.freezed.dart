// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wild_form_health_points_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WildFormHealthPointsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int characterId) init,
    required TResult Function() add,
    required TResult Function() subtract,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int characterId)? init,
    TResult? Function()? add,
    TResult? Function()? subtract,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int characterId)? init,
    TResult Function()? add,
    TResult Function()? subtract,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WildFormHealthPointsInitialEvent value) init,
    required TResult Function(WildFormHealthPointsAddEvent value) add,
    required TResult Function(WildFormHealthPointsSubtractEvent value) subtract,
    required TResult Function(WildFormHealthPointsResetEvent value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WildFormHealthPointsInitialEvent value)? init,
    TResult? Function(WildFormHealthPointsAddEvent value)? add,
    TResult? Function(WildFormHealthPointsSubtractEvent value)? subtract,
    TResult? Function(WildFormHealthPointsResetEvent value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WildFormHealthPointsInitialEvent value)? init,
    TResult Function(WildFormHealthPointsAddEvent value)? add,
    TResult Function(WildFormHealthPointsSubtractEvent value)? subtract,
    TResult Function(WildFormHealthPointsResetEvent value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WildFormHealthPointsEventCopyWith<$Res> {
  factory $WildFormHealthPointsEventCopyWith(WildFormHealthPointsEvent value,
          $Res Function(WildFormHealthPointsEvent) then) =
      _$WildFormHealthPointsEventCopyWithImpl<$Res, WildFormHealthPointsEvent>;
}

/// @nodoc
class _$WildFormHealthPointsEventCopyWithImpl<$Res,
        $Val extends WildFormHealthPointsEvent>
    implements $WildFormHealthPointsEventCopyWith<$Res> {
  _$WildFormHealthPointsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WildFormHealthPointsInitialEventCopyWith<$Res> {
  factory _$$WildFormHealthPointsInitialEventCopyWith(
          _$WildFormHealthPointsInitialEvent value,
          $Res Function(_$WildFormHealthPointsInitialEvent) then) =
      __$$WildFormHealthPointsInitialEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int characterId});
}

/// @nodoc
class __$$WildFormHealthPointsInitialEventCopyWithImpl<$Res>
    extends _$WildFormHealthPointsEventCopyWithImpl<$Res,
        _$WildFormHealthPointsInitialEvent>
    implements _$$WildFormHealthPointsInitialEventCopyWith<$Res> {
  __$$WildFormHealthPointsInitialEventCopyWithImpl(
      _$WildFormHealthPointsInitialEvent _value,
      $Res Function(_$WildFormHealthPointsInitialEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterId = null,
  }) {
    return _then(_$WildFormHealthPointsInitialEvent(
      null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WildFormHealthPointsInitialEvent
    implements WildFormHealthPointsInitialEvent {
  const _$WildFormHealthPointsInitialEvent(this.characterId);

  @override
  final int characterId;

  @override
  String toString() {
    return 'WildFormHealthPointsEvent.init(characterId: $characterId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WildFormHealthPointsInitialEvent &&
            (identical(other.characterId, characterId) ||
                other.characterId == characterId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, characterId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WildFormHealthPointsInitialEventCopyWith<
          _$WildFormHealthPointsInitialEvent>
      get copyWith => __$$WildFormHealthPointsInitialEventCopyWithImpl<
          _$WildFormHealthPointsInitialEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int characterId) init,
    required TResult Function() add,
    required TResult Function() subtract,
    required TResult Function() reset,
  }) {
    return init(characterId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int characterId)? init,
    TResult? Function()? add,
    TResult? Function()? subtract,
    TResult? Function()? reset,
  }) {
    return init?.call(characterId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int characterId)? init,
    TResult Function()? add,
    TResult Function()? subtract,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(characterId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WildFormHealthPointsInitialEvent value) init,
    required TResult Function(WildFormHealthPointsAddEvent value) add,
    required TResult Function(WildFormHealthPointsSubtractEvent value) subtract,
    required TResult Function(WildFormHealthPointsResetEvent value) reset,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WildFormHealthPointsInitialEvent value)? init,
    TResult? Function(WildFormHealthPointsAddEvent value)? add,
    TResult? Function(WildFormHealthPointsSubtractEvent value)? subtract,
    TResult? Function(WildFormHealthPointsResetEvent value)? reset,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WildFormHealthPointsInitialEvent value)? init,
    TResult Function(WildFormHealthPointsAddEvent value)? add,
    TResult Function(WildFormHealthPointsSubtractEvent value)? subtract,
    TResult Function(WildFormHealthPointsResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class WildFormHealthPointsInitialEvent
    implements WildFormHealthPointsEvent {
  const factory WildFormHealthPointsInitialEvent(final int characterId) =
      _$WildFormHealthPointsInitialEvent;

  int get characterId;
  @JsonKey(ignore: true)
  _$$WildFormHealthPointsInitialEventCopyWith<
          _$WildFormHealthPointsInitialEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WildFormHealthPointsAddEventCopyWith<$Res> {
  factory _$$WildFormHealthPointsAddEventCopyWith(
          _$WildFormHealthPointsAddEvent value,
          $Res Function(_$WildFormHealthPointsAddEvent) then) =
      __$$WildFormHealthPointsAddEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WildFormHealthPointsAddEventCopyWithImpl<$Res>
    extends _$WildFormHealthPointsEventCopyWithImpl<$Res,
        _$WildFormHealthPointsAddEvent>
    implements _$$WildFormHealthPointsAddEventCopyWith<$Res> {
  __$$WildFormHealthPointsAddEventCopyWithImpl(
      _$WildFormHealthPointsAddEvent _value,
      $Res Function(_$WildFormHealthPointsAddEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WildFormHealthPointsAddEvent implements WildFormHealthPointsAddEvent {
  const _$WildFormHealthPointsAddEvent();

  @override
  String toString() {
    return 'WildFormHealthPointsEvent.add()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WildFormHealthPointsAddEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int characterId) init,
    required TResult Function() add,
    required TResult Function() subtract,
    required TResult Function() reset,
  }) {
    return add();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int characterId)? init,
    TResult? Function()? add,
    TResult? Function()? subtract,
    TResult? Function()? reset,
  }) {
    return add?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int characterId)? init,
    TResult Function()? add,
    TResult Function()? subtract,
    TResult Function()? reset,
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
    required TResult Function(WildFormHealthPointsInitialEvent value) init,
    required TResult Function(WildFormHealthPointsAddEvent value) add,
    required TResult Function(WildFormHealthPointsSubtractEvent value) subtract,
    required TResult Function(WildFormHealthPointsResetEvent value) reset,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WildFormHealthPointsInitialEvent value)? init,
    TResult? Function(WildFormHealthPointsAddEvent value)? add,
    TResult? Function(WildFormHealthPointsSubtractEvent value)? subtract,
    TResult? Function(WildFormHealthPointsResetEvent value)? reset,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WildFormHealthPointsInitialEvent value)? init,
    TResult Function(WildFormHealthPointsAddEvent value)? add,
    TResult Function(WildFormHealthPointsSubtractEvent value)? subtract,
    TResult Function(WildFormHealthPointsResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class WildFormHealthPointsAddEvent
    implements WildFormHealthPointsEvent {
  const factory WildFormHealthPointsAddEvent() = _$WildFormHealthPointsAddEvent;
}

/// @nodoc
abstract class _$$WildFormHealthPointsSubtractEventCopyWith<$Res> {
  factory _$$WildFormHealthPointsSubtractEventCopyWith(
          _$WildFormHealthPointsSubtractEvent value,
          $Res Function(_$WildFormHealthPointsSubtractEvent) then) =
      __$$WildFormHealthPointsSubtractEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WildFormHealthPointsSubtractEventCopyWithImpl<$Res>
    extends _$WildFormHealthPointsEventCopyWithImpl<$Res,
        _$WildFormHealthPointsSubtractEvent>
    implements _$$WildFormHealthPointsSubtractEventCopyWith<$Res> {
  __$$WildFormHealthPointsSubtractEventCopyWithImpl(
      _$WildFormHealthPointsSubtractEvent _value,
      $Res Function(_$WildFormHealthPointsSubtractEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WildFormHealthPointsSubtractEvent
    implements WildFormHealthPointsSubtractEvent {
  const _$WildFormHealthPointsSubtractEvent();

  @override
  String toString() {
    return 'WildFormHealthPointsEvent.subtract()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WildFormHealthPointsSubtractEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int characterId) init,
    required TResult Function() add,
    required TResult Function() subtract,
    required TResult Function() reset,
  }) {
    return subtract();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int characterId)? init,
    TResult? Function()? add,
    TResult? Function()? subtract,
    TResult? Function()? reset,
  }) {
    return subtract?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int characterId)? init,
    TResult Function()? add,
    TResult Function()? subtract,
    TResult Function()? reset,
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
    required TResult Function(WildFormHealthPointsInitialEvent value) init,
    required TResult Function(WildFormHealthPointsAddEvent value) add,
    required TResult Function(WildFormHealthPointsSubtractEvent value) subtract,
    required TResult Function(WildFormHealthPointsResetEvent value) reset,
  }) {
    return subtract(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WildFormHealthPointsInitialEvent value)? init,
    TResult? Function(WildFormHealthPointsAddEvent value)? add,
    TResult? Function(WildFormHealthPointsSubtractEvent value)? subtract,
    TResult? Function(WildFormHealthPointsResetEvent value)? reset,
  }) {
    return subtract?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WildFormHealthPointsInitialEvent value)? init,
    TResult Function(WildFormHealthPointsAddEvent value)? add,
    TResult Function(WildFormHealthPointsSubtractEvent value)? subtract,
    TResult Function(WildFormHealthPointsResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (subtract != null) {
      return subtract(this);
    }
    return orElse();
  }
}

abstract class WildFormHealthPointsSubtractEvent
    implements WildFormHealthPointsEvent {
  const factory WildFormHealthPointsSubtractEvent() =
      _$WildFormHealthPointsSubtractEvent;
}

/// @nodoc
abstract class _$$WildFormHealthPointsResetEventCopyWith<$Res> {
  factory _$$WildFormHealthPointsResetEventCopyWith(
          _$WildFormHealthPointsResetEvent value,
          $Res Function(_$WildFormHealthPointsResetEvent) then) =
      __$$WildFormHealthPointsResetEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WildFormHealthPointsResetEventCopyWithImpl<$Res>
    extends _$WildFormHealthPointsEventCopyWithImpl<$Res,
        _$WildFormHealthPointsResetEvent>
    implements _$$WildFormHealthPointsResetEventCopyWith<$Res> {
  __$$WildFormHealthPointsResetEventCopyWithImpl(
      _$WildFormHealthPointsResetEvent _value,
      $Res Function(_$WildFormHealthPointsResetEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WildFormHealthPointsResetEvent
    implements WildFormHealthPointsResetEvent {
  const _$WildFormHealthPointsResetEvent();

  @override
  String toString() {
    return 'WildFormHealthPointsEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WildFormHealthPointsResetEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int characterId) init,
    required TResult Function() add,
    required TResult Function() subtract,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int characterId)? init,
    TResult? Function()? add,
    TResult? Function()? subtract,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int characterId)? init,
    TResult Function()? add,
    TResult Function()? subtract,
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
    required TResult Function(WildFormHealthPointsInitialEvent value) init,
    required TResult Function(WildFormHealthPointsAddEvent value) add,
    required TResult Function(WildFormHealthPointsSubtractEvent value) subtract,
    required TResult Function(WildFormHealthPointsResetEvent value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WildFormHealthPointsInitialEvent value)? init,
    TResult? Function(WildFormHealthPointsAddEvent value)? add,
    TResult? Function(WildFormHealthPointsSubtractEvent value)? subtract,
    TResult? Function(WildFormHealthPointsResetEvent value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WildFormHealthPointsInitialEvent value)? init,
    TResult Function(WildFormHealthPointsAddEvent value)? add,
    TResult Function(WildFormHealthPointsSubtractEvent value)? subtract,
    TResult Function(WildFormHealthPointsResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class WildFormHealthPointsResetEvent
    implements WildFormHealthPointsEvent {
  const factory WildFormHealthPointsResetEvent() =
      _$WildFormHealthPointsResetEvent;
}
