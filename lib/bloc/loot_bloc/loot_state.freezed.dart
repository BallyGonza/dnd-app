// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loot_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LootState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Note> notes) loaded,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Note> notes)? loaded,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Note> notes)? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LootInitial value) initial,
    required TResult Function(LootLoaded value) loaded,
    required TResult Function(LootFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LootInitial value)? initial,
    TResult? Function(LootLoaded value)? loaded,
    TResult? Function(LootFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LootInitial value)? initial,
    TResult Function(LootLoaded value)? loaded,
    TResult Function(LootFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LootStateCopyWith<$Res> {
  factory $LootStateCopyWith(LootState value, $Res Function(LootState) then) =
      _$LootStateCopyWithImpl<$Res, LootState>;
}

/// @nodoc
class _$LootStateCopyWithImpl<$Res, $Val extends LootState>
    implements $LootStateCopyWith<$Res> {
  _$LootStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LootInitialImplCopyWith<$Res> {
  factory _$$LootInitialImplCopyWith(
          _$LootInitialImpl value, $Res Function(_$LootInitialImpl) then) =
      __$$LootInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LootInitialImplCopyWithImpl<$Res>
    extends _$LootStateCopyWithImpl<$Res, _$LootInitialImpl>
    implements _$$LootInitialImplCopyWith<$Res> {
  __$$LootInitialImplCopyWithImpl(
      _$LootInitialImpl _value, $Res Function(_$LootInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LootInitialImpl implements LootInitial {
  const _$LootInitialImpl();

  @override
  String toString() {
    return 'LootState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LootInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Note> notes) loaded,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Note> notes)? loaded,
    TResult? Function()? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Note> notes)? loaded,
    TResult Function()? failure,
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
    required TResult Function(LootInitial value) initial,
    required TResult Function(LootLoaded value) loaded,
    required TResult Function(LootFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LootInitial value)? initial,
    TResult? Function(LootLoaded value)? loaded,
    TResult? Function(LootFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LootInitial value)? initial,
    TResult Function(LootLoaded value)? loaded,
    TResult Function(LootFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LootInitial implements LootState {
  const factory LootInitial() = _$LootInitialImpl;
}

/// @nodoc
abstract class _$$LootLoadedImplCopyWith<$Res> {
  factory _$$LootLoadedImplCopyWith(
          _$LootLoadedImpl value, $Res Function(_$LootLoadedImpl) then) =
      __$$LootLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Note> notes});
}

/// @nodoc
class __$$LootLoadedImplCopyWithImpl<$Res>
    extends _$LootStateCopyWithImpl<$Res, _$LootLoadedImpl>
    implements _$$LootLoadedImplCopyWith<$Res> {
  __$$LootLoadedImplCopyWithImpl(
      _$LootLoadedImpl _value, $Res Function(_$LootLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
  }) {
    return _then(_$LootLoadedImpl(
      null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc

class _$LootLoadedImpl implements LootLoaded {
  const _$LootLoadedImpl(final List<Note> notes) : _notes = notes;

  final List<Note> _notes;
  @override
  List<Note> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'LootState.loaded(notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LootLoadedImpl &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_notes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LootLoadedImplCopyWith<_$LootLoadedImpl> get copyWith =>
      __$$LootLoadedImplCopyWithImpl<_$LootLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Note> notes) loaded,
    required TResult Function() failure,
  }) {
    return loaded(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Note> notes)? loaded,
    TResult? Function()? failure,
  }) {
    return loaded?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Note> notes)? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LootInitial value) initial,
    required TResult Function(LootLoaded value) loaded,
    required TResult Function(LootFailure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LootInitial value)? initial,
    TResult? Function(LootLoaded value)? loaded,
    TResult? Function(LootFailure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LootInitial value)? initial,
    TResult Function(LootLoaded value)? loaded,
    TResult Function(LootFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LootLoaded implements LootState {
  const factory LootLoaded(final List<Note> notes) = _$LootLoadedImpl;

  List<Note> get notes;
  @JsonKey(ignore: true)
  _$$LootLoadedImplCopyWith<_$LootLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LootFailureImplCopyWith<$Res> {
  factory _$$LootFailureImplCopyWith(
          _$LootFailureImpl value, $Res Function(_$LootFailureImpl) then) =
      __$$LootFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LootFailureImplCopyWithImpl<$Res>
    extends _$LootStateCopyWithImpl<$Res, _$LootFailureImpl>
    implements _$$LootFailureImplCopyWith<$Res> {
  __$$LootFailureImplCopyWithImpl(
      _$LootFailureImpl _value, $Res Function(_$LootFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LootFailureImpl implements LootFailure {
  const _$LootFailureImpl();

  @override
  String toString() {
    return 'LootState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LootFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Note> notes) loaded,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Note> notes)? loaded,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Note> notes)? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LootInitial value) initial,
    required TResult Function(LootLoaded value) loaded,
    required TResult Function(LootFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LootInitial value)? initial,
    TResult? Function(LootLoaded value)? loaded,
    TResult? Function(LootFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LootInitial value)? initial,
    TResult Function(LootLoaded value)? loaded,
    TResult Function(LootFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class LootFailure implements LootState {
  const factory LootFailure() = _$LootFailureImpl;
}
