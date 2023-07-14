// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:example/date_json_converter.dart';
import 'package:tbib_timezone_offset/tbib_timezone_offset.dart';
import 'package:timezone/data/latest_10y.dart';
import 'package:timezone/timezone.dart';

void main() {
  // log(DateTime(2023, 7, 13, 5, 37).toString());
  // log(DateTime(2023, 7, 13, 5, 37).toLocal().toString());
  initializeTimeZones();

  /// from date

  /// egypt to australia
  log('date iso String wrong ${DateTime.now().toIso8601String()}');
  log('date iso String correct ${DateTime.now().toUtc().toIso8601String()}');
  log("date time flutter ${DateTime.now().toIsoDateTimeLocalString}");
  log("date time is ${DateTime.parse(DateTime.now().toIsoDateTimeLocalString).getLocalDateTime}");
  log("Date time australia ${TZDateTime.from(DateTime.now(), getLocation("Australia/Sydney"))}");

  /// australia to egypt
  var dateAustralia = TZDateTime.now(getLocation("Australia/Sydney"));
  log("date time egypt is  ${dateAustralia.toIsoDateTimeLocalString}");
  log("date time egypt format  ${dateAustralia.formatDate("yyyy-MM-dd HH:mm:ss")}");
  log("date time egypt format from date time ${DateTime.now().toUtc().formatDate("yyyy-MM-dd HH:mm:ss")}");

  log("date time australia is ${TZDateTime.parse(getLocation("Australia/Sydney"), dateAustralia.toIsoDateTimeUTCString)}");

  /// form string date

  log('\n');
  log('\n x');
  log('\n   xx');
  String dateAustraliaString =
      TZDateTime.now(getLocation("Australia/Sydney")).toIso8601String();

  log("date time String egypt is  ${dateAustraliaString.isoDateTimeLocalString}");
  log("date time String egypt format  ${dateAustraliaString.formatDate("yyyy-MM-dd HH:mm:ss")}");
  log("date time String australia is  ${TZDateTime.parse(getLocation("Australia/Sydney"), dateAustraliaString)}");

  DateTimeJson dateTimeJson = DateTimeJson(date: DateTime.now());

  log('\n');
  log('\n x');
  log('\n   xx');

  log("date time from json ${DateTimeJson.fromJson({
        "date": DateTime.now().toIso8601String()
      }).date.toIsoDateTimeUTCString}");

  log("date time json ${dateTimeJson.toJson()}");
}
