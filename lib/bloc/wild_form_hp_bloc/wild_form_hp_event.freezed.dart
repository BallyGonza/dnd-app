// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wild_form_hp_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WildFormHPEvent {
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
    required TResult Function(WildFormHPInitialEvent value) init,
    required TResult Function(WildFormHPAddEvent value) add,
    required TResult Function(WildFormHPSubtractEvent value) subtract,
    required TResult Function(WildFormHPResetEvent value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WildFormHPInitialEvent value)? init,
    TResult? Function(WildFormHPAddEvent value)? add,
    TResult? Function(WildFormHPSubtractEvent value)? subtract,
    TResult? Function(WildFormHPResetEvent value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WildFormHPInitialEvent value)? init,
    TResult Function(WildFormHPAddEvent value)? add,
    TResult Function(WildFormHPSubtractEvent value)? subtract,
    TResult Function(WildFormHPResetEvent value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WildFormHPEventCopyWith<$Res> {
  factory $WildFormHPEventCopyWith(
          WildFormHPEvent value, $Res Function(WildFormHPEvent) then) =
      _$WildFormHPEventCopyWithImpl<$Res, WildFormHPEvent>;
}

/// @nodoc
class _$WildFormHPEventCopyWithImpl<$Res, $Val extends WildFormHPEvent>
    implements $WildFormHPEventCopyWith<$Res> {
  _$WildFormHPEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WildFormHPInitialEventCopyWith<$Res> {
  factory _$$WildFormHPInitialEventCopyWith(_$WildFormHPInitialEvent value,
          $Res Function(_$WildFormHPInitialEvent) then) =
      __$$WildFormHPInitialEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int characterId});
}

/// @nodoc
class __$$WildFormHPInitialEventCopyWithImpl<$Res>
    extends _$WildFormHPEventCopyWithImpl<$Res, _$WildFormHPInitialEvent>
    implements _$$WildFormHPInitialEventCopyWith<$Res> {
  __$$WildFormHPInitialEventCopyWithImpl(_$WildFormHPInitialEvent _value,
      $Res Function(_$WildFormHPInitialEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterId = null,
  }) {
    return _then(_$WildFormHPInitialEvent(
      null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WildFormHPInitialEvent implements WildFormHPInitialEvent {
  const _$WildFormHPInitialEvent(this.characterId);

  @override
  final int characterId;

  @override
  String toString() {
    return 'WildFormHPEvent.init(characterId: $characterId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WildFormHPInitialEvent &&
            (identical(other.characterId, characterId) ||
                other.characterId == characterId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, characterId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WildFormHPInitialEventCopyWith<_$WildFormHPInitialEvent> get copyWith =>
      __$$WildFormHPInitialEventCopyWithImpl<_$WildFormHPInitialEvent>(
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
    required TResult Function(WildFormHPInitialEvent value) init,
    required TResult Function(WildFormHPAddEvent value) add,
    required TResult Function(WildFormHPSubtractEvent value) subtract,
    required TResult Function(WildFormHPResetEvent value) reset,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WildFormHPInitialEvent value)? init,
    TResult? Function(WildFormHPAddEvent value)? add,
    TResult? Function(WildFormHPSubtractEvent value)? subtract,
    TResult? Function(WildFormHPResetEvent value)? reset,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WildFormHPInitialEvent value)? init,
    TResult Function(WildFormHPAddEvent value)? add,
    TResult Function(WildFormHPSubtractEvent value)? subtract,
    TResult Function(WildFormHPResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class WildFormHPInitialEvent implements WildFormHPEvent {
  const factory WildFormHPInitialEvent(final int characterId) =
      _$WildFormHPInitialEvent;

  int get characterId;
  @JsonKey(ignore: true)
  _$$WildFormHPInitialEventCopyWith<_$WildFormHPInitialEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WildFormHPAddEventCopyWith<$Res> {
  factory _$$WildFormHPAddEventCopyWith(_$WildFormHPAddEvent value,
          $Res Function(_$WildFormHPAddEvent) then) =
      __$$WildFormHPAddEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WildFormHPAddEventCopyWithImpl<$Res>
    extends _$WildFormHPEventCopyWithImpl<$Res, _$WildFormHPAddEvent>
    implements _$$WildFormHPAddEventCopyWith<$Res> {
  __$$WildFormHPAddEventCopyWithImpl(
      _$WildFormHPAddEvent _value, $Res Function(_$WildFormHPAddEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WildFormHPAddEvent implements WildFormHPAddEvent {
  const _$WildFormHPAddEvent();

  @override
  String toString() {
    return 'WildFormHPEvent.add()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WildFormHPAddEvent);
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
    required TResult Function(WildFormHPInitialEvent value) init,
    required TResult Function(WildFormHPAddEvent value) add,
    required TResult Function(WildFormHPSubtractEvent value) subtract,
    required TResult Function(WildFormHPResetEvent value) reset,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WildFormHPInitialEvent value)? init,
    TResult? Function(WildFormHPAddEvent value)? add,
    TResult? Function(WildFormHPSubtractEvent value)? subtract,
    TResult? Function(WildFormHPResetEvent value)? reset,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WildFormHPInitialEvent value)? init,
    TResult Function(WildFormHPAddEvent value)? add,
    TResult Function(WildFormHPSubtractEvent value)? subtract,
    TResult Function(WildFormHPResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class WildFormHPAddEvent implements WildFormHPEvent {
  const factory WildFormHPAddEvent() = _$WildFormHPAddEvent;
}

/// @nodoc
abstract class _$$WildFormHPSubtractEventCopyWith<$Res> {
  factory _$$WildFormHPSubtractEventCopyWith(_$WildFormHPSubtractEvent value,
          $Res Function(_$WildFormHPSubtractEvent) then) =
      __$$WildFormHPSubtractEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WildFormHPSubtractEventCopyWithImpl<$Res>
    extends _$WildFormHPEventCopyWithImpl<$Res, _$WildFormHPSubtractEvent>
    implements _$$WildFormHPSubtractEventCopyWith<$Res> {
  __$$WildFormHPSubtractEventCopyWithImpl(_$WildFormHPSubtractEvent _value,
      $Res Function(_$WildFormHPSubtractEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WildFormHPSubtractEvent implements WildFormHPSubtractEvent {
  const _$WildFormHPSubtractEvent();

  @override
  String toString() {
    return 'WildFormHPEvent.subtract()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WildFormHPSubtractEvent);
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
    required TResult Function(WildFormHPInitialEvent value) init,
    required TResult Function(WildFormHPAddEvent value) add,
    required TResult Function(WildFormHPSubtractEvent value) subtract,
    required TResult Function(WildFormHPResetEvent value) reset,
  }) {
    return subtract(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WildFormHPInitialEvent value)? init,
    TResult? Function(WildFormHPAddEvent value)? add,
    TResult? Function(WildFormHPSubtractEvent value)? subtract,
    TResult? Function(WildFormHPResetEvent value)? reset,
  }) {
    return subtract?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WildFormHPInitialEvent value)? init,
    TResult Function(WildFormHPAddEvent value)? add,
    TResult Function(WildFormHPSubtractEvent value)? subtract,
    TResult Function(WildFormHPResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (subtract != null) {
      return subtract(this);
    }
    return orElse();
  }
}

abstract class WildFormHPSubtractEvent implements WildFormHPEvent {
  const factory WildFormHPSubtractEvent() = _$WildFormHPSubtractEvent;
}

/// @nodoc
abstract class _$$WildFormHPResetEventCopyWith<$Res> {
  factory _$$WildFormHPResetEventCopyWith(_$WildFormHPResetEvent value,
          $Res Function(_$WildFormHPResetEvent) then) =
      __$$WildFormHPResetEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WildFormHPResetEventCopyWithImpl<$Res>
    extends _$WildFormHPEventCopyWithImpl<$Res, _$WildFormHPResetEvent>
    implements _$$WildFormHPResetEventCopyWith<$Res> {
  __$$WildFormHPResetEventCopyWithImpl(_$WildFormHPResetEvent _value,
      $Res Function(_$WildFormHPResetEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WildFormHPResetEvent implements WildFormHPResetEvent {
  const _$WildFormHPResetEvent();

  @override
  String toString() {
    return 'WildFormHPEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WildFormHPResetEvent);
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
    required TResult Function(WildFormHPInitialEvent value) init,
    required TResult Function(WildFormHPAddEvent value) add,
    required TResult Function(WildFormHPSubtractEvent value) subtract,
    required TResult Function(WildFormHPResetEvent value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WildFormHPInitialEvent value)? init,
    TResult? Function(WildFormHPAddEvent value)? add,
    TResult? Function(WildFormHPSubtractEvent value)? subtract,
    TResult? Function(WildFormHPResetEvent value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WildFormHPInitialEvent value)? init,
    TResult Function(WildFormHPAddEvent value)? add,
    TResult Function(WildFormHPSubtractEvent value)? subtract,
    TResult Function(WildFormHPResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class WildFormHPResetEvent implements WildFormHPEvent {
  const factory WildFormHPResetEvent() = _$WildFormHPResetEvent;
}
