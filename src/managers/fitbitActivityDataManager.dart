import 'package:logger/logger.dart';

import 'package:meb_application/src/urls/fitbitAPIURL.dart';

import 'package:meb_application/src/data/fitbitData.dart';
import 'package:meb_application/src/data/fitbitActivityData.dart';

import 'package:meb_application/src/managers/fitbitDataManager.dart';

/// [FitbitActivityDataManager] is a class the manages the requests related to
/// [FitbitActivityData].
class FitbitActivityDataManager extends FitbitDataManager {
  /// Default [FitbitActivityDataManager] constructor.
  FitbitActivityDataManager({String? clientID, String? clientSecret}) {
    this.clientID = clientID;
    this.clientSecret = clientSecret;
  } // FitbitActivityDataManager

  @override
  Future<List<FitbitData>> fetch(FitbitAPIURL fitbitUrl) async {
    // Get the response
    final response = await getResponse(fitbitUrl);

    // Debugging
    final logger = Logger();
    logger.i('$response');

    //Extract data and return them
    List<FitbitData> ret =
        _extractFitbitActivityData(response, fitbitUrl.userID)
            .cast<FitbitData>();
    return ret;
  } // fetch

  List<FitbitActivityData> _extractFitbitActivityData(
      dynamic response, String? userID) {
    final data = response['activities'];
    List<FitbitActivityData> activityDatapoints =
        List<FitbitActivityData>.empty(growable: true);

    for (var record = 0; record < data.length; record++) {
      activityDatapoints.add(FitbitActivityData(
          encodedId: userID,
          activityId: data[record]['activityId'].toString(),
          activityParentId: data[record]['activityParentId'].toString(),
          calories: data[record]['calories'].toDouble(),
          description: data[record]['description'],
          distance: data[record]['distance'] == null
              ? 0.0
              : data[record]["distance"].toDouble(),
          duration: data[record]['duration'].toDouble(),
          isFavorite: data[record]['isFavorite'],
          logId: data[record]['logId'].toString(),
          name: data[record]['name'],
          startTime: DateTime.parse(
              data[record]["startDate"] + " " + data[record]["startTime"]),
          dateOfMonitoring: DateTime.parse(data[record]["startDate"])));
    } // for entry
    return activityDatapoints;
  } // _extractFitbitActivityData

} // FitbitActivityDataManager