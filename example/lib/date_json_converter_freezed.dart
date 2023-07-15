import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tbib_timezone_offset/tbib_timezone_offset.dart';

part 'date_json_converter_freezed.freezed.dart';
part 'date_json_converter_freezed.g.dart';

@Freezed()
class DateTimeFreezed with _$DateTimeFreezed {
  factory DateTimeFreezed({
    @JsonDateTimeUTCConverter() required DateTime? date,
  }) = _DateTimeFreezed;

  factory DateTimeFreezed.fromJson(Map<String, Object?> json) =>
      _$DateTimeFreezedFromJson(json);
}
