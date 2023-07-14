import 'package:intl/intl.dart';

/// {@template tbib_timezone_offset}
/// Get date time with offset to local time , format time or convert it to iso format
/// {@endtemplate}

class TbibTimezoneOffset {
  /// {@macro tbib_timezone_offset}
}

/// extension for DateTime
extension DateTimeTbibTimezoneOffset on DateTime {
  /// get timezone offset
  Duration get getTimezoneOffset {
    return this.timeZoneOffset;
  }

  /// get local date time
  DateTime get getLocalDateTime {
    return this.toLocal();
  }

  /// get iso date time string
  String get toIsoDateTimeLocalString {
    return "${this.toIso8601String().replaceAll('Z', '')}${this.getTimezoneOffset.isNegative ? "-" : "+"}${this.getTimezoneOffset.inHours.abs().toString().padLeft(2, "0")}:${(this.getTimezoneOffset.inMinutes - this.getTimezoneOffset.inHours * 60).toString().padLeft(2, "0")}";
  }

  /// get iso date time string
  String get toIsoDateTimeUTCString {
    return this.toUtc().toIso8601String();
  }

  /// format date
  String formatDate(String format) {
    return DateFormat(format).format(this);
  }
}

/// extension for String
extension DateTimeStringTbibTimezoneOffset on String {
  /// get date time
  DateTime get getDateTime {
    return DateTime.parse(this).toLocal();
  }

  /// get timezone offset
  Duration get getTimezoneOffset {
    return this.getDateTime.getTimezoneOffset;
  }

  /// get local date time
  DateTime get getLocalDateTime {
    return this.getDateTime.getLocalDateTime;
  }

  /// get iso date time as local string
  String get isoDateTimeLocalString {
    return this.getDateTime.toIsoDateTimeLocalString;
  }

  /// get iso date time as utc string
  String get isoDateTimeUTCString {
    return this.getDateTime.toIsoDateTimeUTCString;
  }

  /// format date
  String formatDate(String format) {
    return this.getDateTime.formatDate(format);
  }
}
