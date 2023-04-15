// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() add,
    required TResult Function() remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? add,
    TResult? Function()? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? add,
    TResult Function()? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterInitialEvent value) init,
    required TResult Function(CharacterAddEvent value) add,
    required TResult Function(CharacterSubtractEvent value) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterInitialEvent value)? init,
    TResult? Function(CharacterAddEvent value)? add,
    TResult? Function(CharacterSubtractEvent value)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterInitialEvent value)? init,
    TResult Function(CharacterAddEvent value)? add,
    TResult Function(CharacterSubtractEvent value)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterEventCopyWith<$Res> {
  factory $CharacterEventCopyWith(
          CharacterEvent value, $Res Function(CharacterEvent) then) =
      _$CharacterEventCopyWithImpl<$Res, CharacterEvent>;
}

/// @nodoc
class _$CharacterEventCopyWithImpl<$Res, $Val extends CharacterEvent>
    implements $CharacterEventCopyWith<$Res> {
  _$CharacterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CharacterInitialEventCopyWith<$Res> {
  factory _$$CharacterInitialEventCopyWith(_$CharacterInitialEvent value,
          $Res Function(_$CharacterInitialEvent) then) =
      __$$CharacterInitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterInitialEventCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$CharacterInitialEvent>
    implements _$$CharacterInitialEventCopyWith<$Res> {
  __$$CharacterInitialEventCopyWithImpl(_$CharacterInitialEvent _value,
      $Res Function(_$CharacterInitialEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterInitialEvent implements CharacterInitialEvent {
  const _$CharacterInitialEvent();

  @override
  String toString() {
    return 'CharacterEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharacterInitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() add,
    required TResult Function() remove,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? add,
    TResult? Function()? remove,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? add,
    TResult Function()? remove,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterInitialEvent value) init,
    required TResult Function(CharacterAddEvent value) add,
    required TResult Function(CharacterSubtractEvent value) remove,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterInitialEvent value)? init,
    TResult? Function(CharacterAddEvent value)? add,
    TResult? Function(CharacterSubtractEvent value)? remove,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterInitialEvent value)? init,
    TResult Function(CharacterAddEvent value)? add,
    TResult Function(CharacterSubtractEvent value)? remove,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class CharacterInitialEvent implements CharacterEvent {
  const factory CharacterInitialEvent() = _$CharacterInitialEvent;
}

/// @nodoc
abstract class _$$CharacterAddEventCopyWith<$Res> {
  factory _$$CharacterAddEventCopyWith(
          _$CharacterAddEvent value, $Res Function(_$CharacterAddEvent) then) =
      __$$CharacterAddEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterAddEventCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$CharacterAddEvent>
    implements _$$CharacterAddEventCopyWith<$Res> {
  __$$CharacterAddEventCopyWithImpl(
      _$CharacterAddEvent _value, $Res Function(_$CharacterAddEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterAddEvent implements CharacterAddEvent {
  const _$CharacterAddEvent();

  @override
  String toString() {
    return 'CharacterEvent.add()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharacterAddEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() add,
    required TResult Function() remove,
  }) {
    return add();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? add,
    TResult? Function()? remove,
  }) {
    return add?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? add,
    TResult Function()? remove,
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
    required TResult Function(CharacterInitialEvent value) init,
    required TResult Function(CharacterAddEvent value) add,
    required TResult Function(CharacterSubtractEvent value) remove,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterInitialEvent value)? init,
    TResult? Function(CharacterAddEvent value)? add,
    TResult? Function(CharacterSubtractEvent value)? remove,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterInitialEvent value)? init,
    TResult Function(CharacterAddEvent value)? add,
    TResult Function(CharacterSubtractEvent value)? remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class CharacterAddEvent implements CharacterEvent {
  const factory CharacterAddEvent() = _$CharacterAddEvent;
}

/// @nodoc
abstract class _$$CharacterSubtractEventCopyWith<$Res> {
  factory _$$CharacterSubtractEventCopyWith(_$CharacterSubtractEvent value,
          $Res Function(_$CharacterSubtractEvent) then) =
      __$$CharacterSubtractEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterSubtractEventCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$CharacterSubtractEvent>
    implements _$$CharacterSubtractEventCopyWith<$Res> {
  __$$CharacterSubtractEventCopyWithImpl(_$CharacterSubtractEvent _value,
      $Res Function(_$CharacterSubtractEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterSubtractEvent implements CharacterSubtractEvent {
  const _$CharacterSubtractEvent();

  @override
  String toString() {
    return 'CharacterEvent.remove()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharacterSubtractEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() add,
    required TResult Function() remove,
  }) {
    return remove();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? add,
    TResult? Function()? remove,
  }) {
    return remove?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? add,
    TResult Function()? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterInitialEvent value) init,
    required TResult Function(CharacterAddEvent value) add,
    required TResult Function(CharacterSubtractEvent value) remove,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterInitialEvent value)? init,
    TResult? Function(CharacterAddEvent value)? add,
    TResult? Function(CharacterSubtractEvent value)? remove,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterInitialEvent value)? init,
    TResult Function(CharacterAddEvent value)? add,
    TResult Function(CharacterSubtractEvent value)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class CharacterSubtractEvent implements CharacterEvent {
  const factory CharacterSubtractEvent() = _$CharacterSubtractEvent;
}
