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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LootEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Note note) add,
    required TResult Function(int index) delete,
    required TResult Function(List<Note> notes) deleteAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Note note)? add,
    TResult? Function(int index)? delete,
    TResult? Function(List<Note> notes)? deleteAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Note note)? add,
    TResult Function(int index)? delete,
    TResult Function(List<Note> notes)? deleteAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LootInitialEvent value) init,
    required TResult Function(LootAddEvent value) add,
    required TResult Function(LootDeleteEvent value) delete,
    required TResult Function(LootDeleteAllEvent value) deleteAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LootInitialEvent value)? init,
    TResult? Function(LootAddEvent value)? add,
    TResult? Function(LootDeleteEvent value)? delete,
    TResult? Function(LootDeleteAllEvent value)? deleteAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LootInitialEvent value)? init,
    TResult Function(LootAddEvent value)? add,
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
abstract class _$$LootInitialEventCopyWith<$Res> {
  factory _$$LootInitialEventCopyWith(
          _$LootInitialEvent value, $Res Function(_$LootInitialEvent) then) =
      __$$LootInitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LootInitialEventCopyWithImpl<$Res>
    extends _$LootEventCopyWithImpl<$Res, _$LootInitialEvent>
    implements _$$LootInitialEventCopyWith<$Res> {
  __$$LootInitialEventCopyWithImpl(
      _$LootInitialEvent _value, $Res Function(_$LootInitialEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LootInitialEvent implements LootInitialEvent {
  const _$LootInitialEvent();

  @override
  String toString() {
    return 'LootEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LootInitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Note note) add,
    required TResult Function(int index) delete,
    required TResult Function(List<Note> notes) deleteAll,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Note note)? add,
    TResult? Function(int index)? delete,
    TResult? Function(List<Note> notes)? deleteAll,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Note note)? add,
    TResult Function(int index)? delete,
    TResult Function(List<Note> notes)? deleteAll,
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
    required TResult Function(LootInitialEvent value) init,
    required TResult Function(LootAddEvent value) add,
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
  const factory LootInitialEvent() = _$LootInitialEvent;
}

/// @nodoc
abstract class _$$LootAddEventCopyWith<$Res> {
  factory _$$LootAddEventCopyWith(
          _$LootAddEvent value, $Res Function(_$LootAddEvent) then) =
      __$$LootAddEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Note note});
}

/// @nodoc
class __$$LootAddEventCopyWithImpl<$Res>
    extends _$LootEventCopyWithImpl<$Res, _$LootAddEvent>
    implements _$$LootAddEventCopyWith<$Res> {
  __$$LootAddEventCopyWithImpl(
      _$LootAddEvent _value, $Res Function(_$LootAddEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$LootAddEvent(
      null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ));
  }
}

/// @nodoc

class _$LootAddEvent implements LootAddEvent {
  const _$LootAddEvent(this.note);

  @override
  final Note note;

  @override
  String toString() {
    return 'LootEvent.add(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LootAddEvent &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LootAddEventCopyWith<_$LootAddEvent> get copyWith =>
      __$$LootAddEventCopyWithImpl<_$LootAddEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Note note) add,
    required TResult Function(int index) delete,
    required TResult Function(List<Note> notes) deleteAll,
  }) {
    return add(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Note note)? add,
    TResult? Function(int index)? delete,
    TResult? Function(List<Note> notes)? deleteAll,
  }) {
    return add?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Note note)? add,
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
  const factory LootAddEvent(final Note note) = _$LootAddEvent;

  Note get note;
  @JsonKey(ignore: true)
  _$$LootAddEventCopyWith<_$LootAddEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LootDeleteEventCopyWith<$Res> {
  factory _$$LootDeleteEventCopyWith(
          _$LootDeleteEvent value, $Res Function(_$LootDeleteEvent) then) =
      __$$LootDeleteEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$LootDeleteEventCopyWithImpl<$Res>
    extends _$LootEventCopyWithImpl<$Res, _$LootDeleteEvent>
    implements _$$LootDeleteEventCopyWith<$Res> {
  __$$LootDeleteEventCopyWithImpl(
      _$LootDeleteEvent _value, $Res Function(_$LootDeleteEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$LootDeleteEvent(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LootDeleteEvent implements LootDeleteEvent {
  const _$LootDeleteEvent(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'LootEvent.delete(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LootDeleteEvent &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LootDeleteEventCopyWith<_$LootDeleteEvent> get copyWith =>
      __$$LootDeleteEventCopyWithImpl<_$LootDeleteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Note note) add,
    required TResult Function(int index) delete,
    required TResult Function(List<Note> notes) deleteAll,
  }) {
    return delete(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Note note)? add,
    TResult? Function(int index)? delete,
    TResult? Function(List<Note> notes)? deleteAll,
  }) {
    return delete?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Note note)? add,
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
  const factory LootDeleteEvent(final int index) = _$LootDeleteEvent;

  int get index;
  @JsonKey(ignore: true)
  _$$LootDeleteEventCopyWith<_$LootDeleteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LootDeleteAllEventCopyWith<$Res> {
  factory _$$LootDeleteAllEventCopyWith(_$LootDeleteAllEvent value,
          $Res Function(_$LootDeleteAllEvent) then) =
      __$$LootDeleteAllEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Note> notes});
}

/// @nodoc
class __$$LootDeleteAllEventCopyWithImpl<$Res>
    extends _$LootEventCopyWithImpl<$Res, _$LootDeleteAllEvent>
    implements _$$LootDeleteAllEventCopyWith<$Res> {
  __$$LootDeleteAllEventCopyWithImpl(
      _$LootDeleteAllEvent _value, $Res Function(_$LootDeleteAllEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
  }) {
    return _then(_$LootDeleteAllEvent(
      null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc

class _$LootDeleteAllEvent implements LootDeleteAllEvent {
  const _$LootDeleteAllEvent(final List<Note> notes) : _notes = notes;

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LootDeleteAllEvent &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_notes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LootDeleteAllEventCopyWith<_$LootDeleteAllEvent> get copyWith =>
      __$$LootDeleteAllEventCopyWithImpl<_$LootDeleteAllEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Note note) add,
    required TResult Function(int index) delete,
    required TResult Function(List<Note> notes) deleteAll,
  }) {
    return deleteAll(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Note note)? add,
    TResult? Function(int index)? delete,
    TResult? Function(List<Note> notes)? deleteAll,
  }) {
    return deleteAll?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Note note)? add,
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
      _$LootDeleteAllEvent;

  List<Note> get notes;
  @JsonKey(ignore: true)
  _$$LootDeleteAllEventCopyWith<_$LootDeleteAllEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
