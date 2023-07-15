import 'package:intl/intl.dart';

/// extension for DateTime
extension DateTimeTbibTimezoneOffset on DateTime {
  /// get timezone offset
  Duration get getTimezoneOffset {
    return this.toLocal().timeZoneOffset;
  }

  /// get local date time
  DateTime get getLocalDateTime {
    return this.toLocal();
  }

  /// get iso date time string
  String get toIsoDateTimeLocalString {
    return """${this.toLocal().toIso8601String()}${this.getTimezoneOffset.isNegative ? "-" : "+"}${this.getTimezoneOffset.inHours.abs().toString().padLeft(2, "0")}:${(this.getTimezoneOffset.inMinutes - this.getTimezoneOffset.inHours * 60).toString().padLeft(2, "0")}""";
  }

  /// get iso date time string
  String get toIsoDateTimeUTCString {
    return this.toUtc().toIso8601String();
  }

  /// format date
  String formatDate(String format) {
    final dateString = this.toIsoDateTimeUTCString;
    return DateFormat(format).format(DateTime.parse(dateString).toLocal());
  }
}

/// extension for String
extension DateTimeStringTbibTimezoneOffset on String {
  /// get date time
  DateTime get getDateTime {
    return DateTime.parse(this);
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
  String get toIsoDateTimeLocalString {
    return DateTime.parse(this).toUtc().toIsoDateTimeLocalString;
  }

  /// get iso date time as utc string
  String get toIsoDateTimeUTCString {
    return this.getDateTime.toIsoDateTimeUTCString;
  }

  /// format date
  String formatDate(String format) {
    return this.getDateTime.formatDate(format);
  }
}
