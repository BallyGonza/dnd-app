// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WalletEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String pieces) add,
    required TResult Function(String pieces) subtract,
    required TResult Function(String pieces, int amount) set,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String pieces)? add,
    TResult? Function(String pieces)? subtract,
    TResult? Function(String pieces, int amount)? set,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String pieces)? add,
    TResult Function(String pieces)? subtract,
    TResult Function(String pieces, int amount)? set,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletInitialEvent value) init,
    required TResult Function(WalletAddEvent value) add,
    required TResult Function(WalletSubtractEvent value) subtract,
    required TResult Function(WalletSetEvent value) set,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WalletInitialEvent value)? init,
    TResult? Function(WalletAddEvent value)? add,
    TResult? Function(WalletSubtractEvent value)? subtract,
    TResult? Function(WalletSetEvent value)? set,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletInitialEvent value)? init,
    TResult Function(WalletAddEvent value)? add,
    TResult Function(WalletSubtractEvent value)? subtract,
    TResult Function(WalletSetEvent value)? set,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletEventCopyWith<$Res> {
  factory $WalletEventCopyWith(
          WalletEvent value, $Res Function(WalletEvent) then) =
      _$WalletEventCopyWithImpl<$Res, WalletEvent>;
}

/// @nodoc
class _$WalletEventCopyWithImpl<$Res, $Val extends WalletEvent>
    implements $WalletEventCopyWith<$Res> {
  _$WalletEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WalletInitialEventCopyWith<$Res> {
  factory _$$WalletInitialEventCopyWith(_$WalletInitialEvent value,
          $Res Function(_$WalletInitialEvent) then) =
      __$$WalletInitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletInitialEventCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$WalletInitialEvent>
    implements _$$WalletInitialEventCopyWith<$Res> {
  __$$WalletInitialEventCopyWithImpl(
      _$WalletInitialEvent _value, $Res Function(_$WalletInitialEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WalletInitialEvent implements WalletInitialEvent {
  const _$WalletInitialEvent();

  @override
  String toString() {
    return 'WalletEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WalletInitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String pieces) add,
    required TResult Function(String pieces) subtract,
    required TResult Function(String pieces, int amount) set,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String pieces)? add,
    TResult? Function(String pieces)? subtract,
    TResult? Function(String pieces, int amount)? set,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String pieces)? add,
    TResult Function(String pieces)? subtract,
    TResult Function(String pieces, int amount)? set,
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
    required TResult Function(WalletInitialEvent value) init,
    required TResult Function(WalletAddEvent value) add,
    required TResult Function(WalletSubtractEvent value) subtract,
    required TResult Function(WalletSetEvent value) set,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WalletInitialEvent value)? init,
    TResult? Function(WalletAddEvent value)? add,
    TResult? Function(WalletSubtractEvent value)? subtract,
    TResult? Function(WalletSetEvent value)? set,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletInitialEvent value)? init,
    TResult Function(WalletAddEvent value)? add,
    TResult Function(WalletSubtractEvent value)? subtract,
    TResult Function(WalletSetEvent value)? set,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class WalletInitialEvent implements WalletEvent {
  const factory WalletInitialEvent() = _$WalletInitialEvent;
}

/// @nodoc
abstract class _$$WalletAddEventCopyWith<$Res> {
  factory _$$WalletAddEventCopyWith(
          _$WalletAddEvent value, $Res Function(_$WalletAddEvent) then) =
      __$$WalletAddEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String pieces});
}

/// @nodoc
class __$$WalletAddEventCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$WalletAddEvent>
    implements _$$WalletAddEventCopyWith<$Res> {
  __$$WalletAddEventCopyWithImpl(
      _$WalletAddEvent _value, $Res Function(_$WalletAddEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pieces = null,
  }) {
    return _then(_$WalletAddEvent(
      null == pieces
          ? _value.pieces
          : pieces // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WalletAddEvent implements WalletAddEvent {
  const _$WalletAddEvent(this.pieces);

  @override
  final String pieces;

  @override
  String toString() {
    return 'WalletEvent.add(pieces: $pieces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletAddEvent &&
            (identical(other.pieces, pieces) || other.pieces == pieces));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pieces);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletAddEventCopyWith<_$WalletAddEvent> get copyWith =>
      __$$WalletAddEventCopyWithImpl<_$WalletAddEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String pieces) add,
    required TResult Function(String pieces) subtract,
    required TResult Function(String pieces, int amount) set,
  }) {
    return add(pieces);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String pieces)? add,
    TResult? Function(String pieces)? subtract,
    TResult? Function(String pieces, int amount)? set,
  }) {
    return add?.call(pieces);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String pieces)? add,
    TResult Function(String pieces)? subtract,
    TResult Function(String pieces, int amount)? set,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(pieces);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletInitialEvent value) init,
    required TResult Function(WalletAddEvent value) add,
    required TResult Function(WalletSubtractEvent value) subtract,
    required TResult Function(WalletSetEvent value) set,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WalletInitialEvent value)? init,
    TResult? Function(WalletAddEvent value)? add,
    TResult? Function(WalletSubtractEvent value)? subtract,
    TResult? Function(WalletSetEvent value)? set,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletInitialEvent value)? init,
    TResult Function(WalletAddEvent value)? add,
    TResult Function(WalletSubtractEvent value)? subtract,
    TResult Function(WalletSetEvent value)? set,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class WalletAddEvent implements WalletEvent {
  const factory WalletAddEvent(final String pieces) = _$WalletAddEvent;

  String get pieces;
  @JsonKey(ignore: true)
  _$$WalletAddEventCopyWith<_$WalletAddEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WalletSubtractEventCopyWith<$Res> {
  factory _$$WalletSubtractEventCopyWith(_$WalletSubtractEvent value,
          $Res Function(_$WalletSubtractEvent) then) =
      __$$WalletSubtractEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String pieces});
}

/// @nodoc
class __$$WalletSubtractEventCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$WalletSubtractEvent>
    implements _$$WalletSubtractEventCopyWith<$Res> {
  __$$WalletSubtractEventCopyWithImpl(
      _$WalletSubtractEvent _value, $Res Function(_$WalletSubtractEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pieces = null,
  }) {
    return _then(_$WalletSubtractEvent(
      null == pieces
          ? _value.pieces
          : pieces // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WalletSubtractEvent implements WalletSubtractEvent {
  const _$WalletSubtractEvent(this.pieces);

  @override
  final String pieces;

  @override
  String toString() {
    return 'WalletEvent.subtract(pieces: $pieces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletSubtractEvent &&
            (identical(other.pieces, pieces) || other.pieces == pieces));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pieces);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletSubtractEventCopyWith<_$WalletSubtractEvent> get copyWith =>
      __$$WalletSubtractEventCopyWithImpl<_$WalletSubtractEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String pieces) add,
    required TResult Function(String pieces) subtract,
    required TResult Function(String pieces, int amount) set,
  }) {
    return subtract(pieces);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String pieces)? add,
    TResult? Function(String pieces)? subtract,
    TResult? Function(String pieces, int amount)? set,
  }) {
    return subtract?.call(pieces);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String pieces)? add,
    TResult Function(String pieces)? subtract,
    TResult Function(String pieces, int amount)? set,
    required TResult orElse(),
  }) {
    if (subtract != null) {
      return subtract(pieces);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletInitialEvent value) init,
    required TResult Function(WalletAddEvent value) add,
    required TResult Function(WalletSubtractEvent value) subtract,
    required TResult Function(WalletSetEvent value) set,
  }) {
    return subtract(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WalletInitialEvent value)? init,
    TResult? Function(WalletAddEvent value)? add,
    TResult? Function(WalletSubtractEvent value)? subtract,
    TResult? Function(WalletSetEvent value)? set,
  }) {
    return subtract?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletInitialEvent value)? init,
    TResult Function(WalletAddEvent value)? add,
    TResult Function(WalletSubtractEvent value)? subtract,
    TResult Function(WalletSetEvent value)? set,
    required TResult orElse(),
  }) {
    if (subtract != null) {
      return subtract(this);
    }
    return orElse();
  }
}

abstract class WalletSubtractEvent implements WalletEvent {
  const factory WalletSubtractEvent(final String pieces) =
      _$WalletSubtractEvent;

  String get pieces;
  @JsonKey(ignore: true)
  _$$WalletSubtractEventCopyWith<_$WalletSubtractEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WalletSetEventCopyWith<$Res> {
  factory _$$WalletSetEventCopyWith(
          _$WalletSetEvent value, $Res Function(_$WalletSetEvent) then) =
      __$$WalletSetEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String pieces, int amount});
}

/// @nodoc
class __$$WalletSetEventCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$WalletSetEvent>
    implements _$$WalletSetEventCopyWith<$Res> {
  __$$WalletSetEventCopyWithImpl(
      _$WalletSetEvent _value, $Res Function(_$WalletSetEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pieces = null,
    Object? amount = null,
  }) {
    return _then(_$WalletSetEvent(
      null == pieces
          ? _value.pieces
          : pieces // ignore: cast_nullable_to_non_nullable
              as String,
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WalletSetEvent implements WalletSetEvent {
  const _$WalletSetEvent(this.pieces, this.amount);

  @override
  final String pieces;
  @override
  final int amount;

  @override
  String toString() {
    return 'WalletEvent.set(pieces: $pieces, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletSetEvent &&
            (identical(other.pieces, pieces) || other.pieces == pieces) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pieces, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletSetEventCopyWith<_$WalletSetEvent> get copyWith =>
      __$$WalletSetEventCopyWithImpl<_$WalletSetEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String pieces) add,
    required TResult Function(String pieces) subtract,
    required TResult Function(String pieces, int amount) set,
  }) {
    return set(pieces, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String pieces)? add,
    TResult? Function(String pieces)? subtract,
    TResult? Function(String pieces, int amount)? set,
  }) {
    return set?.call(pieces, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String pieces)? add,
    TResult Function(String pieces)? subtract,
    TResult Function(String pieces, int amount)? set,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(pieces, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletInitialEvent value) init,
    required TResult Function(WalletAddEvent value) add,
    required TResult Function(WalletSubtractEvent value) subtract,
    required TResult Function(WalletSetEvent value) set,
  }) {
    return set(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WalletInitialEvent value)? init,
    TResult? Function(WalletAddEvent value)? add,
    TResult? Function(WalletSubtractEvent value)? subtract,
    TResult? Function(WalletSetEvent value)? set,
  }) {
    return set?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletInitialEvent value)? init,
    TResult Function(WalletAddEvent value)? add,
    TResult Function(WalletSubtractEvent value)? subtract,
    TResult Function(WalletSetEvent value)? set,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(this);
    }
    return orElse();
  }
}

abstract class WalletSetEvent implements WalletEvent {
  const factory WalletSetEvent(final String pieces, final int amount) =
      _$WalletSetEvent;

  String get pieces;
  int get amount;
  @JsonKey(ignore: true)
  _$$WalletSetEventCopyWith<_$WalletSetEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
