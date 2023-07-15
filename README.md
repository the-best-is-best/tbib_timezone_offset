# Tbib Timezone Offset

This Package used for Get date time with offset to local time , format time or convert it to iso format with date phone without location and server time zone not in egypt

<h3> How to use</h3>

<h4> Let's see the mistakes we make constantly  </h4>

```dart
  // when we convert date time to iso string
    log('date iso String wrong ${DateTime.now().toIso8601String()}');  
    // why this code above in wrong see print

    // 2023-07-14T12:09:07.700784
    // it not convert to iso string and add Z in the end see next code and log and don't remove two hours from egypt but add it as iso.

    log('date iso String correct ${DateTime.now().toUtc().toIso8601String()}');
    // why this code above in correct see print 

    // 2023-07-14T09:09:07.702586Z
    // it not convert to iso string and add Z in the end see next code

```

<h3> with this package add this methods to solve this issue from date time  to string iso </h3>

```dart

// convert date time to correct iso string  with local time
    log("date time flutter ${DateTime.now().toIsoDateTimeLocalString}");


// convert date time to correct iso string  with utc time
    log("date time is ${DateTime.parse(DateTime.now().toIsoDateTimeLocalString).getLocalDateTime}");

```

<h3> with this package add this methods to solve this issue from string iso to date time   </h3>

```dart
// convert date time time to string 
DateTime dateAustraliaString = DateTime.parse("2023-07-14 20:00:28.733182+10:00");
log("date time String egypt is  ${dateAustraliaString.isoDateTimeLocalString}");

```

<h3> Can format string date or date time to any format  </h3>

```dart

var date = "2023-07-14 20:00:28.733182+10:00";

// or use 
var date = DateTime.parse("2023-07-14 20:00:28.733182+10:00");

date.formatDate("dd/MM/yyyy HH:mm:ss");

```
