// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_json_converter_freezed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DateTimeFreezedImpl _$$DateTimeFreezedImplFromJson(
        Map<String, dynamic> json) =>
    _$DateTimeFreezedImpl(
      date: _$JsonConverterFromJson<String, DateTime>(
          json['date'], const JsonDateTimeUTCConverter().fromJson),
    );

Map<String, dynamic> _$$DateTimeFreezedImplToJson(
        _$DateTimeFreezedImpl instance) =>
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
