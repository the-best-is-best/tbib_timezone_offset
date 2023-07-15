// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_json_converter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DateTimeJson _$DateTimeJsonFromJson(Map<String, dynamic> json) => DateTimeJson(
      date: _$JsonConverterFromJson<String, DateTime>(
          json['date'], const JsonDateTimeOffsetConverter().fromJson),
    );

Map<String, dynamic> _$DateTimeJsonToJson(DateTimeJson instance) =>
    <String, dynamic>{
      'date': _$JsonConverterToJson<String, DateTime>(
          instance.date, const JsonDateTimeOffsetConverter().toJson),
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
