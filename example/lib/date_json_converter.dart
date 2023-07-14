import 'package:json_annotation/json_annotation.dart';
import 'package:tbib_timezone_offset/tbib_timezone_offset.dart';

part 'date_json_converter.g.dart';

@JsonSerializable(explicitToJson: true)
class DateTimeJson {
  @JsonDateTimeUTCConverter()
  DateTime date;
  DateTimeJson({
    required this.date,
  });
  factory DateTimeJson.fromJson(Map<String, dynamic> json) =>
      _$DateTimeJsonFromJson(json);
  Map<String, dynamic> toJson() => _$DateTimeJsonToJson(this);
}
