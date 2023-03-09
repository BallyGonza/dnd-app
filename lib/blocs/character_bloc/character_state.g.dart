// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterInitial _$$CharacterInitialFromJson(Map<String, dynamic> json) =>
    _$CharacterInitial(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CharacterInitialToJson(_$CharacterInitial instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$CharacterUpdated _$$CharacterUpdatedFromJson(Map<String, dynamic> json) =>
    _$CharacterUpdated(
      (json['characters'] as List<dynamic>)
          .map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CharacterUpdatedToJson(_$CharacterUpdated instance) =>
    <String, dynamic>{
      'characters': instance.characters,
      'runtimeType': instance.$type,
    };
