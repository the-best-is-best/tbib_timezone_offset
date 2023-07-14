// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_json_converter_freezed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DateTimeFreezed _$$_DateTimeFreezedFromJson(Map<String, dynamic> json) =>
    _$_DateTimeFreezed(
      date: const JsonDateTimeUTCConverter().fromJson(json['date'] as String),
    );

Map<String, dynamic> _$$_DateTimeFreezedToJson(_$_DateTimeFreezed instance) =>
    <String, dynamic>{
      'date': const JsonDateTimeUTCConverter().toJson(instance.date),
    };
