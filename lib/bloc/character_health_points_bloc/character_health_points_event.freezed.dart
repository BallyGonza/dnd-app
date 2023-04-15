// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_health_points_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterHealthPointsEvent {
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
    required TResult Function(CharacterHealthPointsInitialEvent value) init,
    required TResult Function(CharacterHealthPointsAddEvent value) add,
    required TResult Function(CharacterHealthPointsSubtractEvent value)
        subtract,
    required TResult Function(CharacterHealthPointsResetEvent value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterHealthPointsInitialEvent value)? init,
    TResult? Function(CharacterHealthPointsAddEvent value)? add,
    TResult? Function(CharacterHealthPointsSubtractEvent value)? subtract,
    TResult? Function(CharacterHealthPointsResetEvent value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterHealthPointsInitialEvent value)? init,
    TResult Function(CharacterHealthPointsAddEvent value)? add,
    TResult Function(CharacterHealthPointsSubtractEvent value)? subtract,
    TResult Function(CharacterHealthPointsResetEvent value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterHealthPointsEventCopyWith<$Res> {
  factory $CharacterHealthPointsEventCopyWith(CharacterHealthPointsEvent value,
          $Res Function(CharacterHealthPointsEvent) then) =
      _$CharacterHealthPointsEventCopyWithImpl<$Res,
          CharacterHealthPointsEvent>;
}

/// @nodoc
class _$CharacterHealthPointsEventCopyWithImpl<$Res,
        $Val extends CharacterHealthPointsEvent>
    implements $CharacterHealthPointsEventCopyWith<$Res> {
  _$CharacterHealthPointsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CharacterHealthPointsInitialEventCopyWith<$Res> {
  factory _$$CharacterHealthPointsInitialEventCopyWith(
          _$CharacterHealthPointsInitialEvent value,
          $Res Function(_$CharacterHealthPointsInitialEvent) then) =
      __$$CharacterHealthPointsInitialEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int characterId});
}

/// @nodoc
class __$$CharacterHealthPointsInitialEventCopyWithImpl<$Res>
    extends _$CharacterHealthPointsEventCopyWithImpl<$Res,
        _$CharacterHealthPointsInitialEvent>
    implements _$$CharacterHealthPointsInitialEventCopyWith<$Res> {
  __$$CharacterHealthPointsInitialEventCopyWithImpl(
      _$CharacterHealthPointsInitialEvent _value,
      $Res Function(_$CharacterHealthPointsInitialEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterId = null,
  }) {
    return _then(_$CharacterHealthPointsInitialEvent(
      null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CharacterHealthPointsInitialEvent
    implements CharacterHealthPointsInitialEvent {
  const _$CharacterHealthPointsInitialEvent(this.characterId);

  @override
  final int characterId;

  @override
  String toString() {
    return 'CharacterHealthPointsEvent.init(characterId: $characterId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterHealthPointsInitialEvent &&
            (identical(other.characterId, characterId) ||
                other.characterId == characterId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, characterId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterHealthPointsInitialEventCopyWith<
          _$CharacterHealthPointsInitialEvent>
      get copyWith => __$$CharacterHealthPointsInitialEventCopyWithImpl<
          _$CharacterHealthPointsInitialEvent>(this, _$identity);

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
    required TResult Function(CharacterHealthPointsInitialEvent value) init,
    required TResult Function(CharacterHealthPointsAddEvent value) add,
    required TResult Function(CharacterHealthPointsSubtractEvent value)
        subtract,
    required TResult Function(CharacterHealthPointsResetEvent value) reset,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterHealthPointsInitialEvent value)? init,
    TResult? Function(CharacterHealthPointsAddEvent value)? add,
    TResult? Function(CharacterHealthPointsSubtractEvent value)? subtract,
    TResult? Function(CharacterHealthPointsResetEvent value)? reset,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterHealthPointsInitialEvent value)? init,
    TResult Function(CharacterHealthPointsAddEvent value)? add,
    TResult Function(CharacterHealthPointsSubtractEvent value)? subtract,
    TResult Function(CharacterHealthPointsResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class CharacterHealthPointsInitialEvent
    implements CharacterHealthPointsEvent {
  const factory CharacterHealthPointsInitialEvent(final int characterId) =
      _$CharacterHealthPointsInitialEvent;

  int get characterId;
  @JsonKey(ignore: true)
  _$$CharacterHealthPointsInitialEventCopyWith<
          _$CharacterHealthPointsInitialEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharacterHealthPointsAddEventCopyWith<$Res> {
  factory _$$CharacterHealthPointsAddEventCopyWith(
          _$CharacterHealthPointsAddEvent value,
          $Res Function(_$CharacterHealthPointsAddEvent) then) =
      __$$CharacterHealthPointsAddEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterHealthPointsAddEventCopyWithImpl<$Res>
    extends _$CharacterHealthPointsEventCopyWithImpl<$Res,
        _$CharacterHealthPointsAddEvent>
    implements _$$CharacterHealthPointsAddEventCopyWith<$Res> {
  __$$CharacterHealthPointsAddEventCopyWithImpl(
      _$CharacterHealthPointsAddEvent _value,
      $Res Function(_$CharacterHealthPointsAddEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterHealthPointsAddEvent implements CharacterHealthPointsAddEvent {
  const _$CharacterHealthPointsAddEvent();

  @override
  String toString() {
    return 'CharacterHealthPointsEvent.add()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterHealthPointsAddEvent);
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
    required TResult Function(CharacterHealthPointsInitialEvent value) init,
    required TResult Function(CharacterHealthPointsAddEvent value) add,
    required TResult Function(CharacterHealthPointsSubtractEvent value)
        subtract,
    required TResult Function(CharacterHealthPointsResetEvent value) reset,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterHealthPointsInitialEvent value)? init,
    TResult? Function(CharacterHealthPointsAddEvent value)? add,
    TResult? Function(CharacterHealthPointsSubtractEvent value)? subtract,
    TResult? Function(CharacterHealthPointsResetEvent value)? reset,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterHealthPointsInitialEvent value)? init,
    TResult Function(CharacterHealthPointsAddEvent value)? add,
    TResult Function(CharacterHealthPointsSubtractEvent value)? subtract,
    TResult Function(CharacterHealthPointsResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class CharacterHealthPointsAddEvent
    implements CharacterHealthPointsEvent {
  const factory CharacterHealthPointsAddEvent() =
      _$CharacterHealthPointsAddEvent;
}

/// @nodoc
abstract class _$$CharacterHealthPointsSubtractEventCopyWith<$Res> {
  factory _$$CharacterHealthPointsSubtractEventCopyWith(
          _$CharacterHealthPointsSubtractEvent value,
          $Res Function(_$CharacterHealthPointsSubtractEvent) then) =
      __$$CharacterHealthPointsSubtractEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterHealthPointsSubtractEventCopyWithImpl<$Res>
    extends _$CharacterHealthPointsEventCopyWithImpl<$Res,
        _$CharacterHealthPointsSubtractEvent>
    implements _$$CharacterHealthPointsSubtractEventCopyWith<$Res> {
  __$$CharacterHealthPointsSubtractEventCopyWithImpl(
      _$CharacterHealthPointsSubtractEvent _value,
      $Res Function(_$CharacterHealthPointsSubtractEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterHealthPointsSubtractEvent
    implements CharacterHealthPointsSubtractEvent {
  const _$CharacterHealthPointsSubtractEvent();

  @override
  String toString() {
    return 'CharacterHealthPointsEvent.subtract()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterHealthPointsSubtractEvent);
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
    required TResult Function(CharacterHealthPointsInitialEvent value) init,
    required TResult Function(CharacterHealthPointsAddEvent value) add,
    required TResult Function(CharacterHealthPointsSubtractEvent value)
        subtract,
    required TResult Function(CharacterHealthPointsResetEvent value) reset,
  }) {
    return subtract(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterHealthPointsInitialEvent value)? init,
    TResult? Function(CharacterHealthPointsAddEvent value)? add,
    TResult? Function(CharacterHealthPointsSubtractEvent value)? subtract,
    TResult? Function(CharacterHealthPointsResetEvent value)? reset,
  }) {
    return subtract?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterHealthPointsInitialEvent value)? init,
    TResult Function(CharacterHealthPointsAddEvent value)? add,
    TResult Function(CharacterHealthPointsSubtractEvent value)? subtract,
    TResult Function(CharacterHealthPointsResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (subtract != null) {
      return subtract(this);
    }
    return orElse();
  }
}

abstract class CharacterHealthPointsSubtractEvent
    implements CharacterHealthPointsEvent {
  const factory CharacterHealthPointsSubtractEvent() =
      _$CharacterHealthPointsSubtractEvent;
}

/// @nodoc
abstract class _$$CharacterHealthPointsResetEventCopyWith<$Res> {
  factory _$$CharacterHealthPointsResetEventCopyWith(
          _$CharacterHealthPointsResetEvent value,
          $Res Function(_$CharacterHealthPointsResetEvent) then) =
      __$$CharacterHealthPointsResetEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterHealthPointsResetEventCopyWithImpl<$Res>
    extends _$CharacterHealthPointsEventCopyWithImpl<$Res,
        _$CharacterHealthPointsResetEvent>
    implements _$$CharacterHealthPointsResetEventCopyWith<$Res> {
  __$$CharacterHealthPointsResetEventCopyWithImpl(
      _$CharacterHealthPointsResetEvent _value,
      $Res Function(_$CharacterHealthPointsResetEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterHealthPointsResetEvent
    implements CharacterHealthPointsResetEvent {
  const _$CharacterHealthPointsResetEvent();

  @override
  String toString() {
    return 'CharacterHealthPointsEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterHealthPointsResetEvent);
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
    required TResult Function(CharacterHealthPointsInitialEvent value) init,
    required TResult Function(CharacterHealthPointsAddEvent value) add,
    required TResult Function(CharacterHealthPointsSubtractEvent value)
        subtract,
    required TResult Function(CharacterHealthPointsResetEvent value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterHealthPointsInitialEvent value)? init,
    TResult? Function(CharacterHealthPointsAddEvent value)? add,
    TResult? Function(CharacterHealthPointsSubtractEvent value)? subtract,
    TResult? Function(CharacterHealthPointsResetEvent value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterHealthPointsInitialEvent value)? init,
    TResult Function(CharacterHealthPointsAddEvent value)? add,
    TResult Function(CharacterHealthPointsSubtractEvent value)? subtract,
    TResult Function(CharacterHealthPointsResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class CharacterHealthPointsResetEvent
    implements CharacterHealthPointsEvent {
  const factory CharacterHealthPointsResetEvent() =
      _$CharacterHealthPointsResetEvent;
}
