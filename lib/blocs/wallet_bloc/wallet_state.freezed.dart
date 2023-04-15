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

/// @nodoc
mixin _$WalletState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Wallet wallet) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Wallet wallet)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Wallet wallet)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletInitial value) initial,
    required TResult Function(WalletLoading value) loading,
    required TResult Function(WalletUpdated value) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WalletInitial value)? initial,
    TResult? Function(WalletLoading value)? loading,
    TResult? Function(WalletUpdated value)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletInitial value)? initial,
    TResult Function(WalletLoading value)? loading,
    TResult Function(WalletUpdated value)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletStateCopyWith<$Res> {
  factory $WalletStateCopyWith(
          WalletState value, $Res Function(WalletState) then) =
      _$WalletStateCopyWithImpl<$Res, WalletState>;
}

/// @nodoc
class _$WalletStateCopyWithImpl<$Res, $Val extends WalletState>
    implements $WalletStateCopyWith<$Res> {
  _$WalletStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WalletInitialCopyWith<$Res> {
  factory _$$WalletInitialCopyWith(
          _$WalletInitial value, $Res Function(_$WalletInitial) then) =
      __$$WalletInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletInitialCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$WalletInitial>
    implements _$$WalletInitialCopyWith<$Res> {
  __$$WalletInitialCopyWithImpl(
      _$WalletInitial _value, $Res Function(_$WalletInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WalletInitial implements WalletInitial {
  const _$WalletInitial();

  @override
  String toString() {
    return 'WalletState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WalletInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Wallet wallet) updated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Wallet wallet)? updated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Wallet wallet)? updated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletInitial value) initial,
    required TResult Function(WalletLoading value) loading,
    required TResult Function(WalletUpdated value) updated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WalletInitial value)? initial,
    TResult? Function(WalletLoading value)? loading,
    TResult? Function(WalletUpdated value)? updated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletInitial value)? initial,
    TResult Function(WalletLoading value)? loading,
    TResult Function(WalletUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class WalletInitial implements WalletState {
  const factory WalletInitial() = _$WalletInitial;
}

/// @nodoc
abstract class _$$WalletLoadingCopyWith<$Res> {
  factory _$$WalletLoadingCopyWith(
          _$WalletLoading value, $Res Function(_$WalletLoading) then) =
      __$$WalletLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletLoadingCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$WalletLoading>
    implements _$$WalletLoadingCopyWith<$Res> {
  __$$WalletLoadingCopyWithImpl(
      _$WalletLoading _value, $Res Function(_$WalletLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WalletLoading implements WalletLoading {
  const _$WalletLoading();

  @override
  String toString() {
    return 'WalletState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WalletLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Wallet wallet) updated,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Wallet wallet)? updated,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Wallet wallet)? updated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletInitial value) initial,
    required TResult Function(WalletLoading value) loading,
    required TResult Function(WalletUpdated value) updated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WalletInitial value)? initial,
    TResult? Function(WalletLoading value)? loading,
    TResult? Function(WalletUpdated value)? updated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletInitial value)? initial,
    TResult Function(WalletLoading value)? loading,
    TResult Function(WalletUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WalletLoading implements WalletState {
  const factory WalletLoading() = _$WalletLoading;
}

/// @nodoc
abstract class _$$WalletUpdatedCopyWith<$Res> {
  factory _$$WalletUpdatedCopyWith(
          _$WalletUpdated value, $Res Function(_$WalletUpdated) then) =
      __$$WalletUpdatedCopyWithImpl<$Res>;
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

class _$WalletUpdated implements WalletUpdated {
  const _$WalletUpdated(this.wallet);

  @override
  final Wallet wallet;

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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Wallet wallet) updated,
  }) {
    return updated(wallet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Wallet wallet)? updated,
  }) {
    return updated?.call(wallet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
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
    required TResult Function(WalletInitial value) initial,
    required TResult Function(WalletLoading value) loading,
    required TResult Function(WalletUpdated value) updated,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WalletInitial value)? initial,
    TResult? Function(WalletLoading value)? loading,
    TResult? Function(WalletUpdated value)? updated,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletInitial value)? initial,
    TResult Function(WalletLoading value)? loading,
    TResult Function(WalletUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class WalletUpdated implements WalletState {
  const factory WalletUpdated(final Wallet wallet) = _$WalletUpdated;

  Wallet get wallet;
  @JsonKey(ignore: true)
  _$$WalletUpdatedCopyWith<_$WalletUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}
