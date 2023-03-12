// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletState _$WalletStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'init':
      return WalletInitial.fromJson(json);
    case 'updated':
      return WalletUpdated.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'WalletState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$WalletState {
  Wallet get wallet => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Wallet wallet) init,
    required TResult Function(Wallet wallet) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Wallet wallet)? init,
    TResult? Function(Wallet wallet)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Wallet wallet)? init,
    TResult Function(Wallet wallet)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletInitial value) init,
    required TResult Function(WalletUpdated value) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WalletInitial value)? init,
    TResult? Function(WalletUpdated value)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletInitial value)? init,
    TResult Function(WalletUpdated value)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletStateCopyWith<WalletState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletStateCopyWith<$Res> {
  factory $WalletStateCopyWith(
          WalletState value, $Res Function(WalletState) then) =
      _$WalletStateCopyWithImpl<$Res, WalletState>;
  @useResult
  $Res call({Wallet wallet});
}

/// @nodoc
class _$WalletStateCopyWithImpl<$Res, $Val extends WalletState>
    implements $WalletStateCopyWith<$Res> {
  _$WalletStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallet = null,
  }) {
    return _then(_value.copyWith(
      wallet: null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletInitialCopyWith<$Res>
    implements $WalletStateCopyWith<$Res> {
  factory _$$WalletInitialCopyWith(
          _$WalletInitial value, $Res Function(_$WalletInitial) then) =
      __$$WalletInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Wallet wallet});
}

/// @nodoc
class __$$WalletInitialCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$WalletInitial>
    implements _$$WalletInitialCopyWith<$Res> {
  __$$WalletInitialCopyWithImpl(
      _$WalletInitial _value, $Res Function(_$WalletInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallet = null,
  }) {
    return _then(_$WalletInitial(
      null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletInitial implements WalletInitial {
  const _$WalletInitial(this.wallet, {final String? $type})
      : $type = $type ?? 'init';

  factory _$WalletInitial.fromJson(Map<String, dynamic> json) =>
      _$$WalletInitialFromJson(json);

  @override
  final Wallet wallet;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WalletState.init(wallet: $wallet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletInitial &&
            (identical(other.wallet, wallet) || other.wallet == wallet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, wallet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletInitialCopyWith<_$WalletInitial> get copyWith =>
      __$$WalletInitialCopyWithImpl<_$WalletInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Wallet wallet) init,
    required TResult Function(Wallet wallet) updated,
  }) {
    return init(wallet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Wallet wallet)? init,
    TResult? Function(Wallet wallet)? updated,
  }) {
    return init?.call(wallet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Wallet wallet)? init,
    TResult Function(Wallet wallet)? updated,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(wallet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletInitial value) init,
    required TResult Function(WalletUpdated value) updated,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WalletInitial value)? init,
    TResult? Function(WalletUpdated value)? updated,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletInitial value)? init,
    TResult Function(WalletUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletInitialToJson(
      this,
    );
  }
}

abstract class WalletInitial implements WalletState {
  const factory WalletInitial(final Wallet wallet) = _$WalletInitial;

  factory WalletInitial.fromJson(Map<String, dynamic> json) =
      _$WalletInitial.fromJson;

  @override
  Wallet get wallet;
  @override
  @JsonKey(ignore: true)
  _$$WalletInitialCopyWith<_$WalletInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WalletUpdatedCopyWith<$Res>
    implements $WalletStateCopyWith<$Res> {
  factory _$$WalletUpdatedCopyWith(
          _$WalletUpdated value, $Res Function(_$WalletUpdated) then) =
      __$$WalletUpdatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Wallet wallet});
}

/// @nodoc
class __$$WalletUpdatedCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$WalletUpdated>
    implements _$$WalletUpdatedCopyWith<$Res> {
  __$$WalletUpdatedCopyWithImpl(
      _$WalletUpdated _value, $Res Function(_$WalletUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallet = null,
  }) {
    return _then(_$WalletUpdated(
      null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletUpdated implements WalletUpdated {
  const _$WalletUpdated(this.wallet, {final String? $type})
      : $type = $type ?? 'updated';

  factory _$WalletUpdated.fromJson(Map<String, dynamic> json) =>
      _$$WalletUpdatedFromJson(json);

  @override
  final Wallet wallet;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WalletState.updated(wallet: $wallet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletUpdated &&
            (identical(other.wallet, wallet) || other.wallet == wallet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, wallet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletUpdatedCopyWith<_$WalletUpdated> get copyWith =>
      __$$WalletUpdatedCopyWithImpl<_$WalletUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Wallet wallet) init,
    required TResult Function(Wallet wallet) updated,
  }) {
    return updated(wallet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Wallet wallet)? init,
    TResult? Function(Wallet wallet)? updated,
  }) {
    return updated?.call(wallet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Wallet wallet)? init,
    TResult Function(Wallet wallet)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(wallet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletInitial value) init,
    required TResult Function(WalletUpdated value) updated,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WalletInitial value)? init,
    TResult? Function(WalletUpdated value)? updated,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletInitial value)? init,
    TResult Function(WalletUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletUpdatedToJson(
      this,
    );
  }
}

abstract class WalletUpdated implements WalletState {
  const factory WalletUpdated(final Wallet wallet) = _$WalletUpdated;

  factory WalletUpdated.fromJson(Map<String, dynamic> json) =
      _$WalletUpdated.fromJson;

  @override
  Wallet get wallet;
  @override
  @JsonKey(ignore: true)
  _$$WalletUpdatedCopyWith<_$WalletUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}
