import 'package:logger/logger.dart';

import 'package:meb_application/src/data/fitbitDeviceData.dart';

import 'package:meb_application/src/urls/fitbitAPIURL.dart';

import 'package:meb_application/src/data/fitbitData.dart';

import 'package:meb_application/src/managers/fitbitDataManager.dart';

/// [FitbitDeviceDataManager] is a class the manages the requests related to
/// [FitbitDeviceData].
class FitbitDeviceDataManager extends FitbitDataManager {
  /// Default constructor
  FitbitDeviceDataManager({String? clientID, String? clientSecret}) {
    this.clientID = clientID;
    this.clientSecret = clientSecret;
  } // FitbitDeviceDataManager

  @override
  Future<List<FitbitData>> fetch(FitbitAPIURL fitbitUrl) async {
    // Get the response
    final response = await getResponse(fitbitUrl);

    // Debugging
    final logger = Logger();
    logger.i('$response');

    //Extract data and return them
    List<FitbitData> ret = _extractFitbitDeviceData(response, fitbitUrl.userID);
    return ret;
  } // fetch

  /// A private method that extracts [FitbitDeviceData] from the given response.
  List<FitbitDeviceData> _extractFitbitDeviceData(
      dynamic response, String? userID) {
    final data = response;
    List<FitbitDeviceData> deviceDatapoints =
        List<FitbitDeviceData>.empty(growable: true);

    for (var record = 0; record < data.length; record++) {
      deviceDatapoints.add(FitbitDeviceData(
        encodedId: userID,
        batteryLevel: data[record]['battery'],
        deviceId: data[record]['id'],
        deviceVersion: data[record]['deviceVersion'],
        type: data[record]['type'],
        lastSyncTime: DateTime.parse(data[record]['lastSyncTime']),
      ));
    } // for entry
    return deviceDatapoints;
  } // _extractFitbitDeviceData

} // FitbitDeviceDataManager
