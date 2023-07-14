// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_json_converter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DateTimeJson _$DateTimeJsonFromJson(Map<String, dynamic> json) => DateTimeJson(
      date:
          const JsonDateTimeOffsetConverter().fromJson(json['date'] as String),
    );

Map<String, dynamic> _$DateTimeJsonToJson(DateTimeJson instance) =>
    <String, dynamic>{
      'date': const JsonDateTimeOffsetConverter().toJson(instance.date),
    };
