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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WalletEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int characterId) init,
    required TResult Function(String pieces) add,
    required TResult Function(String pieces) subtract,
    required TResult Function(String pieces, int amount) set,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int characterId)? init,
    TResult? Function(String pieces)? add,
    TResult? Function(String pieces)? subtract,
    TResult? Function(String pieces, int amount)? set,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int characterId)? init,
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
abstract class _$$WalletInitialEventImplCopyWith<$Res> {
  factory _$$WalletInitialEventImplCopyWith(_$WalletInitialEventImpl value,
          $Res Function(_$WalletInitialEventImpl) then) =
      __$$WalletInitialEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int characterId});
}

/// @nodoc
class __$$WalletInitialEventImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$WalletInitialEventImpl>
    implements _$$WalletInitialEventImplCopyWith<$Res> {
  __$$WalletInitialEventImplCopyWithImpl(_$WalletInitialEventImpl _value,
      $Res Function(_$WalletInitialEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterId = null,
  }) {
    return _then(_$WalletInitialEventImpl(
      null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WalletInitialEventImpl implements WalletInitialEvent {
  const _$WalletInitialEventImpl(this.characterId);

  @override
  final int characterId;

  @override
  String toString() {
    return 'WalletEvent.init(characterId: $characterId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletInitialEventImpl &&
            (identical(other.characterId, characterId) ||
                other.characterId == characterId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, characterId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletInitialEventImplCopyWith<_$WalletInitialEventImpl> get copyWith =>
      __$$WalletInitialEventImplCopyWithImpl<_$WalletInitialEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int characterId) init,
    required TResult Function(String pieces) add,
    required TResult Function(String pieces) subtract,
    required TResult Function(String pieces, int amount) set,
  }) {
    return init(characterId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int characterId)? init,
    TResult? Function(String pieces)? add,
    TResult? Function(String pieces)? subtract,
    TResult? Function(String pieces, int amount)? set,
  }) {
    return init?.call(characterId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int characterId)? init,
    TResult Function(String pieces)? add,
    TResult Function(String pieces)? subtract,
    TResult Function(String pieces, int amount)? set,
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
  const factory WalletInitialEvent(final int characterId) =
      _$WalletInitialEventImpl;

  int get characterId;
  @JsonKey(ignore: true)
  _$$WalletInitialEventImplCopyWith<_$WalletInitialEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WalletAddEventImplCopyWith<$Res> {
  factory _$$WalletAddEventImplCopyWith(_$WalletAddEventImpl value,
          $Res Function(_$WalletAddEventImpl) then) =
      __$$WalletAddEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pieces});
}

/// @nodoc
class __$$WalletAddEventImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$WalletAddEventImpl>
    implements _$$WalletAddEventImplCopyWith<$Res> {
  __$$WalletAddEventImplCopyWithImpl(
      _$WalletAddEventImpl _value, $Res Function(_$WalletAddEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pieces = null,
  }) {
    return _then(_$WalletAddEventImpl(
      null == pieces
          ? _value.pieces
          : pieces // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WalletAddEventImpl implements WalletAddEvent {
  const _$WalletAddEventImpl(this.pieces);

  @override
  final String pieces;

  @override
  String toString() {
    return 'WalletEvent.add(pieces: $pieces)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletAddEventImpl &&
            (identical(other.pieces, pieces) || other.pieces == pieces));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pieces);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletAddEventImplCopyWith<_$WalletAddEventImpl> get copyWith =>
      __$$WalletAddEventImplCopyWithImpl<_$WalletAddEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int characterId) init,
    required TResult Function(String pieces) add,
    required TResult Function(String pieces) subtract,
    required TResult Function(String pieces, int amount) set,
  }) {
    return add(pieces);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int characterId)? init,
    TResult? Function(String pieces)? add,
    TResult? Function(String pieces)? subtract,
    TResult? Function(String pieces, int amount)? set,
  }) {
    return add?.call(pieces);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int characterId)? init,
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
  const factory WalletAddEvent(final String pieces) = _$WalletAddEventImpl;

  String get pieces;
  @JsonKey(ignore: true)
  _$$WalletAddEventImplCopyWith<_$WalletAddEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WalletSubtractEventImplCopyWith<$Res> {
  factory _$$WalletSubtractEventImplCopyWith(_$WalletSubtractEventImpl value,
          $Res Function(_$WalletSubtractEventImpl) then) =
      __$$WalletSubtractEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pieces});
}

/// @nodoc
class __$$WalletSubtractEventImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$WalletSubtractEventImpl>
    implements _$$WalletSubtractEventImplCopyWith<$Res> {
  __$$WalletSubtractEventImplCopyWithImpl(_$WalletSubtractEventImpl _value,
      $Res Function(_$WalletSubtractEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pieces = null,
  }) {
    return _then(_$WalletSubtractEventImpl(
      null == pieces
          ? _value.pieces
          : pieces // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WalletSubtractEventImpl implements WalletSubtractEvent {
  const _$WalletSubtractEventImpl(this.pieces);

  @override
  final String pieces;

  @override
  String toString() {
    return 'WalletEvent.subtract(pieces: $pieces)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletSubtractEventImpl &&
            (identical(other.pieces, pieces) || other.pieces == pieces));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pieces);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletSubtractEventImplCopyWith<_$WalletSubtractEventImpl> get copyWith =>
      __$$WalletSubtractEventImplCopyWithImpl<_$WalletSubtractEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int characterId) init,
    required TResult Function(String pieces) add,
    required TResult Function(String pieces) subtract,
    required TResult Function(String pieces, int amount) set,
  }) {
    return subtract(pieces);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int characterId)? init,
    TResult? Function(String pieces)? add,
    TResult? Function(String pieces)? subtract,
    TResult? Function(String pieces, int amount)? set,
  }) {
    return subtract?.call(pieces);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int characterId)? init,
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
      _$WalletSubtractEventImpl;

  String get pieces;
  @JsonKey(ignore: true)
  _$$WalletSubtractEventImplCopyWith<_$WalletSubtractEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WalletSetEventImplCopyWith<$Res> {
  factory _$$WalletSetEventImplCopyWith(_$WalletSetEventImpl value,
          $Res Function(_$WalletSetEventImpl) then) =
      __$$WalletSetEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pieces, int amount});
}

/// @nodoc
class __$$WalletSetEventImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$WalletSetEventImpl>
    implements _$$WalletSetEventImplCopyWith<$Res> {
  __$$WalletSetEventImplCopyWithImpl(
      _$WalletSetEventImpl _value, $Res Function(_$WalletSetEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pieces = null,
    Object? amount = null,
  }) {
    return _then(_$WalletSetEventImpl(
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

class _$WalletSetEventImpl implements WalletSetEvent {
  const _$WalletSetEventImpl(this.pieces, this.amount);

  @override
  final String pieces;
  @override
  final int amount;

  @override
  String toString() {
    return 'WalletEvent.set(pieces: $pieces, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletSetEventImpl &&
            (identical(other.pieces, pieces) || other.pieces == pieces) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pieces, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletSetEventImplCopyWith<_$WalletSetEventImpl> get copyWith =>
      __$$WalletSetEventImplCopyWithImpl<_$WalletSetEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int characterId) init,
    required TResult Function(String pieces) add,
    required TResult Function(String pieces) subtract,
    required TResult Function(String pieces, int amount) set,
  }) {
    return set(pieces, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int characterId)? init,
    TResult? Function(String pieces)? add,
    TResult? Function(String pieces)? subtract,
    TResult? Function(String pieces, int amount)? set,
  }) {
    return set?.call(pieces, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int characterId)? init,
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
      _$WalletSetEventImpl;

  String get pieces;
  int get amount;
  @JsonKey(ignore: true)
  _$$WalletSetEventImplCopyWith<_$WalletSetEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
