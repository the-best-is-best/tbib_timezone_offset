// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_json_converter_freezed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DateTimeFreezed _$$_DateTimeFreezedFromJson(Map<String, dynamic> json) =>
    _$_DateTimeFreezed(
      date: _$JsonConverterFromJson<String, DateTime>(
          json['date'], const JsonDateTimeUTCConverter().fromJson),
    );

Map<String, dynamic> _$$_DateTimeFreezedToJson(_$_DateTimeFreezed instance) =>
    <String, dynamic>{
      'date': _$JsonConverterToJson<String, DateTime>(
          instance.date, const JsonDateTimeUTCConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
