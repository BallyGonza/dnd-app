// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CharacterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CharacterModel> characters) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CharacterModel> characters)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CharacterModel> characters)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterInitial value) initial,
    required TResult Function(CharacterLoading value) loading,
    required TResult Function(CharacterUpdated value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterInitial value)? initial,
    TResult? Function(CharacterLoading value)? loading,
    TResult? Function(CharacterUpdated value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterInitial value)? initial,
    TResult Function(CharacterLoading value)? loading,
    TResult Function(CharacterUpdated value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterStateCopyWith<$Res> {
  factory $CharacterStateCopyWith(
          CharacterState value, $Res Function(CharacterState) then) =
      _$CharacterStateCopyWithImpl<$Res, CharacterState>;
}

/// @nodoc
class _$CharacterStateCopyWithImpl<$Res, $Val extends CharacterState>
    implements $CharacterStateCopyWith<$Res> {
  _$CharacterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CharacterInitialImplCopyWith<$Res> {
  factory _$$CharacterInitialImplCopyWith(_$CharacterInitialImpl value,
          $Res Function(_$CharacterInitialImpl) then) =
      __$$CharacterInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterInitialImplCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterInitialImpl>
    implements _$$CharacterInitialImplCopyWith<$Res> {
  __$$CharacterInitialImplCopyWithImpl(_$CharacterInitialImpl _value,
      $Res Function(_$CharacterInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterInitialImpl implements CharacterInitial {
  const _$CharacterInitialImpl();

  @override
  String toString() {
    return 'CharacterState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharacterInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CharacterModel> characters) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CharacterModel> characters)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CharacterModel> characters)? loaded,
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
    required TResult Function(CharacterInitial value) initial,
    required TResult Function(CharacterLoading value) loading,
    required TResult Function(CharacterUpdated value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterInitial value)? initial,
    TResult? Function(CharacterLoading value)? loading,
    TResult? Function(CharacterUpdated value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterInitial value)? initial,
    TResult Function(CharacterLoading value)? loading,
    TResult Function(CharacterUpdated value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CharacterInitial implements CharacterState {
  const factory CharacterInitial() = _$CharacterInitialImpl;
}

/// @nodoc
abstract class _$$CharacterLoadingImplCopyWith<$Res> {
  factory _$$CharacterLoadingImplCopyWith(_$CharacterLoadingImpl value,
          $Res Function(_$CharacterLoadingImpl) then) =
      __$$CharacterLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterLoadingImplCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterLoadingImpl>
    implements _$$CharacterLoadingImplCopyWith<$Res> {
  __$$CharacterLoadingImplCopyWithImpl(_$CharacterLoadingImpl _value,
      $Res Function(_$CharacterLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterLoadingImpl implements CharacterLoading {
  const _$CharacterLoadingImpl();

  @override
  String toString() {
    return 'CharacterState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharacterLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CharacterModel> characters) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CharacterModel> characters)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CharacterModel> characters)? loaded,
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
    required TResult Function(CharacterInitial value) initial,
    required TResult Function(CharacterLoading value) loading,
    required TResult Function(CharacterUpdated value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterInitial value)? initial,
    TResult? Function(CharacterLoading value)? loading,
    TResult? Function(CharacterUpdated value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterInitial value)? initial,
    TResult Function(CharacterLoading value)? loading,
    TResult Function(CharacterUpdated value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CharacterLoading implements CharacterState {
  const factory CharacterLoading() = _$CharacterLoadingImpl;
}

/// @nodoc
abstract class _$$CharacterUpdatedImplCopyWith<$Res> {
  factory _$$CharacterUpdatedImplCopyWith(_$CharacterUpdatedImpl value,
          $Res Function(_$CharacterUpdatedImpl) then) =
      __$$CharacterUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CharacterModel> characters});
}

/// @nodoc
class __$$CharacterUpdatedImplCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterUpdatedImpl>
    implements _$$CharacterUpdatedImplCopyWith<$Res> {
  __$$CharacterUpdatedImplCopyWithImpl(_$CharacterUpdatedImpl _value,
      $Res Function(_$CharacterUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
  }) {
    return _then(_$CharacterUpdatedImpl(
      null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterModel>,
    ));
  }
}

/// @nodoc

class _$CharacterUpdatedImpl implements CharacterUpdated {
  const _$CharacterUpdatedImpl(final List<CharacterModel> characters)
      : _characters = characters;

  final List<CharacterModel> _characters;
  @override
  List<CharacterModel> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  String toString() {
    return 'CharacterState.loaded(characters: $characters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterUpdatedImpl &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_characters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterUpdatedImplCopyWith<_$CharacterUpdatedImpl> get copyWith =>
      __$$CharacterUpdatedImplCopyWithImpl<_$CharacterUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CharacterModel> characters) loaded,
  }) {
    return loaded(characters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CharacterModel> characters)? loaded,
  }) {
    return loaded?.call(characters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CharacterModel> characters)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(characters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterInitial value) initial,
    required TResult Function(CharacterLoading value) loading,
    required TResult Function(CharacterUpdated value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterInitial value)? initial,
    TResult? Function(CharacterLoading value)? loading,
    TResult? Function(CharacterUpdated value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterInitial value)? initial,
    TResult Function(CharacterLoading value)? loading,
    TResult Function(CharacterUpdated value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CharacterUpdated implements CharacterState {
  const factory CharacterUpdated(final List<CharacterModel> characters) =
      _$CharacterUpdatedImpl;

  List<CharacterModel> get characters;
  @JsonKey(ignore: true)
  _$$CharacterUpdatedImplCopyWith<_$CharacterUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
