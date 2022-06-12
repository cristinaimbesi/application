import 'package:meb_application/src/utils/formats.dart';

import 'package:meb_application/src/data/fitbitData.dart';

/// [FitbitDevicesData] is a class implementing the data model of the
/// user devices data.
class FitbitDeviceData implements FitbitData {
  /// The user encoded id.
  String? encodedId;

  /// The device id.
  String? deviceId;

  /// The current battery level of the device.
  String? batteryLevel;

  /// The version of the device.
  String? deviceVersion;

  /// The type of the device.
  String? type;

  /// The date when the device was synched the last time.
  DateTime? lastSyncTime;

  /// Default [FitbitDeviceData] constructor.
  FitbitDeviceData({
    this.encodedId,
    this.batteryLevel,
    this.deviceId,
    this.deviceVersion,
    this.lastSyncTime,
    this.type,
  });

  /// Generates a [FitbitDeviceData] obtained from a json.
  factory FitbitDeviceData.fromJson({required Map<String, dynamic> json}) {
    return FitbitDeviceData(
      encodedId: json['encodedId'],
      batteryLevel: json['batteryLevel'],
      deviceId: json['deviceId'],
      deviceVersion: json['deviceVersion'],
      lastSyncTime: Formats.onlyDayDateFormatTicks.parse(json['lastSyncTime']),
      type: json['type'],
    );
  } // fromJson

  @override
  String toString() {
    return (StringBuffer('FitbitDeviceData(')
          ..write('encodedId: $encodedId, ')
          ..write('deviceId: $deviceId, ')
          ..write('deviceVersion: $deviceVersion, ')
          ..write('batteryLevel: $batteryLevel, ')
          ..write('lastSyncTime: $lastSyncTime, ')
          ..write('type: $type, ')
          ..write(')'))
        .toString();
  } // toString

  @override
  Map<String, dynamic> toJson<T extends FitbitData>() {
    return <String, dynamic>{
      'encodedId': encodedId,
      'deviceId': deviceId,
      'deviceVersion': deviceVersion,
      'batteryLevel': batteryLevel,
      'lastSyncTime': lastSyncTime,
      'type': type,
    };
  } // toJson

} // FitbitDeviceData