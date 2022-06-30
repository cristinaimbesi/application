import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../fitbit_entities/access_token.dart';
import '../fitbit_entities/activities_steps_entity.dart';
import '../fitbit_entities/sleep_entity.dart';

class DatabaseRepository extends ChangeNotifier {
  AccessTokenEntity? accessTokenEntity;

  FitBitActivitiesStepEntity? activitiesStepEntity;
  FitBitSleepEntity? bitSleepEntity;
  void setAccessTokenEntity(AccessTokenEntity token) {
    accessTokenEntity = token;
    notifyListeners();
  }

  void setStepObject() async {
    final Dio _dioCr = Dio();

    try {
      print('Perform request call to activities... ');
      print('');
      const _baseUrl =
          'https://api.fitbit.com/1/user/-/activities/steps/date/today/7d.json';

      _dioCr.options.headers["authorization"] =
          "Bearer ${accessTokenEntity!.accessToken}";

      Response response = await _dioCr.get(_baseUrl);
      if (response.statusCode == 200) {
        print(response.data);
        activitiesStepEntity =
            FitBitActivitiesStepEntity.fromJson(response.data);
      } else {
        print('Wrong authorization');
      }
    } catch (e) {
      print(e);
    }
    notifyListeners();
  }

  void setSleepObject() async {
    final Dio _dioCr = Dio();
    try {
      print('Perform request call to activities... ');
      print('');
      const _baseUrl =
          'https://api.fitbit.com/1.2/user/-/sleep/date/today.json';

      _dioCr.options.headers["authorization"] =
          "Bearer ${accessTokenEntity!.accessToken}";

      Response response = await _dioCr.get(_baseUrl);
      if (response.statusCode == 200) {
        print(response.data);

        bitSleepEntity = FitBitSleepEntity.fromJson(response.data);
      } else {
        print('Wrong authorization');
      }
    } catch (e) {
      print(e);
    }
    notifyListeners();
  }
} //DatabaseRepository
