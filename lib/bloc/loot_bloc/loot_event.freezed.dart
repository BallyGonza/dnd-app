// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loot_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LootEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int characterId) init,
    required TResult Function(Note note) add,
    required TResult Function(int index, Note note) edit,
    required TResult Function(int index) delete,
    required TResult Function(List<Note> notes) deleteAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int characterId)? init,
    TResult? Function(Note note)? add,
    TResult? Function(int index, Note note)? edit,
    TResult? Function(int index)? delete,
    TResult? Function(List<Note> notes)? deleteAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int characterId)? init,
    TResult Function(Note note)? add,
    TResult Function(int index, Note note)? edit,
    TResult Function(int index)? delete,
    TResult Function(List<Note> notes)? deleteAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LootInitialEvent value) init,
    required TResult Function(LootAddEvent value) add,
    required TResult Function(LootEditEvent value) edit,
    required TResult Function(LootDeleteEvent value) delete,
    required TResult Function(LootDeleteAllEvent value) deleteAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LootInitialEvent value)? init,
    TResult? Function(LootAddEvent value)? add,
    TResult? Function(LootEditEvent value)? edit,
    TResult? Function(LootDeleteEvent value)? delete,
    TResult? Function(LootDeleteAllEvent value)? deleteAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LootInitialEvent value)? init,
    TResult Function(LootAddEvent value)? add,
    TResult Function(LootEditEvent value)? edit,
    TResult Function(LootDeleteEvent value)? delete,
    TResult Function(LootDeleteAllEvent value)? deleteAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LootEventCopyWith<$Res> {
  factory $LootEventCopyWith(LootEvent value, $Res Function(LootEvent) then) =
      _$LootEventCopyWithImpl<$Res, LootEvent>;
}

/// @nodoc
class _$LootEventCopyWithImpl<$Res, $Val extends LootEvent>
    implements $LootEventCopyWith<$Res> {
  _$LootEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LootInitialEventImplCopyWith<$Res> {
  factory _$$LootInitialEventImplCopyWith(_$LootInitialEventImpl value,
          $Res Function(_$LootInitialEventImpl) then) =
      __$$LootInitialEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int characterId});
}

/// @nodoc
class __$$LootInitialEventImplCopyWithImpl<$Res>
    extends _$LootEventCopyWithImpl<$Res, _$LootInitialEventImpl>
    implements _$$LootInitialEventImplCopyWith<$Res> {
  __$$LootInitialEventImplCopyWithImpl(_$LootInitialEventImpl _value,
      $Res Function(_$LootInitialEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterId = null,
  }) {
    return _then(_$LootInitialEventImpl(
      null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LootInitialEventImpl implements LootInitialEvent {
  const _$LootInitialEventImpl(this.characterId);

  @override
  final int characterId;

  @override
  String toString() {
    return 'LootEvent.init(characterId: $characterId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LootInitialEventImpl &&
            (identical(other.characterId, characterId) ||
                other.characterId == characterId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, characterId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LootInitialEventImplCopyWith<_$LootInitialEventImpl> get copyWith =>
      __$$LootInitialEventImplCopyWithImpl<_$LootInitialEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int characterId) init,
    required TResult Function(Note note) add,
    required TResult Function(int index, Note note) edit,
    required TResult Function(int index) delete,
    required TResult Function(List<Note> notes) deleteAll,
  }) {
    return init(characterId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int characterId)? init,
    TResult? Function(Note note)? add,
    TResult? Function(int index, Note note)? edit,
    TResult? Function(int index)? delete,
    TResult? Function(List<Note> notes)? deleteAll,
  }) {
    return init?.call(characterId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int characterId)? init,
    TResult Function(Note note)? add,
    TResult Function(int index, Note note)? edit,
    TResult Function(int index)? delete,
    TResult Function(List<Note> notes)? deleteAll,
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
    required TResult Function(LootInitialEvent value) init,
    required TResult Function(LootAddEvent value) add,
    required TResult Function(LootEditEvent value) edit,
    required TResult Function(LootDeleteEvent value) delete,
    required TResult Function(LootDeleteAllEvent value) deleteAll,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LootInitialEvent value)? init,
    TResult? Function(LootAddEvent value)? add,
    TResult? Function(LootEditEvent value)? edit,
    TResult? Function(LootDeleteEvent value)? delete,
    TResult? Function(LootDeleteAllEvent value)? deleteAll,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LootInitialEvent value)? init,
    TResult Function(LootAddEvent value)? add,
    TResult Function(LootEditEvent value)? edit,
    TResult Function(LootDeleteEvent value)? delete,
    TResult Function(LootDeleteAllEvent value)? deleteAll,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class LootInitialEvent implements LootEvent {
  const factory LootInitialEvent(final int characterId) =
      _$LootInitialEventImpl;

  int get characterId;
  @JsonKey(ignore: true)
  _$$LootInitialEventImplCopyWith<_$LootInitialEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LootAddEventImplCopyWith<$Res> {
  factory _$$LootAddEventImplCopyWith(
          _$LootAddEventImpl value, $Res Function(_$LootAddEventImpl) then) =
      __$$LootAddEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Note note});
}

/// @nodoc
class __$$LootAddEventImplCopyWithImpl<$Res>
    extends _$LootEventCopyWithImpl<$Res, _$LootAddEventImpl>
    implements _$$LootAddEventImplCopyWith<$Res> {
  __$$LootAddEventImplCopyWithImpl(
      _$LootAddEventImpl _value, $Res Function(_$LootAddEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$LootAddEventImpl(
      null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ));
  }
}

/// @nodoc

class _$LootAddEventImpl implements LootAddEvent {
  const _$LootAddEventImpl(this.note);

  @override
  final Note note;

  @override
  String toString() {
    return 'LootEvent.add(note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LootAddEventImpl &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LootAddEventImplCopyWith<_$LootAddEventImpl> get copyWith =>
      __$$LootAddEventImplCopyWithImpl<_$LootAddEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int characterId) init,
    required TResult Function(Note note) add,
    required TResult Function(int index, Note note) edit,
    required TResult Function(int index) delete,
    required TResult Function(List<Note> notes) deleteAll,
  }) {
    return add(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int characterId)? init,
    TResult? Function(Note note)? add,
    TResult? Function(int index, Note note)? edit,
    TResult? Function(int index)? delete,
    TResult? Function(List<Note> notes)? deleteAll,
  }) {
    return add?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int characterId)? init,
    TResult Function(Note note)? add,
    TResult Function(int index, Note note)? edit,
    TResult Function(int index)? delete,
    TResult Function(List<Note> notes)? deleteAll,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LootInitialEvent value) init,
    required TResult Function(LootAddEvent value) add,
    required TResult Function(LootEditEvent value) edit,
    required TResult Function(LootDeleteEvent value) delete,
    required TResult Function(LootDeleteAllEvent value) deleteAll,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LootInitialEvent value)? init,
    TResult? Function(LootAddEvent value)? add,
    TResult? Function(LootEditEvent value)? edit,
    TResult? Function(LootDeleteEvent value)? delete,
    TResult? Function(LootDeleteAllEvent value)? deleteAll,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LootInitialEvent value)? init,
    TResult Function(LootAddEvent value)? add,
    TResult Function(LootEditEvent value)? edit,
    TResult Function(LootDeleteEvent value)? delete,
    TResult Function(LootDeleteAllEvent value)? deleteAll,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class LootAddEvent implements LootEvent {
  const factory LootAddEvent(final Note note) = _$LootAddEventImpl;

  Note get note;
  @JsonKey(ignore: true)
  _$$LootAddEventImplCopyWith<_$LootAddEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LootEditEventImplCopyWith<$Res> {
  factory _$$LootEditEventImplCopyWith(
          _$LootEditEventImpl value, $Res Function(_$LootEditEventImpl) then) =
      __$$LootEditEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, Note note});
}

/// @nodoc
class __$$LootEditEventImplCopyWithImpl<$Res>
    extends _$LootEventCopyWithImpl<$Res, _$LootEditEventImpl>
    implements _$$LootEditEventImplCopyWith<$Res> {
  __$$LootEditEventImplCopyWithImpl(
      _$LootEditEventImpl _value, $Res Function(_$LootEditEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? note = null,
  }) {
    return _then(_$LootEditEventImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ));
  }
}

/// @nodoc

class _$LootEditEventImpl implements LootEditEvent {
  const _$LootEditEventImpl(this.index, this.note);

  @override
  final int index;
  @override
  final Note note;

  @override
  String toString() {
    return 'LootEvent.edit(index: $index, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LootEditEventImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LootEditEventImplCopyWith<_$LootEditEventImpl> get copyWith =>
      __$$LootEditEventImplCopyWithImpl<_$LootEditEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int characterId) init,
    required TResult Function(Note note) add,
    required TResult Function(int index, Note note) edit,
    required TResult Function(int index) delete,
    required TResult Function(List<Note> notes) deleteAll,
  }) {
    return edit(index, note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int characterId)? init,
    TResult? Function(Note note)? add,
    TResult? Function(int index, Note note)? edit,
    TResult? Function(int index)? delete,
    TResult? Function(List<Note> notes)? deleteAll,
  }) {
    return edit?.call(index, note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int characterId)? init,
    TResult Function(Note note)? add,
    TResult Function(int index, Note note)? edit,
    TResult Function(int index)? delete,
    TResult Function(List<Note> notes)? deleteAll,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(index, note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LootInitialEvent value) init,
    required TResult Function(LootAddEvent value) add,
    required TResult Function(LootEditEvent value) edit,
    required TResult Function(LootDeleteEvent value) delete,
    required TResult Function(LootDeleteAllEvent value) deleteAll,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LootInitialEvent value)? init,
    TResult? Function(LootAddEvent value)? add,
    TResult? Function(LootEditEvent value)? edit,
    TResult? Function(LootDeleteEvent value)? delete,
    TResult? Function(LootDeleteAllEvent value)? deleteAll,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LootInitialEvent value)? init,
    TResult Function(LootAddEvent value)? add,
    TResult Function(LootEditEvent value)? edit,
    TResult Function(LootDeleteEvent value)? delete,
    TResult Function(LootDeleteAllEvent value)? deleteAll,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class LootEditEvent implements LootEvent {
  const factory LootEditEvent(final int index, final Note note) =
      _$LootEditEventImpl;

  int get index;
  Note get note;
  @JsonKey(ignore: true)
  _$$LootEditEventImplCopyWith<_$LootEditEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LootDeleteEventImplCopyWith<$Res> {
  factory _$$LootDeleteEventImplCopyWith(_$LootDeleteEventImpl value,
          $Res Function(_$LootDeleteEventImpl) then) =
      __$$LootDeleteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$LootDeleteEventImplCopyWithImpl<$Res>
    extends _$LootEventCopyWithImpl<$Res, _$LootDeleteEventImpl>
    implements _$$LootDeleteEventImplCopyWith<$Res> {
  __$$LootDeleteEventImplCopyWithImpl(
      _$LootDeleteEventImpl _value, $Res Function(_$LootDeleteEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$LootDeleteEventImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LootDeleteEventImpl implements LootDeleteEvent {
  const _$LootDeleteEventImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'LootEvent.delete(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LootDeleteEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LootDeleteEventImplCopyWith<_$LootDeleteEventImpl> get copyWith =>
      __$$LootDeleteEventImplCopyWithImpl<_$LootDeleteEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int characterId) init,
    required TResult Function(Note note) add,
    required TResult Function(int index, Note note) edit,
    required TResult Function(int index) delete,
    required TResult Function(List<Note> notes) deleteAll,
  }) {
    return delete(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int characterId)? init,
    TResult? Function(Note note)? add,
    TResult? Function(int index, Note note)? edit,
    TResult? Function(int index)? delete,
    TResult? Function(List<Note> notes)? deleteAll,
  }) {
    return delete?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int characterId)? init,
    TResult Function(Note note)? add,
    TResult Function(int index, Note note)? edit,
    TResult Function(int index)? delete,
    TResult Function(List<Note> notes)? deleteAll,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LootInitialEvent value) init,
    required TResult Function(LootAddEvent value) add,
    required TResult Function(LootEditEvent value) edit,
    required TResult Function(LootDeleteEvent value) delete,
    required TResult Function(LootDeleteAllEvent value) deleteAll,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LootInitialEvent value)? init,
    TResult? Function(LootAddEvent value)? add,
    TResult? Function(LootEditEvent value)? edit,
    TResult? Function(LootDeleteEvent value)? delete,
    TResult? Function(LootDeleteAllEvent value)? deleteAll,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LootInitialEvent value)? init,
    TResult Function(LootAddEvent value)? add,
    TResult Function(LootEditEvent value)? edit,
    TResult Function(LootDeleteEvent value)? delete,
    TResult Function(LootDeleteAllEvent value)? deleteAll,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class LootDeleteEvent implements LootEvent {
  const factory LootDeleteEvent(final int index) = _$LootDeleteEventImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$LootDeleteEventImplCopyWith<_$LootDeleteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LootDeleteAllEventImplCopyWith<$Res> {
  factory _$$LootDeleteAllEventImplCopyWith(_$LootDeleteAllEventImpl value,
          $Res Function(_$LootDeleteAllEventImpl) then) =
      __$$LootDeleteAllEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Note> notes});
}

/// @nodoc
class __$$LootDeleteAllEventImplCopyWithImpl<$Res>
    extends _$LootEventCopyWithImpl<$Res, _$LootDeleteAllEventImpl>
    implements _$$LootDeleteAllEventImplCopyWith<$Res> {
  __$$LootDeleteAllEventImplCopyWithImpl(_$LootDeleteAllEventImpl _value,
      $Res Function(_$LootDeleteAllEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
  }) {
    return _then(_$LootDeleteAllEventImpl(
      null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc

class _$LootDeleteAllEventImpl implements LootDeleteAllEvent {
  const _$LootDeleteAllEventImpl(final List<Note> notes) : _notes = notes;

  final List<Note> _notes;
  @override
  List<Note> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'LootEvent.deleteAll(notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LootDeleteAllEventImpl &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_notes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LootDeleteAllEventImplCopyWith<_$LootDeleteAllEventImpl> get copyWith =>
      __$$LootDeleteAllEventImplCopyWithImpl<_$LootDeleteAllEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int characterId) init,
    required TResult Function(Note note) add,
    required TResult Function(int index, Note note) edit,
    required TResult Function(int index) delete,
    required TResult Function(List<Note> notes) deleteAll,
  }) {
    return deleteAll(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int characterId)? init,
    TResult? Function(Note note)? add,
    TResult? Function(int index, Note note)? edit,
    TResult? Function(int index)? delete,
    TResult? Function(List<Note> notes)? deleteAll,
  }) {
    return deleteAll?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int characterId)? init,
    TResult Function(Note note)? add,
    TResult Function(int index, Note note)? edit,
    TResult Function(int index)? delete,
    TResult Function(List<Note> notes)? deleteAll,
    required TResult orElse(),
  }) {
    if (deleteAll != null) {
      return deleteAll(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LootInitialEvent value) init,
    required TResult Function(LootAddEvent value) add,
    required TResult Function(LootEditEvent value) edit,
    required TResult Function(LootDeleteEvent value) delete,
    required TResult Function(LootDeleteAllEvent value) deleteAll,
  }) {
    return deleteAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LootInitialEvent value)? init,
    TResult? Function(LootAddEvent value)? add,
    TResult? Function(LootEditEvent value)? edit,
    TResult? Function(LootDeleteEvent value)? delete,
    TResult? Function(LootDeleteAllEvent value)? deleteAll,
  }) {
    return deleteAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LootInitialEvent value)? init,
    TResult Function(LootAddEvent value)? add,
    TResult Function(LootEditEvent value)? edit,
    TResult Function(LootDeleteEvent value)? delete,
    TResult Function(LootDeleteAllEvent value)? deleteAll,
    required TResult orElse(),
  }) {
    if (deleteAll != null) {
      return deleteAll(this);
    }
    return orElse();
  }
}

abstract class LootDeleteAllEvent implements LootEvent {
  const factory LootDeleteAllEvent(final List<Note> notes) =
      _$LootDeleteAllEventImpl;

  List<Note> get notes;
  @JsonKey(ignore: true)
  _$$LootDeleteAllEventImplCopyWith<_$LootDeleteAllEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
