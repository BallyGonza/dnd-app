// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_hp_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterHPEvent {
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
    required TResult Function(CharacterHPInitialEvent value) init,
    required TResult Function(CharacterHPAddEvent value) add,
    required TResult Function(CharacterHPSubtractEvent value) subtract,
    required TResult Function(CharacterHPResetEvent value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterHPInitialEvent value)? init,
    TResult? Function(CharacterHPAddEvent value)? add,
    TResult? Function(CharacterHPSubtractEvent value)? subtract,
    TResult? Function(CharacterHPResetEvent value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterHPInitialEvent value)? init,
    TResult Function(CharacterHPAddEvent value)? add,
    TResult Function(CharacterHPSubtractEvent value)? subtract,
    TResult Function(CharacterHPResetEvent value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterHPEventCopyWith<$Res> {
  factory $CharacterHPEventCopyWith(
          CharacterHPEvent value, $Res Function(CharacterHPEvent) then) =
      _$CharacterHPEventCopyWithImpl<$Res, CharacterHPEvent>;
}

/// @nodoc
class _$CharacterHPEventCopyWithImpl<$Res, $Val extends CharacterHPEvent>
    implements $CharacterHPEventCopyWith<$Res> {
  _$CharacterHPEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CharacterHPInitialEventCopyWith<$Res> {
  factory _$$CharacterHPInitialEventCopyWith(_$CharacterHPInitialEvent value,
          $Res Function(_$CharacterHPInitialEvent) then) =
      __$$CharacterHPInitialEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int characterId});
}

/// @nodoc
class __$$CharacterHPInitialEventCopyWithImpl<$Res>
    extends _$CharacterHPEventCopyWithImpl<$Res, _$CharacterHPInitialEvent>
    implements _$$CharacterHPInitialEventCopyWith<$Res> {
  __$$CharacterHPInitialEventCopyWithImpl(_$CharacterHPInitialEvent _value,
      $Res Function(_$CharacterHPInitialEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterId = null,
  }) {
    return _then(_$CharacterHPInitialEvent(
      null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CharacterHPInitialEvent implements CharacterHPInitialEvent {
  const _$CharacterHPInitialEvent(this.characterId);

  @override
  final int characterId;

  @override
  String toString() {
    return 'CharacterHPEvent.init(characterId: $characterId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterHPInitialEvent &&
            (identical(other.characterId, characterId) ||
                other.characterId == characterId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, characterId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterHPInitialEventCopyWith<_$CharacterHPInitialEvent> get copyWith =>
      __$$CharacterHPInitialEventCopyWithImpl<_$CharacterHPInitialEvent>(
          this, _$identity);

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
    required TResult Function(CharacterHPInitialEvent value) init,
    required TResult Function(CharacterHPAddEvent value) add,
    required TResult Function(CharacterHPSubtractEvent value) subtract,
    required TResult Function(CharacterHPResetEvent value) reset,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterHPInitialEvent value)? init,
    TResult? Function(CharacterHPAddEvent value)? add,
    TResult? Function(CharacterHPSubtractEvent value)? subtract,
    TResult? Function(CharacterHPResetEvent value)? reset,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterHPInitialEvent value)? init,
    TResult Function(CharacterHPAddEvent value)? add,
    TResult Function(CharacterHPSubtractEvent value)? subtract,
    TResult Function(CharacterHPResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class CharacterHPInitialEvent implements CharacterHPEvent {
  const factory CharacterHPInitialEvent(final int characterId) =
      _$CharacterHPInitialEvent;

  int get characterId;
  @JsonKey(ignore: true)
  _$$CharacterHPInitialEventCopyWith<_$CharacterHPInitialEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharacterHPAddEventCopyWith<$Res> {
  factory _$$CharacterHPAddEventCopyWith(_$CharacterHPAddEvent value,
          $Res Function(_$CharacterHPAddEvent) then) =
      __$$CharacterHPAddEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterHPAddEventCopyWithImpl<$Res>
    extends _$CharacterHPEventCopyWithImpl<$Res, _$CharacterHPAddEvent>
    implements _$$CharacterHPAddEventCopyWith<$Res> {
  __$$CharacterHPAddEventCopyWithImpl(
      _$CharacterHPAddEvent _value, $Res Function(_$CharacterHPAddEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterHPAddEvent implements CharacterHPAddEvent {
  const _$CharacterHPAddEvent();

  @override
  String toString() {
    return 'CharacterHPEvent.add()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharacterHPAddEvent);
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
    required TResult Function(CharacterHPInitialEvent value) init,
    required TResult Function(CharacterHPAddEvent value) add,
    required TResult Function(CharacterHPSubtractEvent value) subtract,
    required TResult Function(CharacterHPResetEvent value) reset,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterHPInitialEvent value)? init,
    TResult? Function(CharacterHPAddEvent value)? add,
    TResult? Function(CharacterHPSubtractEvent value)? subtract,
    TResult? Function(CharacterHPResetEvent value)? reset,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterHPInitialEvent value)? init,
    TResult Function(CharacterHPAddEvent value)? add,
    TResult Function(CharacterHPSubtractEvent value)? subtract,
    TResult Function(CharacterHPResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class CharacterHPAddEvent implements CharacterHPEvent {
  const factory CharacterHPAddEvent() = _$CharacterHPAddEvent;
}

/// @nodoc
abstract class _$$CharacterHPSubtractEventCopyWith<$Res> {
  factory _$$CharacterHPSubtractEventCopyWith(_$CharacterHPSubtractEvent value,
          $Res Function(_$CharacterHPSubtractEvent) then) =
      __$$CharacterHPSubtractEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterHPSubtractEventCopyWithImpl<$Res>
    extends _$CharacterHPEventCopyWithImpl<$Res, _$CharacterHPSubtractEvent>
    implements _$$CharacterHPSubtractEventCopyWith<$Res> {
  __$$CharacterHPSubtractEventCopyWithImpl(_$CharacterHPSubtractEvent _value,
      $Res Function(_$CharacterHPSubtractEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterHPSubtractEvent implements CharacterHPSubtractEvent {
  const _$CharacterHPSubtractEvent();

  @override
  String toString() {
    return 'CharacterHPEvent.subtract()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterHPSubtractEvent);
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
    required TResult Function(CharacterHPInitialEvent value) init,
    required TResult Function(CharacterHPAddEvent value) add,
    required TResult Function(CharacterHPSubtractEvent value) subtract,
    required TResult Function(CharacterHPResetEvent value) reset,
  }) {
    return subtract(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterHPInitialEvent value)? init,
    TResult? Function(CharacterHPAddEvent value)? add,
    TResult? Function(CharacterHPSubtractEvent value)? subtract,
    TResult? Function(CharacterHPResetEvent value)? reset,
  }) {
    return subtract?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterHPInitialEvent value)? init,
    TResult Function(CharacterHPAddEvent value)? add,
    TResult Function(CharacterHPSubtractEvent value)? subtract,
    TResult Function(CharacterHPResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (subtract != null) {
      return subtract(this);
    }
    return orElse();
  }
}

abstract class CharacterHPSubtractEvent implements CharacterHPEvent {
  const factory CharacterHPSubtractEvent() = _$CharacterHPSubtractEvent;
}

/// @nodoc
abstract class _$$CharacterHPResetEventCopyWith<$Res> {
  factory _$$CharacterHPResetEventCopyWith(_$CharacterHPResetEvent value,
          $Res Function(_$CharacterHPResetEvent) then) =
      __$$CharacterHPResetEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterHPResetEventCopyWithImpl<$Res>
    extends _$CharacterHPEventCopyWithImpl<$Res, _$CharacterHPResetEvent>
    implements _$$CharacterHPResetEventCopyWith<$Res> {
  __$$CharacterHPResetEventCopyWithImpl(_$CharacterHPResetEvent _value,
      $Res Function(_$CharacterHPResetEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterHPResetEvent implements CharacterHPResetEvent {
  const _$CharacterHPResetEvent();

  @override
  String toString() {
    return 'CharacterHPEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharacterHPResetEvent);
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
    required TResult Function(CharacterHPInitialEvent value) init,
    required TResult Function(CharacterHPAddEvent value) add,
    required TResult Function(CharacterHPSubtractEvent value) subtract,
    required TResult Function(CharacterHPResetEvent value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterHPInitialEvent value)? init,
    TResult? Function(CharacterHPAddEvent value)? add,
    TResult? Function(CharacterHPSubtractEvent value)? subtract,
    TResult? Function(CharacterHPResetEvent value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterHPInitialEvent value)? init,
    TResult Function(CharacterHPAddEvent value)? add,
    TResult Function(CharacterHPSubtractEvent value)? subtract,
    TResult Function(CharacterHPResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class CharacterHPResetEvent implements CharacterHPEvent {
  const factory CharacterHPResetEvent() = _$CharacterHPResetEvent;
}
