import 'package:json_annotation/json_annotation.dart';
import 'package:tbib_timezone_offset/tbib_timezone_offset.dart';

/// A [JsonSerializable] that converts an [DateTime]
/// to and from ISO 8601 strings.
class JsonDateTimeOffsetConverter implements JsonConverter<DateTime, String> {
  /// Creates a new [JsonDateTimeOffsetConverter].
  const JsonDateTimeOffsetConverter();

  @override
  DateTime fromJson(String json) {
    return DateTime.parse(json);
  }

  @override
  String toJson(DateTime json) => json.toIsoDateTimeLocalString;
}

/// A [JsonSerializable] that converts an [DateTime]
/// to and from ISO 8601 strings.
class JsonDateTimeUTCConverter implements JsonConverter<DateTime, String> {
  /// Creates a new [JsonDateTimeUTCConverter].
  const JsonDateTimeUTCConverter();

  @override
  DateTime fromJson(String json) {
    return DateTime.parse(json);
  }

  @override
  String toJson(DateTime json) => json.toIsoDateTimeUTCString;
}
