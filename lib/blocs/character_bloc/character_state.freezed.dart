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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterState _$CharacterStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return CharacterInitial.fromJson(json);
    case 'updated':
      return CharacterUpdated.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'CharacterState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$CharacterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Character> characters) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Character> characters)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Character> characters)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterInitial value) initial,
    required TResult Function(CharacterUpdated value) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterInitial value)? initial,
    TResult? Function(CharacterUpdated value)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterInitial value)? initial,
    TResult Function(CharacterUpdated value)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$CharacterInitialCopyWith<$Res> {
  factory _$$CharacterInitialCopyWith(
          _$CharacterInitial value, $Res Function(_$CharacterInitial) then) =
      __$$CharacterInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterInitialCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterInitial>
    implements _$$CharacterInitialCopyWith<$Res> {
  __$$CharacterInitialCopyWithImpl(
      _$CharacterInitial _value, $Res Function(_$CharacterInitial) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$CharacterInitial implements CharacterInitial {
  const _$CharacterInitial({final String? $type}) : $type = $type ?? 'initial';

  factory _$CharacterInitial.fromJson(Map<String, dynamic> json) =>
      _$$CharacterInitialFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CharacterState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharacterInitial);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Character> characters) updated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Character> characters)? updated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Character> characters)? updated,
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
    required TResult Function(CharacterUpdated value) updated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterInitial value)? initial,
    TResult? Function(CharacterUpdated value)? updated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterInitial value)? initial,
    TResult Function(CharacterUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterInitialToJson(
      this,
    );
  }
}

abstract class CharacterInitial implements CharacterState {
  const factory CharacterInitial() = _$CharacterInitial;

  factory CharacterInitial.fromJson(Map<String, dynamic> json) =
      _$CharacterInitial.fromJson;
}

/// @nodoc
abstract class _$$CharacterUpdatedCopyWith<$Res> {
  factory _$$CharacterUpdatedCopyWith(
          _$CharacterUpdated value, $Res Function(_$CharacterUpdated) then) =
      __$$CharacterUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Character> characters});
}

/// @nodoc
class __$$CharacterUpdatedCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterUpdated>
    implements _$$CharacterUpdatedCopyWith<$Res> {
  __$$CharacterUpdatedCopyWithImpl(
      _$CharacterUpdated _value, $Res Function(_$CharacterUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
  }) {
    return _then(_$CharacterUpdated(
      null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterUpdated implements CharacterUpdated {
  const _$CharacterUpdated(final List<Character> characters,
      {final String? $type})
      : _characters = characters,
        $type = $type ?? 'updated';

  factory _$CharacterUpdated.fromJson(Map<String, dynamic> json) =>
      _$$CharacterUpdatedFromJson(json);

  final List<Character> _characters;
  @override
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CharacterState.updated(characters: $characters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterUpdated &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_characters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterUpdatedCopyWith<_$CharacterUpdated> get copyWith =>
      __$$CharacterUpdatedCopyWithImpl<_$CharacterUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Character> characters) updated,
  }) {
    return updated(characters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Character> characters)? updated,
  }) {
    return updated?.call(characters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Character> characters)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(characters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterInitial value) initial,
    required TResult Function(CharacterUpdated value) updated,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterInitial value)? initial,
    TResult? Function(CharacterUpdated value)? updated,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterInitial value)? initial,
    TResult Function(CharacterUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterUpdatedToJson(
      this,
    );
  }
}

abstract class CharacterUpdated implements CharacterState {
  const factory CharacterUpdated(final List<Character> characters) =
      _$CharacterUpdated;

  factory CharacterUpdated.fromJson(Map<String, dynamic> json) =
      _$CharacterUpdated.fromJson;

  List<Character> get characters;
  @JsonKey(ignore: true)
  _$$CharacterUpdatedCopyWith<_$CharacterUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}
