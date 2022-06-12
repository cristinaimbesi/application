import 'package:meb_application/src/utils/formats.dart';

import 'package:meb_application/src/data/fitbitData.dart';

/// [FitbitSleepData] is a class implementing the data model of the
/// user sleep data.
class FitbitSleepData implements FitbitData {
  /// The user encoded id.
  String? encodedId;

  /// The date of when the sleep session begun.
  DateTime? dateOfSleep;

  /// The date of the data entry.
  DateTime? entryDateTime;

  /// The level of the sleep data.
  String? level;

  /// Default [FitbitSleepData] constructor.
  FitbitSleepData({
    this.encodedId,
    this.dateOfSleep,
    this.entryDateTime,
    this.level,
  });

  /// Generates a [FitbitSleepData] obtained from a json.
  factory FitbitSleepData.fromJson({required Map<String, dynamic> json}) {
    return FitbitSleepData(
      encodedId: json['encodedId'],
      dateOfSleep: Formats.onlyDayDateFormatTicks.parse(json['dateOfSleep']),
      entryDateTime: DateTime.parse(json['entryDateTime']),
      level: json['level'],
    );
  } // fromJson

  @override
  String toString() {
    return (StringBuffer('FitbitSleepData(')
          ..write('encodedId: $encodedId, ')
          ..write('dateOfSleep: $dateOfSleep, ')
          ..write('entryDateTime: $entryDateTime, ')
          ..write('level: $level, ')
          ..write(')'))
        .toString();
  } // toString

  @override
  Map<String, dynamic> toJson<T extends FitbitData>() {
    return <String, dynamic>{
      'encodedId': encodedId,
      'dateOfSleep': dateOfSleep,
      'entryDateTime': entryDateTime,
      'level': level,
    };
  } // toJson

} // FitbitSleepData