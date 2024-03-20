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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$PetHPInitialEventImplCopyWith<$Res> {
  factory _$$PetHPInitialEventImplCopyWith(_$PetHPInitialEventImpl value,
          $Res Function(_$PetHPInitialEventImpl) then) =
      __$$PetHPInitialEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int characterId});
}

/// @nodoc
class __$$PetHPInitialEventImplCopyWithImpl<$Res>
    extends _$PetHPEventCopyWithImpl<$Res, _$PetHPInitialEventImpl>
    implements _$$PetHPInitialEventImplCopyWith<$Res> {
  __$$PetHPInitialEventImplCopyWithImpl(_$PetHPInitialEventImpl _value,
      $Res Function(_$PetHPInitialEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterId = null,
  }) {
    return _then(_$PetHPInitialEventImpl(
      null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PetHPInitialEventImpl implements PetHPInitialEvent {
  const _$PetHPInitialEventImpl(this.characterId);

  @override
  final int characterId;

  @override
  String toString() {
    return 'PetHPEvent.init(characterId: $characterId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetHPInitialEventImpl &&
            (identical(other.characterId, characterId) ||
                other.characterId == characterId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, characterId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PetHPInitialEventImplCopyWith<_$PetHPInitialEventImpl> get copyWith =>
      __$$PetHPInitialEventImplCopyWithImpl<_$PetHPInitialEventImpl>(
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
  const factory PetHPInitialEvent(final int characterId) =
      _$PetHPInitialEventImpl;

  int get characterId;
  @JsonKey(ignore: true)
  _$$PetHPInitialEventImplCopyWith<_$PetHPInitialEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PetHPAddEventImplCopyWith<$Res> {
  factory _$$PetHPAddEventImplCopyWith(
          _$PetHPAddEventImpl value, $Res Function(_$PetHPAddEventImpl) then) =
      __$$PetHPAddEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PetHPAddEventImplCopyWithImpl<$Res>
    extends _$PetHPEventCopyWithImpl<$Res, _$PetHPAddEventImpl>
    implements _$$PetHPAddEventImplCopyWith<$Res> {
  __$$PetHPAddEventImplCopyWithImpl(
      _$PetHPAddEventImpl _value, $Res Function(_$PetHPAddEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PetHPAddEventImpl implements PetHPAddEvent {
  const _$PetHPAddEventImpl();

  @override
  String toString() {
    return 'PetHPEvent.add()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PetHPAddEventImpl);
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
  const factory PetHPAddEvent() = _$PetHPAddEventImpl;
}

/// @nodoc
abstract class _$$PetHPSubtractEventImplCopyWith<$Res> {
  factory _$$PetHPSubtractEventImplCopyWith(_$PetHPSubtractEventImpl value,
          $Res Function(_$PetHPSubtractEventImpl) then) =
      __$$PetHPSubtractEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PetHPSubtractEventImplCopyWithImpl<$Res>
    extends _$PetHPEventCopyWithImpl<$Res, _$PetHPSubtractEventImpl>
    implements _$$PetHPSubtractEventImplCopyWith<$Res> {
  __$$PetHPSubtractEventImplCopyWithImpl(_$PetHPSubtractEventImpl _value,
      $Res Function(_$PetHPSubtractEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PetHPSubtractEventImpl implements PetHPSubtractEvent {
  const _$PetHPSubtractEventImpl();

  @override
  String toString() {
    return 'PetHPEvent.subtract()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PetHPSubtractEventImpl);
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
  const factory PetHPSubtractEvent() = _$PetHPSubtractEventImpl;
}

/// @nodoc
abstract class _$$PetHPResetEventImplCopyWith<$Res> {
  factory _$$PetHPResetEventImplCopyWith(_$PetHPResetEventImpl value,
          $Res Function(_$PetHPResetEventImpl) then) =
      __$$PetHPResetEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PetHPResetEventImplCopyWithImpl<$Res>
    extends _$PetHPEventCopyWithImpl<$Res, _$PetHPResetEventImpl>
    implements _$$PetHPResetEventImplCopyWith<$Res> {
  __$$PetHPResetEventImplCopyWithImpl(
      _$PetHPResetEventImpl _value, $Res Function(_$PetHPResetEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PetHPResetEventImpl implements PetHPResetEvent {
  const _$PetHPResetEventImpl();

  @override
  String toString() {
    return 'PetHPEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PetHPResetEventImpl);
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
  const factory PetHPResetEvent() = _$PetHPResetEventImpl;
}
