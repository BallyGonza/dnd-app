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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$CharacterHPInitialEventImplCopyWith<$Res> {
  factory _$$CharacterHPInitialEventImplCopyWith(
          _$CharacterHPInitialEventImpl value,
          $Res Function(_$CharacterHPInitialEventImpl) then) =
      __$$CharacterHPInitialEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int characterId});
}

/// @nodoc
class __$$CharacterHPInitialEventImplCopyWithImpl<$Res>
    extends _$CharacterHPEventCopyWithImpl<$Res, _$CharacterHPInitialEventImpl>
    implements _$$CharacterHPInitialEventImplCopyWith<$Res> {
  __$$CharacterHPInitialEventImplCopyWithImpl(
      _$CharacterHPInitialEventImpl _value,
      $Res Function(_$CharacterHPInitialEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterId = null,
  }) {
    return _then(_$CharacterHPInitialEventImpl(
      null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CharacterHPInitialEventImpl implements CharacterHPInitialEvent {
  const _$CharacterHPInitialEventImpl(this.characterId);

  @override
  final int characterId;

  @override
  String toString() {
    return 'CharacterHPEvent.init(characterId: $characterId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterHPInitialEventImpl &&
            (identical(other.characterId, characterId) ||
                other.characterId == characterId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, characterId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterHPInitialEventImplCopyWith<_$CharacterHPInitialEventImpl>
      get copyWith => __$$CharacterHPInitialEventImplCopyWithImpl<
          _$CharacterHPInitialEventImpl>(this, _$identity);

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
      _$CharacterHPInitialEventImpl;

  int get characterId;
  @JsonKey(ignore: true)
  _$$CharacterHPInitialEventImplCopyWith<_$CharacterHPInitialEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharacterHPAddEventImplCopyWith<$Res> {
  factory _$$CharacterHPAddEventImplCopyWith(_$CharacterHPAddEventImpl value,
          $Res Function(_$CharacterHPAddEventImpl) then) =
      __$$CharacterHPAddEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterHPAddEventImplCopyWithImpl<$Res>
    extends _$CharacterHPEventCopyWithImpl<$Res, _$CharacterHPAddEventImpl>
    implements _$$CharacterHPAddEventImplCopyWith<$Res> {
  __$$CharacterHPAddEventImplCopyWithImpl(_$CharacterHPAddEventImpl _value,
      $Res Function(_$CharacterHPAddEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterHPAddEventImpl implements CharacterHPAddEvent {
  const _$CharacterHPAddEventImpl();

  @override
  String toString() {
    return 'CharacterHPEvent.add()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterHPAddEventImpl);
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
  const factory CharacterHPAddEvent() = _$CharacterHPAddEventImpl;
}

/// @nodoc
abstract class _$$CharacterHPSubtractEventImplCopyWith<$Res> {
  factory _$$CharacterHPSubtractEventImplCopyWith(
          _$CharacterHPSubtractEventImpl value,
          $Res Function(_$CharacterHPSubtractEventImpl) then) =
      __$$CharacterHPSubtractEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterHPSubtractEventImplCopyWithImpl<$Res>
    extends _$CharacterHPEventCopyWithImpl<$Res, _$CharacterHPSubtractEventImpl>
    implements _$$CharacterHPSubtractEventImplCopyWith<$Res> {
  __$$CharacterHPSubtractEventImplCopyWithImpl(
      _$CharacterHPSubtractEventImpl _value,
      $Res Function(_$CharacterHPSubtractEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterHPSubtractEventImpl implements CharacterHPSubtractEvent {
  const _$CharacterHPSubtractEventImpl();

  @override
  String toString() {
    return 'CharacterHPEvent.subtract()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterHPSubtractEventImpl);
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
  const factory CharacterHPSubtractEvent() = _$CharacterHPSubtractEventImpl;
}

/// @nodoc
abstract class _$$CharacterHPResetEventImplCopyWith<$Res> {
  factory _$$CharacterHPResetEventImplCopyWith(
          _$CharacterHPResetEventImpl value,
          $Res Function(_$CharacterHPResetEventImpl) then) =
      __$$CharacterHPResetEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterHPResetEventImplCopyWithImpl<$Res>
    extends _$CharacterHPEventCopyWithImpl<$Res, _$CharacterHPResetEventImpl>
    implements _$$CharacterHPResetEventImplCopyWith<$Res> {
  __$$CharacterHPResetEventImplCopyWithImpl(_$CharacterHPResetEventImpl _value,
      $Res Function(_$CharacterHPResetEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterHPResetEventImpl implements CharacterHPResetEvent {
  const _$CharacterHPResetEventImpl();

  @override
  String toString() {
    return 'CharacterHPEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterHPResetEventImpl);
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
  const factory CharacterHPResetEvent() = _$CharacterHPResetEventImpl;
}
