// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:example/date_json_converter.dart';
import 'package:flutter/material.dart';
import 'package:tbib_timezone_offset/tbib_timezone_offset.dart';
import 'package:timezone/data/latest_10y.dart';
import 'package:timezone/standalone.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeTimeZones();
  tz.Location sydney = tz.getLocation('Australia/Sydney');

  /// egypt to australia
  log('date iso String wrong ${DateTime.now().toIso8601String()}');
  log('date iso String correct ${DateTime.now().toUtc().toIso8601String()}');
  log("date time flutter ${DateTime.now()}");
  log("date time egypt is ${DateTime.parse(DateTime.now().toString()).getLocalDateTime}");
  log('\n');
  log('\n x');
  log('\n   xx');

  /// australia to egypt
  // DateTime dateAustralia = tz.TZDateTime.now(sydney);
  DateTime dateAustralia =
      DateTime.parse(tz.TZDateTime.now(sydney).toIso8601String());
  log("date time AUS is  $dateAustralia");
  log("date time egypt is  ${dateAustralia.toIsoDateTimeUTCString}");
  log("date time egypt format  ${dateAustralia.formatDate("yyyy-MM-dd HH:mm:ss")}");
  log("date time egypt format from date time ${dateAustralia.formatDate("yyyy-MM-dd HH:mm:ss")}");

  /// form string date

  log('\n');
  log('\n x');
  log('\n   xx');
  String dateAustraliaString = tz.TZDateTime.now(sydney).toIso8601String();

  log("date time String egypt is  ${dateAustraliaString.toIsoDateTimeLocalString}");
  log("date time String egypt format  ${dateAustraliaString.formatDate("yyyy-MM-dd HH:mm:ss")}");

  DateTimeJson dateTimeJson =
      DateTimeJson.fromJson({"date": DateTime.now().toString()});

  log('\n');
  log('\n x');
  log('\n   xx');

  log("date time json ${(dateTimeJson.date?.toIsoDateTimeUTCString)}");
  var date = DateTime.parse("2023-07-14 20:00:28.733182+10:00");

  log(date.toLocal().formatDate("dd/MM/yyyy HH:mm:ss"));
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeApp(),
    );
  }
}

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TBIBDatePickerFormField(
          title: 'Date time picker',
          onSaved: (value) {},
          datePickerStyle: TBIBDatePickerStyle(
            isDateAndTime: true,
            getTime: ({required date}) {
              log('date time is $date');
            },
            initDate: DateTime.now().add(const Duration(days: 5)),
            startDate: DateTime.now(),
            endDate: DateTime.now().add(const Duration(days: 10)),
          ),
        ),
      )),
    );
  }
}
