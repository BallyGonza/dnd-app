// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pet_hp_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PetHPEvent {
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
    required TResult Function(PetHPInitialEvent value) init,
    required TResult Function(PetHPAddEvent value) add,
    required TResult Function(PetHPSubtractEvent value) subtract,
    required TResult Function(PetHPResetEvent value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PetHPInitialEvent value)? init,
    TResult? Function(PetHPAddEvent value)? add,
    TResult? Function(PetHPSubtractEvent value)? subtract,
    TResult? Function(PetHPResetEvent value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PetHPInitialEvent value)? init,
    TResult Function(PetHPAddEvent value)? add,
    TResult Function(PetHPSubtractEvent value)? subtract,
    TResult Function(PetHPResetEvent value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetHPEventCopyWith<$Res> {
  factory $PetHPEventCopyWith(
          PetHPEvent value, $Res Function(PetHPEvent) then) =
      _$PetHPEventCopyWithImpl<$Res, PetHPEvent>;
}

/// @nodoc
class _$PetHPEventCopyWithImpl<$Res, $Val extends PetHPEvent>
    implements $PetHPEventCopyWith<$Res> {
  _$PetHPEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PetHPInitialEventCopyWith<$Res> {
  factory _$$PetHPInitialEventCopyWith(
          _$PetHPInitialEvent value, $Res Function(_$PetHPInitialEvent) then) =
      __$$PetHPInitialEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int characterId});
}

/// @nodoc
class __$$PetHPInitialEventCopyWithImpl<$Res>
    extends _$PetHPEventCopyWithImpl<$Res, _$PetHPInitialEvent>
    implements _$$PetHPInitialEventCopyWith<$Res> {
  __$$PetHPInitialEventCopyWithImpl(
      _$PetHPInitialEvent _value, $Res Function(_$PetHPInitialEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterId = null,
  }) {
    return _then(_$PetHPInitialEvent(
      null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PetHPInitialEvent implements PetHPInitialEvent {
  const _$PetHPInitialEvent(this.characterId);

  @override
  final int characterId;

  @override
  String toString() {
    return 'PetHPEvent.init(characterId: $characterId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetHPInitialEvent &&
            (identical(other.characterId, characterId) ||
                other.characterId == characterId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, characterId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PetHPInitialEventCopyWith<_$PetHPInitialEvent> get copyWith =>
      __$$PetHPInitialEventCopyWithImpl<_$PetHPInitialEvent>(this, _$identity);

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
    required TResult Function(PetHPInitialEvent value) init,
    required TResult Function(PetHPAddEvent value) add,
    required TResult Function(PetHPSubtractEvent value) subtract,
    required TResult Function(PetHPResetEvent value) reset,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PetHPInitialEvent value)? init,
    TResult? Function(PetHPAddEvent value)? add,
    TResult? Function(PetHPSubtractEvent value)? subtract,
    TResult? Function(PetHPResetEvent value)? reset,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PetHPInitialEvent value)? init,
    TResult Function(PetHPAddEvent value)? add,
    TResult Function(PetHPSubtractEvent value)? subtract,
    TResult Function(PetHPResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class PetHPInitialEvent implements PetHPEvent {
  const factory PetHPInitialEvent(final int characterId) = _$PetHPInitialEvent;

  int get characterId;
  @JsonKey(ignore: true)
  _$$PetHPInitialEventCopyWith<_$PetHPInitialEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PetHPAddEventCopyWith<$Res> {
  factory _$$PetHPAddEventCopyWith(
          _$PetHPAddEvent value, $Res Function(_$PetHPAddEvent) then) =
      __$$PetHPAddEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PetHPAddEventCopyWithImpl<$Res>
    extends _$PetHPEventCopyWithImpl<$Res, _$PetHPAddEvent>
    implements _$$PetHPAddEventCopyWith<$Res> {
  __$$PetHPAddEventCopyWithImpl(
      _$PetHPAddEvent _value, $Res Function(_$PetHPAddEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PetHPAddEvent implements PetHPAddEvent {
  const _$PetHPAddEvent();

  @override
  String toString() {
    return 'PetHPEvent.add()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PetHPAddEvent);
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
    required TResult Function(PetHPInitialEvent value) init,
    required TResult Function(PetHPAddEvent value) add,
    required TResult Function(PetHPSubtractEvent value) subtract,
    required TResult Function(PetHPResetEvent value) reset,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PetHPInitialEvent value)? init,
    TResult? Function(PetHPAddEvent value)? add,
    TResult? Function(PetHPSubtractEvent value)? subtract,
    TResult? Function(PetHPResetEvent value)? reset,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PetHPInitialEvent value)? init,
    TResult Function(PetHPAddEvent value)? add,
    TResult Function(PetHPSubtractEvent value)? subtract,
    TResult Function(PetHPResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class PetHPAddEvent implements PetHPEvent {
  const factory PetHPAddEvent() = _$PetHPAddEvent;
}

/// @nodoc
abstract class _$$PetHPSubtractEventCopyWith<$Res> {
  factory _$$PetHPSubtractEventCopyWith(_$PetHPSubtractEvent value,
          $Res Function(_$PetHPSubtractEvent) then) =
      __$$PetHPSubtractEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PetHPSubtractEventCopyWithImpl<$Res>
    extends _$PetHPEventCopyWithImpl<$Res, _$PetHPSubtractEvent>
    implements _$$PetHPSubtractEventCopyWith<$Res> {
  __$$PetHPSubtractEventCopyWithImpl(
      _$PetHPSubtractEvent _value, $Res Function(_$PetHPSubtractEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PetHPSubtractEvent implements PetHPSubtractEvent {
  const _$PetHPSubtractEvent();

  @override
  String toString() {
    return 'PetHPEvent.subtract()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PetHPSubtractEvent);
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
    required TResult Function(PetHPInitialEvent value) init,
    required TResult Function(PetHPAddEvent value) add,
    required TResult Function(PetHPSubtractEvent value) subtract,
    required TResult Function(PetHPResetEvent value) reset,
  }) {
    return subtract(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PetHPInitialEvent value)? init,
    TResult? Function(PetHPAddEvent value)? add,
    TResult? Function(PetHPSubtractEvent value)? subtract,
    TResult? Function(PetHPResetEvent value)? reset,
  }) {
    return subtract?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PetHPInitialEvent value)? init,
    TResult Function(PetHPAddEvent value)? add,
    TResult Function(PetHPSubtractEvent value)? subtract,
    TResult Function(PetHPResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (subtract != null) {
      return subtract(this);
    }
    return orElse();
  }
}

abstract class PetHPSubtractEvent implements PetHPEvent {
  const factory PetHPSubtractEvent() = _$PetHPSubtractEvent;
}

/// @nodoc
abstract class _$$PetHPResetEventCopyWith<$Res> {
  factory _$$PetHPResetEventCopyWith(
          _$PetHPResetEvent value, $Res Function(_$PetHPResetEvent) then) =
      __$$PetHPResetEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PetHPResetEventCopyWithImpl<$Res>
    extends _$PetHPEventCopyWithImpl<$Res, _$PetHPResetEvent>
    implements _$$PetHPResetEventCopyWith<$Res> {
  __$$PetHPResetEventCopyWithImpl(
      _$PetHPResetEvent _value, $Res Function(_$PetHPResetEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PetHPResetEvent implements PetHPResetEvent {
  const _$PetHPResetEvent();

  @override
  String toString() {
    return 'PetHPEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PetHPResetEvent);
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
    required TResult Function(PetHPInitialEvent value) init,
    required TResult Function(PetHPAddEvent value) add,
    required TResult Function(PetHPSubtractEvent value) subtract,
    required TResult Function(PetHPResetEvent value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PetHPInitialEvent value)? init,
    TResult? Function(PetHPAddEvent value)? add,
    TResult? Function(PetHPSubtractEvent value)? subtract,
    TResult? Function(PetHPResetEvent value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PetHPInitialEvent value)? init,
    TResult Function(PetHPAddEvent value)? add,
    TResult Function(PetHPSubtractEvent value)? subtract,
    TResult Function(PetHPResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class PetHPResetEvent implements PetHPEvent {
  const factory PetHPResetEvent() = _$PetHPResetEvent;
}
