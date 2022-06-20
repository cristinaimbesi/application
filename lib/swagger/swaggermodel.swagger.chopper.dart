//Generated code

part of 'swaggermodel.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$Swaggermodel extends Swaggermodel {
  _$Swaggermodel([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = Swaggermodel;

  @override
  Future<Response<dynamic>> _oauth2TokenPost(
      {String? authorization,
      String? code,
      required String? clientId,
      String? expiresIn,
      required String? grantType,
      String? redirectUri,
      String? refreshToken,
      String? state}) {
    final $url = '/oauth2/token';
    final $params = <String, dynamic>{
      'code': code,
      'client_id': clientId,
      'expires_in': expiresIn,
      'grant_type': grantType,
      'redirect_uri': redirectUri,
      'refresh_token': refreshToken,
      'state': state
    };
    final $headers = {
      if (authorization != null) 'Authorization': authorization,
    };

    final $request = Request('POST', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$11Oauth2IntrospectPost({required String? token}) {
    final $url = '/1.1/oauth2/introspect';
    final $body = <String, dynamic>{'token': token};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserActivitiesDateDateJsonGet(
      {required String? date}) {
    final $url = '/1/user/-/activities/date/${date}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>>
      _$1UserActivitiesResourcePathDateBaseDateEndDateJsonGet(
          {required String? resourcePath,
          required String? baseDate,
          required String? endDate}) {
    final $url =
        '/1/user/-/activities/${resourcePath}/date/${baseDate}/${endDate}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>>
      _$1UserActivitiesTrackerResourcePathDateBaseDateEndDateJsonGet(
          {required String? resourcePath,
          required String? baseDate,
          required String? endDate}) {
    final $url =
        '/1/user/-/activities/tracker/${resourcePath}/date/${baseDate}/${endDate}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserActivitiesResourcePathDateDatePeriodJsonGet(
      {required String? resourcePath,
      required String? date,
      required String? period}) {
    final $url =
        '/1/user/-/activities/${resourcePath}/date/${date}/${period}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>>
      _$1UserActivitiesTrackerResourcePathDateDatePeriodJsonGet(
          {required String? resourcePath,
          required String? date,
          required String? period}) {
    final $url =
        '/1/user/-/activities/tracker/${resourcePath}/date/${date}/${period}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>>
      _$1UserActivitiesResourcePathDateBaseDateEndDateDetailLevelJsonGet(
          {required String? resourcePath,
          required String? baseDate,
          required String? endDate,
          required String? detailLevel}) {
    final $url =
        '/1/user/-/activities/${resourcePath}/date/${baseDate}/${endDate}/${detailLevel}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>>
      _$1UserActivitiesResourcePathDateDate1dDetailLevelJsonGet(
          {required String? resourcePath,
          required String? date,
          required String? detailLevel}) {
    final $url =
        '/1/user/-/activities/${resourcePath}/date/${date}/1d/${detailLevel}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>>
      _$1UserActivitiesResourcePathDateDateEndDateDetailLevelTimeStartTimeEndTimeJsonGet(
          {required String? resourcePath,
          required String? date,
          required String? endDate,
          required String? detailLevel,
          required String? startTime,
          required String? endTime}) {
    final $url =
        '/1/user/-/activities/${resourcePath}/date/${date}/${endDate}/${detailLevel}/time/${startTime}/${endTime}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>>
      _$1UserActivitiesResourcePathDateDate1dDetailLevelTimeStartTimeEndTimeJsonGet(
          {required String? resourcePath,
          required String? date,
          required String? detailLevel,
          required String? startTime,
          required String? endTime}) {
    final $url =
        '/1/user/-/activities/${resourcePath}/date/${date}/1d/${detailLevel}/time/${startTime}/${endTime}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserActivitiesJsonPost(
      {required int? activityId,
      String? activityName,
      required int? manualCalories,
      required String? startTime,
      required int? durationMillis,
      required String? date,
      required int? distance,
      int? distanceUnit}) {
    final $url = '/1/user/-/activities.json';
    final $params = <String, dynamic>{
      'activityId': activityId,
      'activityName': activityName,
      'manualCalories': manualCalories,
      'startTime': startTime,
      'durationMillis': durationMillis,
      'date': date,
      'distance': distance,
      'distanceUnit': distanceUnit
    };
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserActivitiesJsonGet() {
    final $url = '/1/user/-/activities.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserActivitiesActivityLogIdJsonDelete(
      {required int? activityLogId}) {
    final $url = '/1/user/-/activities/${activityLogId}.json';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserActivitiesListJsonGet(
      {String? beforeDate,
      String? afterDate,
      required String? sort,
      required int? offset,
      required int? limit}) {
    final $url = '/1/user/-/activities/list.json';
    final $params = <String, dynamic>{
      'beforeDate': beforeDate,
      'afterDate': afterDate,
      'sort': sort,
      'offset': offset,
      'limit': limit
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserActivitiesLogIdTcxGet(
      {required String? logId, bool? includePartialTCX}) {
    final $url = '/1/user/-/activities/${logId}.tcx';
    final $params = <String, dynamic>{'includePartialTCX': includePartialTCX};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1ActivitiesJsonGet() {
    final $url = '/1/activities.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1ActivitiesActivityIdJsonGet(
      {required String? activityId}) {
    final $url = '/1/activities/${activityId}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserActivitiesFrequentJsonGet() {
    final $url = '/1/user/-/activities/frequent.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserActivitiesRecentJsonGet() {
    final $url = '/1/user/-/activities/recent.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserActivitiesFavoriteJsonGet() {
    final $url = '/1/user/-/activities/favorite.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserActivitiesFavoriteActivityIdJsonDelete(
      {required String? activityId}) {
    final $url = '/1/user/-/activities/favorite/${activityId}.json';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserActivitiesFavoriteActivityIdJsonPost(
      {required String? activityId}) {
    final $url = '/1/user/-/activities/favorite/${activityId}.json';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserActivitiesGoalsPeriodJsonGet(
      {required String? period}) {
    final $url = '/1/user/-/activities/goals/${period}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserActivitiesGoalsPeriodJsonPost(
      {required String? period,
      required String? type,
      required String? value}) {
    final $url = '/1/user/-/activities/goals/${period}.json';
    final $params = <String, dynamic>{'type': type, 'value': value};
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserBodyLogFatDateDateJsonGet(
      {required String? date}) {
    final $url = '/1/user/-/body/log/fat/date/${date}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserBodyLogFatDateDatePeriodJsonGet(
      {required String? date, required String? period}) {
    final $url = '/1/user/-/body/log/fat/date/${date}/${period}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserBodyLogFatDateBaseDateEndDateJsonGet(
      {required String? baseDate, required String? endDate}) {
    final $url = '/1/user/-/body/log/fat/date/${baseDate}/${endDate}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserBodyLogFatJsonPost(
      {required int? fat, required String? date, required String? time}) {
    final $url = '/1/user/-/body/log/fat.json';
    final $params = <String, dynamic>{'fat': fat, 'date': date, 'time': time};
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserBodyLogFatBodyFatLogIdJsonDelete(
      {required int? bodyFatLogId}) {
    final $url = '/1/user/-/body/log/fat/${bodyFatLogId}.json';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserBodyResourcePathDateDatePeriodJsonGet(
      {required String? resourcePath,
      required String? date,
      required String? period}) {
    final $url = '/1/user/-/body/${resourcePath}/date/${date}/${period}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserBodyResourcePathDateBaseDateEndDateJsonGet(
      {required String? resourcePath,
      required String? baseDate,
      required String? endDate}) {
    final $url =
        '/1/user/-/body/${resourcePath}/date/${baseDate}/${endDate}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserBodyLogGoalTypeGoalJsonGet(
      {required String? goalType}) {
    final $url = '/1/user/-/body/log/${goalType}/goal.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserBodyLogFatGoalJsonPost(
      {required String? fat}) {
    final $url = '/1/user/-/body/log/fat/goal.json';
    final $params = <String, dynamic>{'fat': fat};
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserBodyLogWeightGoalJsonPost(
      {required String? startDate,
      required String? startWeight,
      String? weight}) {
    final $url = '/1/user/-/body/log/weight/goal.json';
    final $params = <String, dynamic>{
      'startDate': startDate,
      'startWeight': startWeight,
      'weight': weight
    };
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserBodyLogWeightDateDateJsonGet(
      {required String? date}) {
    final $url = '/1/user/-/body/log/weight/date/${date}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserBodyLogWeightDateDatePeriodJsonGet(
      {required String? date, required String? period}) {
    final $url = '/1/user/-/body/log/weight/date/${date}/${period}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserBodyLogWeightDateBaseDateEndDateJsonGet(
      {required String? baseDate, required String? endDate}) {
    final $url = '/1/user/-/body/log/weight/date/${baseDate}/${endDate}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserBodyLogWeightJsonPost(
      {required int? weight, required String? date, String? time}) {
    final $url = '/1/user/-/body/log/weight.json';
    final $params = <String, dynamic>{
      'weight': weight,
      'date': date,
      'time': time
    };
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserBodyLogWeightBodyWeightLogIdJsonDelete(
      {required int? bodyWeightLogId}) {
    final $url = '/1/user/-/body/log/weight/${bodyWeightLogId}.json';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserDevicesJsonGet() {
    final $url = '/1/user/-/devices.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserDevicesTrackerTrackerIdAlarmsJsonGet(
      {required int? trackerId}) {
    final $url = '/1/user/-/devices/tracker/${trackerId}/alarms.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserDevicesTrackerTrackerIdAlarmsJsonPost(
      {required int? trackerId,
      required String? time,
      required bool? enabled,
      required String? recurring,
      required String? weekDays}) {
    final $url = '/1/user/-/devices/tracker/${trackerId}/alarms.json';
    final $params = <String, dynamic>{
      'time': time,
      'enabled': enabled,
      'recurring': recurring,
      'weekDays': weekDays
    };
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserDevicesTrackerTrackerIdAlarmsAlarmIdJsonPost(
      {required int? trackerId,
      required int? alarmId,
      required String? time,
      required bool? enabled,
      required String? recurring,
      required String? weekDays,
      required int? snoozeLength,
      required int? snoozeCount}) {
    final $url =
        '/1/user/-/devices/tracker/${trackerId}/alarms/${alarmId}.json';
    final $params = <String, dynamic>{
      'time': time,
      'enabled': enabled,
      'recurring': recurring,
      'weekDays': weekDays,
      'snoozeLength': snoozeLength,
      'snoozeCount': snoozeCount
    };
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>>
      _$1UserDevicesTrackerTrackerIdAlarmsAlarmIdJsonDelete(
          {required int? trackerId, required int? alarmId}) {
    final $url =
        '/1/user/-/devices/tracker/${trackerId}/alarms/${alarmId}.json';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1FoodsLocalesJsonGet() {
    final $url = '/1/foods/locales.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserFoodsLogGoalJsonGet() {
    final $url = '/1/user/-/foods/log/goal.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserFoodsLogGoalJsonPost(
      {required int? calories, String? intensity, String? personalized}) {
    final $url = '/1/user/-/foods/log/goal.json';
    final $params = <String, dynamic>{
      'calories': calories,
      'intensity': intensity,
      'personalized': personalized
    };
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserFoodsLogDateDateJsonGet(
      {required String? date}) {
    final $url = '/1/user/-/foods/log/date/${date}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserFoodsLogWaterDateDateJsonGet(
      {required String? date}) {
    final $url = '/1/user/-/foods/log/water/date/${date}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserFoodsLogWaterGoalJsonGet() {
    final $url = '/1/user/-/foods/log/water/goal.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserFoodsLogWaterGoalJsonPost(
      {required int? target}) {
    final $url = '/1/user/-/foods/log/water/goal.json';
    final $params = <String, dynamic>{'target': target};
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>>
      _$1UserFoodsLogResourcePathDateBaseDateEndDateJsonGet(
          {required String? resourcePath,
          required String? baseDate,
          required String? endDate}) {
    final $url =
        '/1/user/-/foods/log/${resourcePath}/date/${baseDate}/${endDate}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserFoodsLogResourcePathDateDatePeriodJsonGet(
      {required String? resourcePath,
      required String? date,
      required String? period}) {
    final $url =
        '/1/user/-/foods/log/${resourcePath}/date/${date}/${period}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserFoodsLogJsonPost(
      {required String? foodId,
      String? foodName,
      required String? mealTypeId,
      required String? unitId,
      required String? amount,
      required String? date,
      bool? favorite,
      String? brandName,
      int? calories}) {
    final $url = '/1/user/-/foods/log.json';
    final $params = <String, dynamic>{
      'foodId': foodId,
      'foodName': foodName,
      'mealTypeId': mealTypeId,
      'unitId': unitId,
      'amount': amount,
      'date': date,
      'favorite': favorite,
      'brandName': brandName,
      'calories': calories
    };
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserFoodsLogFoodLogIdJsonDelete(
      {required String? foodLogId}) {
    final $url = '/1/user/-/foods/log/${foodLogId}.json';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserFoodsLogFoodLogIdJsonPost(
      {required String? foodLogId,
      required String? mealTypeId,
      required String? unitId,
      required String? amount,
      int? calories}) {
    final $url = '/1/user/-/foods/log/${foodLogId}.json';
    final $params = <String, dynamic>{
      'mealTypeId': mealTypeId,
      'unitId': unitId,
      'amount': amount,
      'calories': calories
    };
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserFoodsLogWaterJsonPost(
      {required String? date, required int? amount, String? unit}) {
    final $url = '/1/user/-/foods/log/water.json';
    final $params = <String, dynamic>{
      'date': date,
      'amount': amount,
      'unit': unit
    };
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserFoodsLogWaterWaterLogIdJsonDelete(
      {required String? waterLogId}) {
    final $url = '/1/user/-/foods/log/water/${waterLogId}.json';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserFoodsLogWaterWaterLogIdJsonPost(
      {required String? waterLogId, required String? amount, String? unit}) {
    final $url = '/1/user/-/foods/log/water/${waterLogId}.json';
    final $params = <String, dynamic>{'amount': amount, 'unit': unit};
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserFoodsLogFavoriteJsonGet() {
    final $url = '/1/user/-/foods/log/favorite.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserFoodsLogFrequentJsonGet() {
    final $url = '/1/user/-/foods/log/frequent.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserFoodsLogFavoriteFoodIdJsonPost(
      {required String? foodId}) {
    final $url = '/1/user/-/foods/log/favorite/${foodId}.json';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserFoodsLogFavoriteFoodIdJsonDelete(
      {required String? foodId}) {
    final $url = '/1/user/-/foods/log/favorite/${foodId}.json';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserMealsJsonGet() {
    final $url = '/1/user/-/meals.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserMealsJsonPost(
      {required String? name,
      required String? description,
      required String? foodId,
      required String? unitId,
      required String? amount}) {
    final $url = '/1/user/-/meals.json';
    final $params = <String, dynamic>{
      'name': name,
      'Description': description,
      'foodId': foodId,
      'unitId': unitId,
      'amount': amount
    };
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserMealsMealIdJsonPost(
      {required String? mealId,
      required String? name,
      required String? description,
      required String? foodId,
      required String? unitId,
      required String? amount}) {
    final $url = '/1/user/-/meals/${mealId}.json';
    final $params = <String, dynamic>{
      'name': name,
      'Description': description,
      'foodId': foodId,
      'unitId': unitId,
      'amount': amount
    };
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserMealsMealIdJsonDelete(
      {required String? mealId}) {
    final $url = '/1/user/-/meals/${mealId}.json';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserFoodsLogRecentJsonGet() {
    final $url = '/1/user/-/foods/log/recent.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserFoodsJsonPost(
      {required String? name,
      required String? defaultFoodMeasurementUnitId,
      required String? defaultServingSize,
      required String? calories,
      String? formType,
      String? description}) {
    final $url = '/1/user/-/foods.json';
    final $params = <String, dynamic>{
      'name': name,
      'defaultFoodMeasurementUnitId': defaultFoodMeasurementUnitId,
      'defaultServingSize': defaultServingSize,
      'calories': calories,
      'formType': formType,
      'description': description
    };
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserFoodsFoodIdJsonDelete(
      {required String? foodId}) {
    final $url = '/1/user/-/foods/${foodId}.json';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1FoodsFoodIdJsonGet({required String? foodId}) {
    final $url = '/1/foods/${foodId}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1FoodsUnitsJsonGet() {
    final $url = '/1/foods/units.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1FoodsSearchJsonGet({required String? query}) {
    final $url = '/1/foods/search.json';
    final $params = <String, dynamic>{'query': query};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$11UserFriendsJsonGet() {
    final $url = '/1.1/user/-/friends.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$11UserLeaderboardFriendsJsonGet() {
    final $url = '/1.1/user/-/leaderboard/friends.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$11UserFriendsInvitationsJsonGet() {
    final $url = '/1.1/user/-/friends/invitations.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$11UserFriendsInvitationsPost(
      {String? invitedUserEmail, String? invitedUserId}) {
    final $url = '/1.1/user/-/friends/invitations';
    final $params = <String, dynamic>{
      'invitedUserEmail': invitedUserEmail,
      'invitedUserId': invitedUserId
    };
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$11UserFriendsInvitationsFromUserIdPost(
      {required String? fromUserId, required String? accept}) {
    final $url = '/1.1/user/-/friends/invitations/${fromUserId}';
    final $params = <String, dynamic>{'accept': accept};
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserActivitiesHeartDateDatePeriodJsonGet(
      {required String? date, required String? period}) {
    final $url = '/1/user/-/activities/heart/date/${date}/${period}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserActivitiesHeartDateBaseDateEndDateJsonGet(
      {required String? baseDate, required String? endDate}) {
    final $url = '/1/user/-/activities/heart/date/${baseDate}/${endDate}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>>
      _$1UserActivitiesHeartDateDateEndDateDetailLevelJsonGet(
          {required String? date,
          required String? endDate,
          required String? detailLevel}) {
    final $url =
        '/1/user/-/activities/heart/date/${date}/${endDate}/${detailLevel}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>>
      _$1UserActivitiesHeartDateDateEndDateDetailLevelTimeStartTimeEndTimeJsonGet(
          {required String? date,
          required String? endDate,
          required String? detailLevel,
          required String? startTime,
          required String? endTime}) {
    final $url =
        '/1/user/-/activities/heart/date/${date}/${endDate}/${detailLevel}/time/${startTime}/${endTime}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserActivitiesHeartDateDate1dDetailLevelJsonGet(
      {required String? date, required String? detailLevel}) {
    final $url =
        '/1/user/-/activities/heart/date/${date}/1d/${detailLevel}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>>
      _$1UserActivitiesHeartDateDate1dDetailLevelTimeStartTimeEndTimeJsonGet(
          {required String? date,
          required String? detailLevel,
          required String? startTime,
          required String? endTime}) {
    final $url =
        '/1/user/-/activities/heart/date/${date}/1d/${detailLevel}/time/${startTime}/${endTime}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$12UserSleepLogIdJsonDelete(
      {required String? logId}) {
    final $url = '/1.2/user/-/sleep/${logId}.json';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$12UserSleepDateDateJsonGet(
      {required String? date}) {
    final $url = '/1.2/user/-/sleep/date/${date}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$12UserSleepDateBaseDateEndDateJsonGet(
      {required String? baseDate, required String? endDate}) {
    final $url = '/1.2/user/-/sleep/date/${baseDate}/${endDate}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$12UserSleepListJsonGet(
      {String? beforeDate,
      String? afterDate,
      required String? sort,
      required int? offset,
      required int? limit}) {
    final $url = '/1.2/user/-/sleep/list.json';
    final $params = <String, dynamic>{
      'beforeDate': beforeDate,
      'afterDate': afterDate,
      'sort': sort,
      'offset': offset,
      'limit': limit
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$12UserSleepGoalJsonGet() {
    final $url = '/1.2/user/-/sleep/goal.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$12UserSleepGoalJsonPost(
      {required String? minDuration}) {
    final $url = '/1.2/user/-/sleep/goal.json';
    final $params = <String, dynamic>{'minDuration': minDuration};
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$12UserSleepJsonPost(
      {required String? startTime,
      required int? duration,
      required String? date}) {
    final $url = '/1.2/user/-/sleep.json';
    final $params = <String, dynamic>{
      'startTime': startTime,
      'duration': duration,
      'date': date
    };
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserCollectionPathApiSubscriptionsJsonGet(
      {required String? collectionPath}) {
    final $url = '/1/user/-/${collectionPath}/apiSubscriptions.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>>
      _$1UserCollectionPathApiSubscriptionsSubscriptionIdJsonPost(
          {required String? collectionPath, required String? subscriptionId}) {
    final $url =
        '/1/user/-/${collectionPath}/apiSubscriptions/${subscriptionId}.json';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>>
      _$1UserCollectionPathApiSubscriptionsSubscriptionIdJsonDelete(
          {required String? collectionPath, required String? subscriptionId}) {
    final $url =
        '/1/user/-/${collectionPath}/apiSubscriptions/${subscriptionId}.json';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserBadgesJsonGet() {
    final $url = '/1/user/-/badges.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserProfileJsonGet() {
    final $url = '/1/user/-/profile.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _$1UserProfileJsonPost(
      {String? gender,
      String? birthday,
      String? height,
      String? aboutMe,
      String? fullname,
      String? country,
      String? state,
      String? city,
      String? strideLengthWalking,
      String? strideLengthRunning,
      String? weightUnit,
      String? heightUnit,
      String? waterUnit,
      String? glucoseUnit,
      String? timezone,
      String? foodsLocale,
      String? locale,
      String? localeLang,
      String? localeCountry,
      String? startDayOfWeek}) {
    final $url = '/1/user/-/profile.json';
    final $body = <String, dynamic>{
      'gender': gender,
      'birthday': birthday,
      'height': height,
      'aboutMe': aboutMe,
      'fullname': fullname,
      'country': country,
      'state': state,
      'city': city,
      'strideLengthWalking': strideLengthWalking,
      'strideLengthRunning': strideLengthRunning,
      'weightUnit': weightUnit,
      'heightUnit': heightUnit,
      'waterUnit': waterUnit,
      'glucoseUnit': glucoseUnit,
      'timezone': timezone,
      'foodsLocale': foodsLocale,
      'locale': locale,
      'localeLang': localeLang,
      'localeCountry': localeCountry,
      'startDayOfWeek': startDayOfWeek
    };
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
