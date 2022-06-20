import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'package:chopper/chopper.dart' as chopper;

part 'swaggermodel.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Swaggermodel extends ChopperService {
  static Swaggermodel create(
      {ChopperClient? client,
      Authenticator? authenticator,
      String? baseUrl,
      Iterable<dynamic>? interceptors}) {
    if (client != null) {
      return _$Swaggermodel(client);
    }

    final newClient = ChopperClient(
        services: [_$Swaggermodel()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? 'http://api.fitbit.com');
    return _$Swaggermodel(newClient);
  }

  ///Get OAuth 2 access token
  ///@param Authorization The Authorization header must be set to 'Basic' followed by a space, then the Base64 encoded string of your application's client id and secret concatenated with a colon. For example, 'Basic Y2xpZW50X2lkOmNsaWVudCBzZWNyZXQ='. The Base64 encoded string, 'Y2xpZW50X2lkOmNsaWVudCBzZWNyZXQ=', is decoded as 'client_id:client secret'.
  ///@param code Authorization code received in the redirect as URI parameter. Required if using the Authorization Code flow.
  ///@param client_id This is your Fitbit API application id from your settings on dev.fitbit.com.
  ///@param expires_in Specify the desired access token lifetime. Defaults to 28800 for 8 hours. The other valid value is 3600 for 1 hour.
  ///@param grant_type Authorization grant type. Valid values are 'authorization_code' and 'refresh_token'.
  ///@param redirect_uri Uri to which the access token will be sent if the request is successful. Required if specified in the redirect to the authorization page. Must be exact match.
  ///@param refresh_token Refresh token issued by Fitbit. Required if 'grant_type' is 'refresh_token'.
  ///@param state Required if specified in the redirect uri of the authorization page. Must be an exact match.
  Future<chopper.Response> oauth2TokenPost(
      {String? authorization,
      String? code,
      required String? clientId,
      String? expiresIn,
      required String? grantType,
      String? redirectUri,
      String? refreshToken,
      String? state}) {
    return _oauth2TokenPost(
        authorization: authorization,
        code: code,
        clientId: clientId,
        expiresIn: expiresIn,
        grantType: grantType,
        redirectUri: redirectUri,
        refreshToken: refreshToken,
        state: state);
  }

  ///Get OAuth 2 access token
  ///@param Authorization The Authorization header must be set to 'Basic' followed by a space, then the Base64 encoded string of your application's client id and secret concatenated with a colon. For example, 'Basic Y2xpZW50X2lkOmNsaWVudCBzZWNyZXQ='. The Base64 encoded string, 'Y2xpZW50X2lkOmNsaWVudCBzZWNyZXQ=', is decoded as 'client_id:client secret'.
  ///@param code Authorization code received in the redirect as URI parameter. Required if using the Authorization Code flow.
  ///@param client_id This is your Fitbit API application id from your settings on dev.fitbit.com.
  ///@param expires_in Specify the desired access token lifetime. Defaults to 28800 for 8 hours. The other valid value is 3600 for 1 hour.
  ///@param grant_type Authorization grant type. Valid values are 'authorization_code' and 'refresh_token'.
  ///@param redirect_uri Uri to which the access token will be sent if the request is successful. Required if specified in the redirect to the authorization page. Must be exact match.
  ///@param refresh_token Refresh token issued by Fitbit. Required if 'grant_type' is 'refresh_token'.
  ///@param state Required if specified in the redirect uri of the authorization page. Must be an exact match.
  @Post(path: '/oauth2/token', optionalBody: true)
  Future<chopper.Response> _oauth2TokenPost(
      {@Header('Authorization') String? authorization,
      @Query('code') String? code,
      @Query('client_id') required String? clientId,
      @Query('expires_in') String? expiresIn,
      @Query('grant_type') required String? grantType,
      @Query('redirect_uri') String? redirectUri,
      @Query('refresh_token') String? refreshToken,
      @Query('state') String? state});

  ///Retrieve the active state of an OAuth 2.0 token
  ///@param token OAuth 2.0 token to retrieve the state of
  Future<chopper.Response> $11Oauth2IntrospectPost({required String? token}) {
    return _$11Oauth2IntrospectPost(token: token);
  }

  ///Retrieve the active state of an OAuth 2.0 token
  ///@param token OAuth 2.0 token to retrieve the state of
  @Post(path: '/1.1/oauth2/introspect', optionalBody: true)
  Future<chopper.Response> _$11Oauth2IntrospectPost(
      {@Field('token') required String? token});

  ///Get Activity Summary by Date
  ///@param date The date in the format yyyy-MM-dd
  Future<chopper.Response> $1UserActivitiesDateDateJsonGet(
      {required String? date}) {
    return _$1UserActivitiesDateDateJsonGet(date: date);
  }

  ///Get Activity Summary by Date
  ///@param date The date in the format yyyy-MM-dd
  @Get(path: '/1/user/-/activities/date/{date}.json')
  Future<chopper.Response> _$1UserActivitiesDateDateJsonGet(
      {@Path('date') required String? date});

  ///Get Activity Resource by Date Range
  ///@param resource-path The resource-path; see options in the Resource Path Options section in the full documentation.
  ///@param base-date The range start date in the format yyyy-MM-dd or today.
  ///@param end-date The end date of the range.
  Future<chopper.Response>
      $1UserActivitiesResourcePathDateBaseDateEndDateJsonGet(
          {required String? resourcePath,
          required String? baseDate,
          required String? endDate}) {
    return _$1UserActivitiesResourcePathDateBaseDateEndDateJsonGet(
        resourcePath: resourcePath, baseDate: baseDate, endDate: endDate);
  }

  ///Get Activity Resource by Date Range
  ///@param resource-path The resource-path; see options in the Resource Path Options section in the full documentation.
  ///@param base-date The range start date in the format yyyy-MM-dd or today.
  ///@param end-date The end date of the range.
  @Get(
      path:
          '/1/user/-/activities/{resource-path}/date/{base-date}/{end-date}.json')
  Future<chopper.Response>
      _$1UserActivitiesResourcePathDateBaseDateEndDateJsonGet(
          {@Path('resource-path') required String? resourcePath,
          @Path('base-date') required String? baseDate,
          @Path('end-date') required String? endDate});

  ///Get Activity Tracker Resource by Date Range Time Series
  ///@param resource-path The resource-path; see options in the Resource Path Options section in the full documentation.
  ///@param base-date The range start date in the format yyyy-MM-dd or today.
  ///@param end-date The end date of the range.
  Future<chopper.Response>
      $1UserActivitiesTrackerResourcePathDateBaseDateEndDateJsonGet(
          {required String? resourcePath,
          required String? baseDate,
          required String? endDate}) {
    return _$1UserActivitiesTrackerResourcePathDateBaseDateEndDateJsonGet(
        resourcePath: resourcePath, baseDate: baseDate, endDate: endDate);
  }

  ///Get Activity Tracker Resource by Date Range Time Series
  ///@param resource-path The resource-path; see options in the Resource Path Options section in the full documentation.
  ///@param base-date The range start date in the format yyyy-MM-dd or today.
  ///@param end-date The end date of the range.
  @Get(
      path:
          '/1/user/-/activities/tracker/{resource-path}/date/{base-date}/{end-date}.json')
  Future<chopper.Response>
      _$1UserActivitiesTrackerResourcePathDateBaseDateEndDateJsonGet(
          {@Path('resource-path') required String? resourcePath,
          @Path('base-date') required String? baseDate,
          @Path('end-date') required String? endDate});

  ///Get Activity Time Series
  ///@param resource-path The resource-path; see options in the Resource Path Options section in the full documentation.
  ///@param date The end date of the period specified in the format yyyy-MM-dd or today.
  ///@param period The range for which data will be returned. Options are 1d, 7d, 30d, 1w, 1m, 3m, 6m, 1y, or max.
  Future<chopper.Response> $1UserActivitiesResourcePathDateDatePeriodJsonGet(
      {required String? resourcePath,
      required String? date,
      required String? period}) {
    return _$1UserActivitiesResourcePathDateDatePeriodJsonGet(
        resourcePath: resourcePath, date: date, period: period);
  }

  ///Get Activity Time Series
  ///@param resource-path The resource-path; see options in the Resource Path Options section in the full documentation.
  ///@param date The end date of the period specified in the format yyyy-MM-dd or today.
  ///@param period The range for which data will be returned. Options are 1d, 7d, 30d, 1w, 1m, 3m, 6m, 1y, or max.
  @Get(path: '/1/user/-/activities/{resource-path}/date/{date}/{period}.json')
  Future<chopper.Response> _$1UserActivitiesResourcePathDateDatePeriodJsonGet(
      {@Path('resource-path') required String? resourcePath,
      @Path('date') required String? date,
      @Path('period') required String? period});

  ///Get Activity Time Series
  ///@param resource-path The resource-path; see options in the Resource Path Options section in the full documentation.
  ///@param date The end date of the period specified in the format yyyy-MM-dd or today.
  ///@param period The range for which data will be returned. Options are 1d, 7d, 30d, 1w, 1m, 3m, 6m, 1y, or max.
  Future<chopper.Response>
      $1UserActivitiesTrackerResourcePathDateDatePeriodJsonGet(
          {required String? resourcePath,
          required String? date,
          required String? period}) {
    return _$1UserActivitiesTrackerResourcePathDateDatePeriodJsonGet(
        resourcePath: resourcePath, date: date, period: period);
  }

  ///Get Activity Time Series
  ///@param resource-path The resource-path; see options in the Resource Path Options section in the full documentation.
  ///@param date The end date of the period specified in the format yyyy-MM-dd or today.
  ///@param period The range for which data will be returned. Options are 1d, 7d, 30d, 1w, 1m, 3m, 6m, 1y, or max.
  @Get(
      path:
          '/1/user/-/activities/tracker/{resource-path}/date/{date}/{period}.json')
  Future<chopper.Response>
      _$1UserActivitiesTrackerResourcePathDateDatePeriodJsonGet(
          {@Path('resource-path') required String? resourcePath,
          @Path('date') required String? date,
          @Path('period') required String? period});

  ///Get Activity Intraday Time Series
  ///@param resource-path The resource-path; see options in the Resource Path Options section in the full documentation.
  ///@param base-date The date in the format yyyy-MM-dd or today.
  ///@param end-date The date in the format yyyy-MM-dd or today.
  ///@param detail-level Number of data points to include. Either 1min or 15min. Optional.
  Future<chopper.Response>
      $1UserActivitiesResourcePathDateBaseDateEndDateDetailLevelJsonGet(
          {required String? resourcePath,
          required String? baseDate,
          required String? endDate,
          required String? detailLevel}) {
    return _$1UserActivitiesResourcePathDateBaseDateEndDateDetailLevelJsonGet(
        resourcePath: resourcePath,
        baseDate: baseDate,
        endDate: endDate,
        detailLevel: detailLevel);
  }

  ///Get Activity Intraday Time Series
  ///@param resource-path The resource-path; see options in the Resource Path Options section in the full documentation.
  ///@param base-date The date in the format yyyy-MM-dd or today.
  ///@param end-date The date in the format yyyy-MM-dd or today.
  ///@param detail-level Number of data points to include. Either 1min or 15min. Optional.
  @Get(
      path:
          '/1/user/-/activities/{resource-path}/date/{base-date}/{end-date}/{detail-level}.json')
  Future<chopper.Response>
      _$1UserActivitiesResourcePathDateBaseDateEndDateDetailLevelJsonGet(
          {@Path('resource-path') required String? resourcePath,
          @Path('base-date') required String? baseDate,
          @Path('end-date') required String? endDate,
          @Path('detail-level') required String? detailLevel});

  ///Get Intraday Time Series
  ///@param resource-path The resource-path; see options in the Resource Path Options section in the full documentation.
  ///@param date The date in the format yyyy-MM-dd or today.
  ///@param detail-level Number of data points to include. Either 1min or 15min. Optional.
  Future<chopper.Response>
      $1UserActivitiesResourcePathDateDate1dDetailLevelJsonGet(
          {required String? resourcePath,
          required String? date,
          required String? detailLevel}) {
    return _$1UserActivitiesResourcePathDateDate1dDetailLevelJsonGet(
        resourcePath: resourcePath, date: date, detailLevel: detailLevel);
  }

  ///Get Intraday Time Series
  ///@param resource-path The resource-path; see options in the Resource Path Options section in the full documentation.
  ///@param date The date in the format yyyy-MM-dd or today.
  ///@param detail-level Number of data points to include. Either 1min or 15min. Optional.
  @Get(
      path:
          '/1/user/-/activities/{resource-path}/date/{date}/1d/{detail-level}.json')
  Future<chopper.Response>
      _$1UserActivitiesResourcePathDateDate1dDetailLevelJsonGet(
          {@Path('resource-path') required String? resourcePath,
          @Path('date') required String? date,
          @Path('detail-level') required String? detailLevel});

  ///Get Activity Intraday Time Series
  ///@param resource-path The resource-path; see options in the Resource Path Options section in the full documentation.
  ///@param date The date in the format yyyy-MM-dd or today.
  ///@param end-date The date in the format yyyy-MM-dd or today.
  ///@param detail-level Number of data points to include. Either 1min or 15min.
  ///@param start-time The start of the period in the format HH:mm.
  ///@param end-time The end of the period in the format HH:mm.
  Future<chopper.Response>
      $1UserActivitiesResourcePathDateDateEndDateDetailLevelTimeStartTimeEndTimeJsonGet(
          {required String? resourcePath,
          required String? date,
          required String? endDate,
          required String? detailLevel,
          required String? startTime,
          required String? endTime}) {
    return _$1UserActivitiesResourcePathDateDateEndDateDetailLevelTimeStartTimeEndTimeJsonGet(
        resourcePath: resourcePath,
        date: date,
        endDate: endDate,
        detailLevel: detailLevel,
        startTime: startTime,
        endTime: endTime);
  }

  ///Get Activity Intraday Time Series
  ///@param resource-path The resource-path; see options in the Resource Path Options section in the full documentation.
  ///@param date The date in the format yyyy-MM-dd or today.
  ///@param end-date The date in the format yyyy-MM-dd or today.
  ///@param detail-level Number of data points to include. Either 1min or 15min.
  ///@param start-time The start of the period in the format HH:mm.
  ///@param end-time The end of the period in the format HH:mm.
  @Get(
      path:
          '/1/user/-/activities/{resource-path}/date/{date}/{end-date}/{detail-level}/time/{start-time}/{end-time}.json')
  Future<chopper.Response>
      _$1UserActivitiesResourcePathDateDateEndDateDetailLevelTimeStartTimeEndTimeJsonGet(
          {@Path('resource-path') required String? resourcePath,
          @Path('date') required String? date,
          @Path('end-date') required String? endDate,
          @Path('detail-level') required String? detailLevel,
          @Path('start-time') required String? startTime,
          @Path('end-time') required String? endTime});

  ///Get Intraday Time Series
  ///@param resource-path The resource-path; see options in the Resource Path Options section in the full documentation.
  ///@param date The date in the format yyyy-MM-dd or today.
  ///@param detail-level Number of data points to include. Either 1min or 15min.
  ///@param start-time The start of the period in the format HH:mm.
  ///@param end-time The end of the period in the format HH:mm.
  Future<chopper.Response>
      $1UserActivitiesResourcePathDateDate1dDetailLevelTimeStartTimeEndTimeJsonGet(
          {required String? resourcePath,
          required String? date,
          required String? detailLevel,
          required String? startTime,
          required String? endTime}) {
    return _$1UserActivitiesResourcePathDateDate1dDetailLevelTimeStartTimeEndTimeJsonGet(
        resourcePath: resourcePath,
        date: date,
        detailLevel: detailLevel,
        startTime: startTime,
        endTime: endTime);
  }

  ///Get Intraday Time Series
  ///@param resource-path The resource-path; see options in the Resource Path Options section in the full documentation.
  ///@param date The date in the format yyyy-MM-dd or today.
  ///@param detail-level Number of data points to include. Either 1min or 15min.
  ///@param start-time The start of the period in the format HH:mm.
  ///@param end-time The end of the period in the format HH:mm.
  @Get(
      path:
          '/1/user/-/activities/{resource-path}/date/{date}/1d/{detail-level}/time/{start-time}/{end-time}.json')
  Future<chopper.Response>
      _$1UserActivitiesResourcePathDateDate1dDetailLevelTimeStartTimeEndTimeJsonGet(
          {@Path('resource-path') required String? resourcePath,
          @Path('date') required String? date,
          @Path('detail-level') required String? detailLevel,
          @Path('start-time') required String? startTime,
          @Path('end-time') required String? endTime});

  ///Log Activity
  ///@param activityId The ID of the activity, directory activity or intensity level activity.
  ///@param activityName Custom activity name. Either activityId or activityName must be provided.
  ///@param manualCalories Calories burned that are manaully specified. Required with activityName must be provided.
  ///@param startTime Activity start time. Hours and minutes in the format HH:mm:ss.
  ///@param durationMillis Duration in milliseconds.
  ///@param date Log entry date in the format yyyy-MM-dd.
  ///@param distance Distance is required for logging directory activity in the format X.XX and in the selected distanceUnit.
  ///@param distanceUnit Distance measurement unit. Steps units are available only for Walking (activityId=90013) and Running (activityId=90009) directory activities and their intensity levels.
  Future<chopper.Response> $1UserActivitiesJsonPost(
      {required int? activityId,
      String? activityName,
      required int? manualCalories,
      required String? startTime,
      required int? durationMillis,
      required String? date,
      required int? distance,
      int? distanceUnit}) {
    return _$1UserActivitiesJsonPost(
        activityId: activityId,
        activityName: activityName,
        manualCalories: manualCalories,
        startTime: startTime,
        durationMillis: durationMillis,
        date: date,
        distance: distance,
        distanceUnit: distanceUnit);
  }

  ///Log Activity
  ///@param activityId The ID of the activity, directory activity or intensity level activity.
  ///@param activityName Custom activity name. Either activityId or activityName must be provided.
  ///@param manualCalories Calories burned that are manaully specified. Required with activityName must be provided.
  ///@param startTime Activity start time. Hours and minutes in the format HH:mm:ss.
  ///@param durationMillis Duration in milliseconds.
  ///@param date Log entry date in the format yyyy-MM-dd.
  ///@param distance Distance is required for logging directory activity in the format X.XX and in the selected distanceUnit.
  ///@param distanceUnit Distance measurement unit. Steps units are available only for Walking (activityId=90013) and Running (activityId=90009) directory activities and their intensity levels.
  @Post(path: '/1/user/-/activities.json', optionalBody: true)
  Future<chopper.Response> _$1UserActivitiesJsonPost(
      {@Query('activityId') required int? activityId,
      @Query('activityName') String? activityName,
      @Query('manualCalories') required int? manualCalories,
      @Query('startTime') required String? startTime,
      @Query('durationMillis') required int? durationMillis,
      @Query('date') required String? date,
      @Query('distance') required int? distance,
      @Query('distanceUnit') int? distanceUnit});

  ///Get Lifetime Stats
  Future<chopper.Response> $1UserActivitiesJsonGet() {
    return _$1UserActivitiesJsonGet();
  }

  ///Get Lifetime Stats
  @Get(path: '/1/user/-/activities.json')
  Future<chopper.Response> _$1UserActivitiesJsonGet();

  ///Delete Activity Log
  ///@param activity-log-id The id of the activity log entry.
  Future<chopper.Response> $1UserActivitiesActivityLogIdJsonDelete(
      {required int? activityLogId}) {
    return _$1UserActivitiesActivityLogIdJsonDelete(
        activityLogId: activityLogId);
  }

  ///Delete Activity Log
  ///@param activity-log-id The id of the activity log entry.
  @Delete(path: '/1/user/-/activities/{activity-log-id}.json')
  Future<chopper.Response> _$1UserActivitiesActivityLogIdJsonDelete(
      {@Path('activity-log-id') required int? activityLogId});

  ///Get Activity Log List
  ///@param beforeDate The date in the format yyyy-MM-ddTHH:mm:ss. Only yyyy-MM-dd is required. Either beforeDate or afterDate should be specified.
  ///@param afterDate The date in the format yyyy-MM-ddTHH:mm:ss.
  ///@param sort The sort order of entries by date asc (ascending) or desc (descending).
  ///@param offset The offset number of entries.
  ///@param limit The maximum number of entries returned (maximum;100).
  Future<chopper.Response> $1UserActivitiesListJsonGet(
      {String? beforeDate,
      String? afterDate,
      required String? sort,
      required int? offset,
      required int? limit}) {
    return _$1UserActivitiesListJsonGet(
        beforeDate: beforeDate,
        afterDate: afterDate,
        sort: sort,
        offset: offset,
        limit: limit);
  }

  ///Get Activity Log List
  ///@param beforeDate The date in the format yyyy-MM-ddTHH:mm:ss. Only yyyy-MM-dd is required. Either beforeDate or afterDate should be specified.
  ///@param afterDate The date in the format yyyy-MM-ddTHH:mm:ss.
  ///@param sort The sort order of entries by date asc (ascending) or desc (descending).
  ///@param offset The offset number of entries.
  ///@param limit The maximum number of entries returned (maximum;100).
  @Get(path: '/1/user/-/activities/list.json')
  Future<chopper.Response> _$1UserActivitiesListJsonGet(
      {@Query('beforeDate') String? beforeDate,
      @Query('afterDate') String? afterDate,
      @Query('sort') required String? sort,
      @Query('offset') required int? offset,
      @Query('limit') required int? limit});

  ///Get Activity TCX
  ///@param log-id The activity's log ID.
  ///@param includePartialTCX Include TCX points regardless of GPS data being present
  Future<chopper.Response> $1UserActivitiesLogIdTcxGet(
      {required String? logId, bool? includePartialTCX}) {
    return _$1UserActivitiesLogIdTcxGet(
        logId: logId, includePartialTCX: includePartialTCX);
  }

  ///Get Activity TCX
  ///@param log-id The activity's log ID.
  ///@param includePartialTCX Include TCX points regardless of GPS data being present
  @Get(path: '/1/user/-/activities/{log-id}.tcx')
  Future<chopper.Response> _$1UserActivitiesLogIdTcxGet(
      {@Path('log-id') required String? logId,
      @Query('includePartialTCX') bool? includePartialTCX});

  ///Browse Activity Types
  Future<chopper.Response> $1ActivitiesJsonGet() {
    return _$1ActivitiesJsonGet();
  }

  ///Browse Activity Types
  @Get(path: '/1/activities.json')
  Future<chopper.Response> _$1ActivitiesJsonGet();

  ///Get Activity Type
  ///@param activity-id The activity ID.
  Future<chopper.Response> $1ActivitiesActivityIdJsonGet(
      {required String? activityId}) {
    return _$1ActivitiesActivityIdJsonGet(activityId: activityId);
  }

  ///Get Activity Type
  ///@param activity-id The activity ID.
  @Get(path: '/1/activities/{activity-id}.json')
  Future<chopper.Response> _$1ActivitiesActivityIdJsonGet(
      {@Path('activity-id') required String? activityId});

  ///Get Frequent Activities
  Future<chopper.Response> $1UserActivitiesFrequentJsonGet() {
    return _$1UserActivitiesFrequentJsonGet();
  }

  ///Get Frequent Activities
  @Get(path: '/1/user/-/activities/frequent.json')
  Future<chopper.Response> _$1UserActivitiesFrequentJsonGet();

  ///Get Recent Activity Types
  Future<chopper.Response> $1UserActivitiesRecentJsonGet() {
    return _$1UserActivitiesRecentJsonGet();
  }

  ///Get Recent Activity Types
  @Get(path: '/1/user/-/activities/recent.json')
  Future<chopper.Response> _$1UserActivitiesRecentJsonGet();

  ///Get Favorite Activities
  Future<chopper.Response> $1UserActivitiesFavoriteJsonGet() {
    return _$1UserActivitiesFavoriteJsonGet();
  }

  ///Get Favorite Activities
  @Get(path: '/1/user/-/activities/favorite.json')
  Future<chopper.Response> _$1UserActivitiesFavoriteJsonGet();

  ///Delete Favorite Activity
  ///@param activity-id The ID of the activity to be removed.
  Future<chopper.Response> $1UserActivitiesFavoriteActivityIdJsonDelete(
      {required String? activityId}) {
    return _$1UserActivitiesFavoriteActivityIdJsonDelete(
        activityId: activityId);
  }

  ///Delete Favorite Activity
  ///@param activity-id The ID of the activity to be removed.
  @Delete(path: '/1/user/-/activities/favorite/{activity-id}.json')
  Future<chopper.Response> _$1UserActivitiesFavoriteActivityIdJsonDelete(
      {@Path('activity-id') required String? activityId});

  ///Add Favorite Activity
  ///@param activity-id The encoded ID of the activity.
  Future<chopper.Response> $1UserActivitiesFavoriteActivityIdJsonPost(
      {required String? activityId}) {
    return _$1UserActivitiesFavoriteActivityIdJsonPost(activityId: activityId);
  }

  ///Add Favorite Activity
  ///@param activity-id The encoded ID of the activity.
  @Post(
      path: '/1/user/-/activities/favorite/{activity-id}.json',
      optionalBody: true)
  Future<chopper.Response> _$1UserActivitiesFavoriteActivityIdJsonPost(
      {@Path('activity-id') required String? activityId});

  ///Get Activity Goals
  ///@param period daily or weekly.
  Future<chopper.Response> $1UserActivitiesGoalsPeriodJsonGet(
      {required String? period}) {
    return _$1UserActivitiesGoalsPeriodJsonGet(period: period);
  }

  ///Get Activity Goals
  ///@param period daily or weekly.
  @Get(path: '/1/user/-/activities/goals/{period}.json')
  Future<chopper.Response> _$1UserActivitiesGoalsPeriodJsonGet(
      {@Path('period') required String? period});

  ///Update Activity Goals
  ///@param period daily or weekly.
  ///@param type goal type
  ///@param value goal value
  Future<chopper.Response> $1UserActivitiesGoalsPeriodJsonPost(
      {required String? period,
      required String? type,
      required String? value}) {
    return _$1UserActivitiesGoalsPeriodJsonPost(
        period: period, type: type, value: value);
  }

  ///Update Activity Goals
  ///@param period daily or weekly.
  ///@param type goal type
  ///@param value goal value
  @Post(path: '/1/user/-/activities/goals/{period}.json', optionalBody: true)
  Future<chopper.Response> _$1UserActivitiesGoalsPeriodJsonPost(
      {@Path('period') required String? period,
      @Query('type') required String? type,
      @Query('value') required String? value});

  ///Get Body Fat Logs
  ///@param date The date in the format yyyy-MM-dd.
  Future<chopper.Response> $1UserBodyLogFatDateDateJsonGet(
      {required String? date}) {
    return _$1UserBodyLogFatDateDateJsonGet(date: date);
  }

  ///Get Body Fat Logs
  ///@param date The date in the format yyyy-MM-dd.
  @Get(path: '/1/user/-/body/log/fat/date/{date}.json')
  Future<chopper.Response> _$1UserBodyLogFatDateDateJsonGet(
      {@Path('date') required String? date});

  ///Get Body Fat Logs
  ///@param date The date in the format yyyy-MM-dd.
  ///@param period The range for which data will be returned. Options are 1d, 7d, 30d, 1w, 1m, 3m, 6m, 1y, or max.
  Future<chopper.Response> $1UserBodyLogFatDateDatePeriodJsonGet(
      {required String? date, required String? period}) {
    return _$1UserBodyLogFatDateDatePeriodJsonGet(date: date, period: period);
  }

  ///Get Body Fat Logs
  ///@param date The date in the format yyyy-MM-dd.
  ///@param period The range for which data will be returned. Options are 1d, 7d, 30d, 1w, 1m, 3m, 6m, 1y, or max.
  @Get(path: '/1/user/-/body/log/fat/date/{date}/{period}.json')
  Future<chopper.Response> _$1UserBodyLogFatDateDatePeriodJsonGet(
      {@Path('date') required String? date,
      @Path('period') required String? period});

  ///Get Body Fat Logs
  ///@param base-date The range start date in the format yyyy-MM-dd or today.
  ///@param end-date The end date of the range.
  Future<chopper.Response> $1UserBodyLogFatDateBaseDateEndDateJsonGet(
      {required String? baseDate, required String? endDate}) {
    return _$1UserBodyLogFatDateBaseDateEndDateJsonGet(
        baseDate: baseDate, endDate: endDate);
  }

  ///Get Body Fat Logs
  ///@param base-date The range start date in the format yyyy-MM-dd or today.
  ///@param end-date The end date of the range.
  @Get(path: '/1/user/-/body/log/fat/date/{base-date}/{end-date}.json')
  Future<chopper.Response> _$1UserBodyLogFatDateBaseDateEndDateJsonGet(
      {@Path('base-date') required String? baseDate,
      @Path('end-date') required String? endDate});

  ///Log Body Fat
  ///@param fat Body fat in the format of X.XX in the unit system that corresponds to the Accept-Language header provided.
  ///@param date Log entry date in the format yyyy-MM-dd.
  ///@param time Time of the measurement in hours and minutes in the format HH:mm:ss that is set to the last second of the day if not provided.
  Future<chopper.Response> $1UserBodyLogFatJsonPost(
      {required int? fat, required String? date, required String? time}) {
    return _$1UserBodyLogFatJsonPost(fat: fat, date: date, time: time);
  }

  ///Log Body Fat
  ///@param fat Body fat in the format of X.XX in the unit system that corresponds to the Accept-Language header provided.
  ///@param date Log entry date in the format yyyy-MM-dd.
  ///@param time Time of the measurement in hours and minutes in the format HH:mm:ss that is set to the last second of the day if not provided.
  @Post(path: '/1/user/-/body/log/fat.json', optionalBody: true)
  Future<chopper.Response> _$1UserBodyLogFatJsonPost(
      {@Query('fat') required int? fat,
      @Query('date') required String? date,
      @Query('time') required String? time});

  ///Delete Body Fat Log
  ///@param body-fat-log-id The ID of the body fat log entry.
  Future<chopper.Response> $1UserBodyLogFatBodyFatLogIdJsonDelete(
      {required int? bodyFatLogId}) {
    return _$1UserBodyLogFatBodyFatLogIdJsonDelete(bodyFatLogId: bodyFatLogId);
  }

  ///Delete Body Fat Log
  ///@param body-fat-log-id The ID of the body fat log entry.
  @Delete(path: '/1/user/-/body/log/fat/{body-fat-log-id}.json')
  Future<chopper.Response> _$1UserBodyLogFatBodyFatLogIdJsonDelete(
      {@Path('body-fat-log-id') required int? bodyFatLogId});

  ///Get Body Time Series
  ///@param resource-path The resource path, which incudes the bmi, fat, or weight options.
  ///@param date The range start date in the format yyyy-MM-dd or today.
  ///@param period The range for which data will be returned. Options are 1d, 7d, 30d, 1w, 1m, 3m, 6m, 1y, or max.
  Future<chopper.Response> $1UserBodyResourcePathDateDatePeriodJsonGet(
      {required String? resourcePath,
      required String? date,
      required String? period}) {
    return _$1UserBodyResourcePathDateDatePeriodJsonGet(
        resourcePath: resourcePath, date: date, period: period);
  }

  ///Get Body Time Series
  ///@param resource-path The resource path, which incudes the bmi, fat, or weight options.
  ///@param date The range start date in the format yyyy-MM-dd or today.
  ///@param period The range for which data will be returned. Options are 1d, 7d, 30d, 1w, 1m, 3m, 6m, 1y, or max.
  @Get(path: '/1/user/-/body/{resource-path}/date/{date}/{period}.json')
  Future<chopper.Response> _$1UserBodyResourcePathDateDatePeriodJsonGet(
      {@Path('resource-path') required String? resourcePath,
      @Path('date') required String? date,
      @Path('period') required String? period});

  ///Get Body Time Series
  ///@param resource-path The resource path, which incudes the bmi, fat, or weight options.
  ///@param base-date The range start date in the format yyyy-MM-dd or today.
  ///@param end-date The end date of the range.
  Future<chopper.Response> $1UserBodyResourcePathDateBaseDateEndDateJsonGet(
      {required String? resourcePath,
      required String? baseDate,
      required String? endDate}) {
    return _$1UserBodyResourcePathDateBaseDateEndDateJsonGet(
        resourcePath: resourcePath, baseDate: baseDate, endDate: endDate);
  }

  ///Get Body Time Series
  ///@param resource-path The resource path, which incudes the bmi, fat, or weight options.
  ///@param base-date The range start date in the format yyyy-MM-dd or today.
  ///@param end-date The end date of the range.
  @Get(path: '/1/user/-/body/{resource-path}/date/{base-date}/{end-date}.json')
  Future<chopper.Response> _$1UserBodyResourcePathDateBaseDateEndDateJsonGet(
      {@Path('resource-path') required String? resourcePath,
      @Path('base-date') required String? baseDate,
      @Path('end-date') required String? endDate});

  ///Get Body Goals
  ///@param goal-type weight or fat.
  Future<chopper.Response> $1UserBodyLogGoalTypeGoalJsonGet(
      {required String? goalType}) {
    return _$1UserBodyLogGoalTypeGoalJsonGet(goalType: goalType);
  }

  ///Get Body Goals
  ///@param goal-type weight or fat.
  @Get(path: '/1/user/-/body/log/{goal-type}/goal.json')
  Future<chopper.Response> _$1UserBodyLogGoalTypeGoalJsonGet(
      {@Path('goal-type') required String? goalType});

  ///Update Body Fat Goal
  ///@param fat Target body fat percentage; in the format X.XX.
  Future<chopper.Response> $1UserBodyLogFatGoalJsonPost(
      {required String? fat}) {
    return _$1UserBodyLogFatGoalJsonPost(fat: fat);
  }

  ///Update Body Fat Goal
  ///@param fat Target body fat percentage; in the format X.XX.
  @Post(path: '/1/user/-/body/log/fat/goal.json', optionalBody: true)
  Future<chopper.Response> _$1UserBodyLogFatGoalJsonPost(
      {@Query('fat') required String? fat});

  ///Update Weight Goal
  ///@param startDate Weight goal start date; in the format yyyy-MM-dd.
  ///@param startWeight Weight goal start weight; in the format X.XX, in the unit systems that corresponds to the Accept-Language header provided.
  ///@param weight Weight goal target weight; in the format X.XX, in the unit systems that corresponds to the Accept-Language header provided; required if user doesn't have an existing weight goal.
  Future<chopper.Response> $1UserBodyLogWeightGoalJsonPost(
      {required String? startDate,
      required String? startWeight,
      String? weight}) {
    return _$1UserBodyLogWeightGoalJsonPost(
        startDate: startDate, startWeight: startWeight, weight: weight);
  }

  ///Update Weight Goal
  ///@param startDate Weight goal start date; in the format yyyy-MM-dd.
  ///@param startWeight Weight goal start weight; in the format X.XX, in the unit systems that corresponds to the Accept-Language header provided.
  ///@param weight Weight goal target weight; in the format X.XX, in the unit systems that corresponds to the Accept-Language header provided; required if user doesn't have an existing weight goal.
  @Post(path: '/1/user/-/body/log/weight/goal.json', optionalBody: true)
  Future<chopper.Response> _$1UserBodyLogWeightGoalJsonPost(
      {@Query('startDate') required String? startDate,
      @Query('startWeight') required String? startWeight,
      @Query('weight') String? weight});

  ///Get Weight Logs
  ///@param date The date in the format yyyy-MM-dd.
  Future<chopper.Response> $1UserBodyLogWeightDateDateJsonGet(
      {required String? date}) {
    return _$1UserBodyLogWeightDateDateJsonGet(date: date);
  }

  ///Get Weight Logs
  ///@param date The date in the format yyyy-MM-dd.
  @Get(path: '/1/user/-/body/log/weight/date/{date}.json')
  Future<chopper.Response> _$1UserBodyLogWeightDateDateJsonGet(
      {@Path('date') required String? date});

  ///Get Body Fat Logs
  ///@param date The date in the format yyyy-MM-dd.
  ///@param period The range for which data will be returned. Options are 1d, 7d, 30d, 1w, 1m, 3m, 6m, 1y, or max.
  Future<chopper.Response> $1UserBodyLogWeightDateDatePeriodJsonGet(
      {required String? date, required String? period}) {
    return _$1UserBodyLogWeightDateDatePeriodJsonGet(
        date: date, period: period);
  }

  ///Get Body Fat Logs
  ///@param date The date in the format yyyy-MM-dd.
  ///@param period The range for which data will be returned. Options are 1d, 7d, 30d, 1w, 1m, 3m, 6m, 1y, or max.
  @Get(path: '/1/user/-/body/log/weight/date/{date}/{period}.json')
  Future<chopper.Response> _$1UserBodyLogWeightDateDatePeriodJsonGet(
      {@Path('date') required String? date,
      @Path('period') required String? period});

  ///Get Body Fat Logs
  ///@param base-date The range start date in the format yyyy-MM-dd or today.
  ///@param end-date The end date of the range.
  Future<chopper.Response> $1UserBodyLogWeightDateBaseDateEndDateJsonGet(
      {required String? baseDate, required String? endDate}) {
    return _$1UserBodyLogWeightDateBaseDateEndDateJsonGet(
        baseDate: baseDate, endDate: endDate);
  }

  ///Get Body Fat Logs
  ///@param base-date The range start date in the format yyyy-MM-dd or today.
  ///@param end-date The end date of the range.
  @Get(path: '/1/user/-/body/log/weight/date/{base-date}/{end-date}.json')
  Future<chopper.Response> _$1UserBodyLogWeightDateBaseDateEndDateJsonGet(
      {@Path('base-date') required String? baseDate,
      @Path('end-date') required String? endDate});

  ///Log Weight
  ///@param weight Weight in the format of X.XX.
  ///@param date Log entry date in the format yyyy-MM-dd.
  ///@param time Time of the measurement; hours and minutes in the format of HH:mm:ss, which is set to the last second of the day if not provided.
  Future<chopper.Response> $1UserBodyLogWeightJsonPost(
      {required int? weight, required String? date, String? time}) {
    return _$1UserBodyLogWeightJsonPost(weight: weight, date: date, time: time);
  }

  ///Log Weight
  ///@param weight Weight in the format of X.XX.
  ///@param date Log entry date in the format yyyy-MM-dd.
  ///@param time Time of the measurement; hours and minutes in the format of HH:mm:ss, which is set to the last second of the day if not provided.
  @Post(path: '/1/user/-/body/log/weight.json', optionalBody: true)
  Future<chopper.Response> _$1UserBodyLogWeightJsonPost(
      {@Query('weight') required int? weight,
      @Query('date') required String? date,
      @Query('time') String? time});

  ///Delete Weight Log
  ///@param body-weight-log-id The ID of the body weight log entry.
  Future<chopper.Response> $1UserBodyLogWeightBodyWeightLogIdJsonDelete(
      {required int? bodyWeightLogId}) {
    return _$1UserBodyLogWeightBodyWeightLogIdJsonDelete(
        bodyWeightLogId: bodyWeightLogId);
  }

  ///Delete Weight Log
  ///@param body-weight-log-id The ID of the body weight log entry.
  @Delete(path: '/1/user/-/body/log/weight/{body-weight-log-id}.json')
  Future<chopper.Response> _$1UserBodyLogWeightBodyWeightLogIdJsonDelete(
      {@Path('body-weight-log-id') required int? bodyWeightLogId});

  ///Get Devices
  Future<chopper.Response> $1UserDevicesJsonGet() {
    return _$1UserDevicesJsonGet();
  }

  ///Get Devices
  @Get(path: '/1/user/-/devices.json')
  Future<chopper.Response> _$1UserDevicesJsonGet();

  ///Get Alarms
  ///@param tracker-id The ID of the tracker for which data is returned. The tracker-id value is found via the Get Devices endpoint.
  Future<chopper.Response> $1UserDevicesTrackerTrackerIdAlarmsJsonGet(
      {required int? trackerId}) {
    return _$1UserDevicesTrackerTrackerIdAlarmsJsonGet(trackerId: trackerId);
  }

  ///Get Alarms
  ///@param tracker-id The ID of the tracker for which data is returned. The tracker-id value is found via the Get Devices endpoint.
  @Get(path: '/1/user/-/devices/tracker/{tracker-id}/alarms.json')
  Future<chopper.Response> _$1UserDevicesTrackerTrackerIdAlarmsJsonGet(
      {@Path('tracker-id') required int? trackerId});

  ///Add Alarm
  ///@param tracker-id The ID of the tracker for which data is returned. The tracker-id value is found via the Get Devices endpoint.
  ///@param time Time of day that the alarm vibrates with a UTC timezone offset, e.g. 07:15-08:00.
  ///@param enabled true or false. If false, alarm does not vibrate until enabled is set to true.
  ///@param recurring true or false. If false, the alarm is a single event.
  ///@param weekDays Comma separated list of days of the week on which the alarm vibrates, e.g. MONDAY, TUESDAY.
  Future<chopper.Response> $1UserDevicesTrackerTrackerIdAlarmsJsonPost(
      {required int? trackerId,
      required String? time,
      required bool? enabled,
      required String? recurring,
      required String? weekDays}) {
    return _$1UserDevicesTrackerTrackerIdAlarmsJsonPost(
        trackerId: trackerId,
        time: time,
        enabled: enabled,
        recurring: recurring,
        weekDays: weekDays);
  }

  ///Add Alarm
  ///@param tracker-id The ID of the tracker for which data is returned. The tracker-id value is found via the Get Devices endpoint.
  ///@param time Time of day that the alarm vibrates with a UTC timezone offset, e.g. 07:15-08:00.
  ///@param enabled true or false. If false, alarm does not vibrate until enabled is set to true.
  ///@param recurring true or false. If false, the alarm is a single event.
  ///@param weekDays Comma separated list of days of the week on which the alarm vibrates, e.g. MONDAY, TUESDAY.
  @Post(
      path: '/1/user/-/devices/tracker/{tracker-id}/alarms.json',
      optionalBody: true)
  Future<chopper.Response> _$1UserDevicesTrackerTrackerIdAlarmsJsonPost(
      {@Path('tracker-id') required int? trackerId,
      @Query('time') required String? time,
      @Query('enabled') required bool? enabled,
      @Query('recurring') required String? recurring,
      @Query('weekDays') required String? weekDays});

  ///Update Alarm
  ///@param tracker-id The ID of the tracker for which data is returned. The tracker-id value is found via the Get Devices endpoint.
  ///@param alarm-id The ID of the alarm to be updated. The alarm-id value is found in the response of the Get Activity endpoint.
  ///@param time Time of day that the alarm vibrates with a UTC timezone offset, e.g. 07:15-08:00.
  ///@param enabled true or false. If false, the alarm does not vibrate until enabled is set to true.
  ///@param recurring true or false. If false, the alarm is a single event.
  ///@param weekDays Comma seperated list of days of the week on which the alarm vibrates, e.g. MONDAY, TUESDAY.
  ///@param snoozeLength Minutes between alarms.
  ///@param snoozeCount Maximum snooze count.
  Future<chopper.Response> $1UserDevicesTrackerTrackerIdAlarmsAlarmIdJsonPost(
      {required int? trackerId,
      required int? alarmId,
      required String? time,
      required bool? enabled,
      required String? recurring,
      required String? weekDays,
      required int? snoozeLength,
      required int? snoozeCount}) {
    return _$1UserDevicesTrackerTrackerIdAlarmsAlarmIdJsonPost(
        trackerId: trackerId,
        alarmId: alarmId,
        time: time,
        enabled: enabled,
        recurring: recurring,
        weekDays: weekDays,
        snoozeLength: snoozeLength,
        snoozeCount: snoozeCount);
  }

  ///Update Alarm
  ///@param tracker-id The ID of the tracker for which data is returned. The tracker-id value is found via the Get Devices endpoint.
  ///@param alarm-id The ID of the alarm to be updated. The alarm-id value is found in the response of the Get Activity endpoint.
  ///@param time Time of day that the alarm vibrates with a UTC timezone offset, e.g. 07:15-08:00.
  ///@param enabled true or false. If false, the alarm does not vibrate until enabled is set to true.
  ///@param recurring true or false. If false, the alarm is a single event.
  ///@param weekDays Comma seperated list of days of the week on which the alarm vibrates, e.g. MONDAY, TUESDAY.
  ///@param snoozeLength Minutes between alarms.
  ///@param snoozeCount Maximum snooze count.
  @Post(
      path: '/1/user/-/devices/tracker/{tracker-id}/alarms/{alarm-id}.json',
      optionalBody: true)
  Future<chopper.Response> _$1UserDevicesTrackerTrackerIdAlarmsAlarmIdJsonPost(
      {@Path('tracker-id') required int? trackerId,
      @Path('alarm-id') required int? alarmId,
      @Query('time') required String? time,
      @Query('enabled') required bool? enabled,
      @Query('recurring') required String? recurring,
      @Query('weekDays') required String? weekDays,
      @Query('snoozeLength') required int? snoozeLength,
      @Query('snoozeCount') required int? snoozeCount});

  ///Delete Alarm
  ///@param tracker-id The ID of the tracker whose alarms is managed. The tracker-id value is found via the Get Devices endpoint.
  ///@param alarm-id The ID of the alarm to be updated. The alarm-id value is found via the Get Alarms endpoint.
  Future<chopper.Response> $1UserDevicesTrackerTrackerIdAlarmsAlarmIdJsonDelete(
      {required int? trackerId, required int? alarmId}) {
    return _$1UserDevicesTrackerTrackerIdAlarmsAlarmIdJsonDelete(
        trackerId: trackerId, alarmId: alarmId);
  }

  ///Delete Alarm
  ///@param tracker-id The ID of the tracker whose alarms is managed. The tracker-id value is found via the Get Devices endpoint.
  ///@param alarm-id The ID of the alarm to be updated. The alarm-id value is found via the Get Alarms endpoint.
  @Delete(path: '/1/user/-/devices/tracker/{tracker-id}/alarms/{alarm-id}.json')
  Future<chopper.Response>
      _$1UserDevicesTrackerTrackerIdAlarmsAlarmIdJsonDelete(
          {@Path('tracker-id') required int? trackerId,
          @Path('alarm-id') required int? alarmId});

  ///Get Food Locales
  Future<chopper.Response> $1FoodsLocalesJsonGet() {
    return _$1FoodsLocalesJsonGet();
  }

  ///Get Food Locales
  @Get(path: '/1/foods/locales.json')
  Future<chopper.Response> _$1FoodsLocalesJsonGet();

  ///Get Food Goals
  Future<chopper.Response> $1UserFoodsLogGoalJsonGet() {
    return _$1UserFoodsLogGoalJsonGet();
  }

  ///Get Food Goals
  @Get(path: '/1/user/-/foods/log/goal.json')
  Future<chopper.Response> _$1UserFoodsLogGoalJsonGet();

  ///Update Food Goal
  ///@param calories Manual calorie consumption goal in either calories or intensity must be provided.
  ///@param intensity Food plan intensity (MAINTENANCE, EASIER, MEDIUM, KINDAHARD, or HARDER). Either calories or intensity must be provided.
  ///@param personalized Food plan type; true or false.
  Future<chopper.Response> $1UserFoodsLogGoalJsonPost(
      {required int? calories, String? intensity, String? personalized}) {
    return _$1UserFoodsLogGoalJsonPost(
        calories: calories, intensity: intensity, personalized: personalized);
  }

  ///Update Food Goal
  ///@param calories Manual calorie consumption goal in either calories or intensity must be provided.
  ///@param intensity Food plan intensity (MAINTENANCE, EASIER, MEDIUM, KINDAHARD, or HARDER). Either calories or intensity must be provided.
  ///@param personalized Food plan type; true or false.
  @Post(path: '/1/user/-/foods/log/goal.json', optionalBody: true)
  Future<chopper.Response> _$1UserFoodsLogGoalJsonPost(
      {@Query('calories') required int? calories,
      @Query('intensity') String? intensity,
      @Query('personalized') String? personalized});

  ///Get Food Logs
  ///@param date The date of records to be returned. In the format yyyy-MM-dd.
  Future<chopper.Response> $1UserFoodsLogDateDateJsonGet(
      {required String? date}) {
    return _$1UserFoodsLogDateDateJsonGet(date: date);
  }

  ///Get Food Logs
  ///@param date The date of records to be returned. In the format yyyy-MM-dd.
  @Get(path: '/1/user/-/foods/log/date/{date}.json')
  Future<chopper.Response> _$1UserFoodsLogDateDateJsonGet(
      {@Path('date') required String? date});

  ///Get Water Logs
  ///@param date The date of records to be returned. In the format yyyy-MM-dd.
  Future<chopper.Response> $1UserFoodsLogWaterDateDateJsonGet(
      {required String? date}) {
    return _$1UserFoodsLogWaterDateDateJsonGet(date: date);
  }

  ///Get Water Logs
  ///@param date The date of records to be returned. In the format yyyy-MM-dd.
  @Get(path: '/1/user/-/foods/log/water/date/{date}.json')
  Future<chopper.Response> _$1UserFoodsLogWaterDateDateJsonGet(
      {@Path('date') required String? date});

  ///Get Water Goal
  Future<chopper.Response> $1UserFoodsLogWaterGoalJsonGet() {
    return _$1UserFoodsLogWaterGoalJsonGet();
  }

  ///Get Water Goal
  @Get(path: '/1/user/-/foods/log/water/goal.json')
  Future<chopper.Response> _$1UserFoodsLogWaterGoalJsonGet();

  ///Update Water Goal
  ///@param target The target water goal in the format X.X is set in unit based on locale.
  Future<chopper.Response> $1UserFoodsLogWaterGoalJsonPost(
      {required int? target}) {
    return _$1UserFoodsLogWaterGoalJsonPost(target: target);
  }

  ///Update Water Goal
  ///@param target The target water goal in the format X.X is set in unit based on locale.
  @Post(path: '/1/user/-/foods/log/water/goal.json', optionalBody: true)
  Future<chopper.Response> _$1UserFoodsLogWaterGoalJsonPost(
      {@Query('target') required int? target});

  ///Get Food or Water Time Series
  ///@param resource-path The resouce path. See options in the Resouce Path Options section in the full documentation.
  ///@param base-date The range start date in the format yyyy-MM-dd or today.
  ///@param end-date The end date of the range.
  Future<chopper.Response> $1UserFoodsLogResourcePathDateBaseDateEndDateJsonGet(
      {required String? resourcePath,
      required String? baseDate,
      required String? endDate}) {
    return _$1UserFoodsLogResourcePathDateBaseDateEndDateJsonGet(
        resourcePath: resourcePath, baseDate: baseDate, endDate: endDate);
  }

  ///Get Food or Water Time Series
  ///@param resource-path The resouce path. See options in the Resouce Path Options section in the full documentation.
  ///@param base-date The range start date in the format yyyy-MM-dd or today.
  ///@param end-date The end date of the range.
  @Get(
      path:
          '/1/user/-/foods/log/{resource-path}/date/{base-date}/{end-date}.json')
  Future<chopper.Response>
      _$1UserFoodsLogResourcePathDateBaseDateEndDateJsonGet(
          {@Path('resource-path') required String? resourcePath,
          @Path('base-date') required String? baseDate,
          @Path('end-date') required String? endDate});

  ///Get Food or Water Time Series
  ///@param resource-path The resouce path. See options in the Resouce Path Options section in the full documentation.
  ///@param date The end date of the period specified in the format yyyy-MM-dd or today.
  ///@param period The range for which data will be returned. Options are 1d, 7d, 30d, 1w, 3m, 6m, 1y, or max.
  Future<chopper.Response> $1UserFoodsLogResourcePathDateDatePeriodJsonGet(
      {required String? resourcePath,
      required String? date,
      required String? period}) {
    return _$1UserFoodsLogResourcePathDateDatePeriodJsonGet(
        resourcePath: resourcePath, date: date, period: period);
  }

  ///Get Food or Water Time Series
  ///@param resource-path The resouce path. See options in the Resouce Path Options section in the full documentation.
  ///@param date The end date of the period specified in the format yyyy-MM-dd or today.
  ///@param period The range for which data will be returned. Options are 1d, 7d, 30d, 1w, 3m, 6m, 1y, or max.
  @Get(path: '/1/user/-/foods/log/{resource-path}/date/{date}/{period}.json')
  Future<chopper.Response> _$1UserFoodsLogResourcePathDateDatePeriodJsonGet(
      {@Path('resource-path') required String? resourcePath,
      @Path('date') required String? date,
      @Path('period') required String? period});

  ///Log Food
  ///@param foodId The ID of the food to be logged. Either foodId or foodName must be provided.
  ///@param foodName Food entry name. Either foodId or foodName must be provided.
  ///@param mealTypeId Meal types. 1=Breakfast; 2=Morning Snack; 3=Lunch; 4=Afternoon Snack; 5=Dinner; 7=Anytime.
  ///@param unitId The ID of units used. Typically retrieved via a previous call to Get Food Logs, Search Foods, or Get Food Units.
  ///@param amount The amount consumed in the format X.XX in the specified unitId.
  ///@param date Log entry date in the format yyyy-MM-dd.
  ///@param favorite The `true` value will add the food to the user's favorites after creating the log entry; while the `false` value will not. Valid only with foodId value.
  ///@param brandName Brand name of food. Valid only with foodName parameters.
  ///@param calories Calories for this serving size. This is allowed with foodName parameter (default to zero); otherwise it is ignored.
  Future<chopper.Response> $1UserFoodsLogJsonPost(
      {required String? foodId,
      String? foodName,
      required String? mealTypeId,
      required String? unitId,
      required String? amount,
      required String? date,
      bool? favorite,
      String? brandName,
      int? calories}) {
    return _$1UserFoodsLogJsonPost(
        foodId: foodId,
        foodName: foodName,
        mealTypeId: mealTypeId,
        unitId: unitId,
        amount: amount,
        date: date,
        favorite: favorite,
        brandName: brandName,
        calories: calories);
  }

  ///Log Food
  ///@param foodId The ID of the food to be logged. Either foodId or foodName must be provided.
  ///@param foodName Food entry name. Either foodId or foodName must be provided.
  ///@param mealTypeId Meal types. 1=Breakfast; 2=Morning Snack; 3=Lunch; 4=Afternoon Snack; 5=Dinner; 7=Anytime.
  ///@param unitId The ID of units used. Typically retrieved via a previous call to Get Food Logs, Search Foods, or Get Food Units.
  ///@param amount The amount consumed in the format X.XX in the specified unitId.
  ///@param date Log entry date in the format yyyy-MM-dd.
  ///@param favorite The `true` value will add the food to the user's favorites after creating the log entry; while the `false` value will not. Valid only with foodId value.
  ///@param brandName Brand name of food. Valid only with foodName parameters.
  ///@param calories Calories for this serving size. This is allowed with foodName parameter (default to zero); otherwise it is ignored.
  @Post(path: '/1/user/-/foods/log.json', optionalBody: true)
  Future<chopper.Response> _$1UserFoodsLogJsonPost(
      {@Query('foodId') required String? foodId,
      @Query('foodName') String? foodName,
      @Query('mealTypeId') required String? mealTypeId,
      @Query('unitId') required String? unitId,
      @Query('amount') required String? amount,
      @Query('date') required String? date,
      @Query('favorite') bool? favorite,
      @Query('brandName') String? brandName,
      @Query('calories') int? calories});

  ///Delete Food Log
  ///@param food-log-id The ID of the food log entry to be deleted.
  Future<chopper.Response> $1UserFoodsLogFoodLogIdJsonDelete(
      {required String? foodLogId}) {
    return _$1UserFoodsLogFoodLogIdJsonDelete(foodLogId: foodLogId);
  }

  ///Delete Food Log
  ///@param food-log-id The ID of the food log entry to be deleted.
  @Delete(path: '/1/user/-/foods/log/{food-log-id}.json')
  Future<chopper.Response> _$1UserFoodsLogFoodLogIdJsonDelete(
      {@Path('food-log-id') required String? foodLogId});

  ///Edit Food Log
  ///@param food-log-id The ID of the food log entry to be edited.
  ///@param mealTypeId Meal types. 1=Breakfast; 2=Morning Snack; 3=Lunch; 4=Afternoon Snack; 5=Dinner; 7=Anytime.
  ///@param unitId The ID of units used. Typically retrieved via a previous call to Get Food Logs, Search Foods, or Get Food Units.
  ///@param amount The amount consumed in the format X.XX in the specified unitId.
  ///@param calories Calories for this serving size. This is allowed with foodName parameter (default to zero); otherwise it is ignored.
  Future<chopper.Response> $1UserFoodsLogFoodLogIdJsonPost(
      {required String? foodLogId,
      required String? mealTypeId,
      required String? unitId,
      required String? amount,
      int? calories}) {
    return _$1UserFoodsLogFoodLogIdJsonPost(
        foodLogId: foodLogId,
        mealTypeId: mealTypeId,
        unitId: unitId,
        amount: amount,
        calories: calories);
  }

  ///Edit Food Log
  ///@param food-log-id The ID of the food log entry to be edited.
  ///@param mealTypeId Meal types. 1=Breakfast; 2=Morning Snack; 3=Lunch; 4=Afternoon Snack; 5=Dinner; 7=Anytime.
  ///@param unitId The ID of units used. Typically retrieved via a previous call to Get Food Logs, Search Foods, or Get Food Units.
  ///@param amount The amount consumed in the format X.XX in the specified unitId.
  ///@param calories Calories for this serving size. This is allowed with foodName parameter (default to zero); otherwise it is ignored.
  @Post(path: '/1/user/-/foods/log/{food-log-id}.json', optionalBody: true)
  Future<chopper.Response> _$1UserFoodsLogFoodLogIdJsonPost(
      {@Path('food-log-id') required String? foodLogId,
      @Query('mealTypeId') required String? mealTypeId,
      @Query('unitId') required String? unitId,
      @Query('amount') required String? amount,
      @Query('calories') int? calories});

  ///Log Water
  ///@param date The date of records to be returned in the format yyyy-MM-dd.
  ///@param amount The amount consumption in the format X.XX and in the specified waterUnit or in the unit system that corresponds to the Accept-Language header provided.
  ///@param unit Water measurement unit; `ml`, `fl oz`, or `cup`.
  Future<chopper.Response> $1UserFoodsLogWaterJsonPost(
      {required String? date, required int? amount, String? unit}) {
    return _$1UserFoodsLogWaterJsonPost(date: date, amount: amount, unit: unit);
  }

  ///Log Water
  ///@param date The date of records to be returned in the format yyyy-MM-dd.
  ///@param amount The amount consumption in the format X.XX and in the specified waterUnit or in the unit system that corresponds to the Accept-Language header provided.
  ///@param unit Water measurement unit; `ml`, `fl oz`, or `cup`.
  @Post(path: '/1/user/-/foods/log/water.json', optionalBody: true)
  Future<chopper.Response> _$1UserFoodsLogWaterJsonPost(
      {@Query('date') required String? date,
      @Query('amount') required int? amount,
      @Query('unit') String? unit});

  ///Delete Water Log
  ///@param water-log-id The ID of the waterUnit log entry to be deleted.
  Future<chopper.Response> $1UserFoodsLogWaterWaterLogIdJsonDelete(
      {required String? waterLogId}) {
    return _$1UserFoodsLogWaterWaterLogIdJsonDelete(waterLogId: waterLogId);
  }

  ///Delete Water Log
  ///@param water-log-id The ID of the waterUnit log entry to be deleted.
  @Delete(path: '/1/user/-/foods/log/water/{water-log-id}.json')
  Future<chopper.Response> _$1UserFoodsLogWaterWaterLogIdJsonDelete(
      {@Path('water-log-id') required String? waterLogId});

  ///Update Water Log
  ///@param water-log-id The ID of the waterUnit log entry to be deleted.
  ///@param amount Amount consumed; in the format X.X and in the specified waterUnit or in the unit system that corresponds to the Accept-Language header provided.
  ///@param unit Water measurement unit. 'ml', 'fl oz', or 'cup'.
  Future<chopper.Response> $1UserFoodsLogWaterWaterLogIdJsonPost(
      {required String? waterLogId, required String? amount, String? unit}) {
    return _$1UserFoodsLogWaterWaterLogIdJsonPost(
        waterLogId: waterLogId, amount: amount, unit: unit);
  }

  ///Update Water Log
  ///@param water-log-id The ID of the waterUnit log entry to be deleted.
  ///@param amount Amount consumed; in the format X.X and in the specified waterUnit or in the unit system that corresponds to the Accept-Language header provided.
  ///@param unit Water measurement unit. 'ml', 'fl oz', or 'cup'.
  @Post(
      path: '/1/user/-/foods/log/water/{water-log-id}.json', optionalBody: true)
  Future<chopper.Response> _$1UserFoodsLogWaterWaterLogIdJsonPost(
      {@Path('water-log-id') required String? waterLogId,
      @Query('amount') required String? amount,
      @Query('unit') String? unit});

  ///Get Favorite Foods
  Future<chopper.Response> $1UserFoodsLogFavoriteJsonGet() {
    return _$1UserFoodsLogFavoriteJsonGet();
  }

  ///Get Favorite Foods
  @Get(path: '/1/user/-/foods/log/favorite.json')
  Future<chopper.Response> _$1UserFoodsLogFavoriteJsonGet();

  ///Get Frequent Foods
  Future<chopper.Response> $1UserFoodsLogFrequentJsonGet() {
    return _$1UserFoodsLogFrequentJsonGet();
  }

  ///Get Frequent Foods
  @Get(path: '/1/user/-/foods/log/frequent.json')
  Future<chopper.Response> _$1UserFoodsLogFrequentJsonGet();

  ///Add Favorite Food
  ///@param food-id The ID of the food to be added to user's favorites.
  Future<chopper.Response> $1UserFoodsLogFavoriteFoodIdJsonPost(
      {required String? foodId}) {
    return _$1UserFoodsLogFavoriteFoodIdJsonPost(foodId: foodId);
  }

  ///Add Favorite Food
  ///@param food-id The ID of the food to be added to user's favorites.
  @Post(path: '/1/user/-/foods/log/favorite/{food-id}.json', optionalBody: true)
  Future<chopper.Response> _$1UserFoodsLogFavoriteFoodIdJsonPost(
      {@Path('food-id') required String? foodId});

  ///Delete Favorite Food
  ///@param food-id The ID of the food to be deleted from user's favorites.
  Future<chopper.Response> $1UserFoodsLogFavoriteFoodIdJsonDelete(
      {required String? foodId}) {
    return _$1UserFoodsLogFavoriteFoodIdJsonDelete(foodId: foodId);
  }

  ///Delete Favorite Food
  ///@param food-id The ID of the food to be deleted from user's favorites.
  @Delete(path: '/1/user/-/foods/log/favorite/{food-id}.json')
  Future<chopper.Response> _$1UserFoodsLogFavoriteFoodIdJsonDelete(
      {@Path('food-id') required String? foodId});

  ///Get Meals
  Future<chopper.Response> $1UserMealsJsonGet() {
    return _$1UserMealsJsonGet();
  }

  ///Get Meals
  @Get(path: '/1/user/-/meals.json')
  Future<chopper.Response> _$1UserMealsJsonGet();

  ///Create Meal
  ///@param name Name of the meal.
  ///@param Description Short description of the meal.
  ///@param foodId ID of the food to be included in the meal.
  ///@param unitId ID of units used. Typically retrieved via a previous call to Get Food Logs, Search Foods, or Get Food Units.
  ///@param amount Amount consumed; in the format X.XX, in the specified unitId.
  Future<chopper.Response> $1UserMealsJsonPost(
      {required String? name,
      required String? description,
      required String? foodId,
      required String? unitId,
      required String? amount}) {
    return _$1UserMealsJsonPost(
        name: name,
        description: description,
        foodId: foodId,
        unitId: unitId,
        amount: amount);
  }

  ///Create Meal
  ///@param name Name of the meal.
  ///@param Description Short description of the meal.
  ///@param foodId ID of the food to be included in the meal.
  ///@param unitId ID of units used. Typically retrieved via a previous call to Get Food Logs, Search Foods, or Get Food Units.
  ///@param amount Amount consumed; in the format X.XX, in the specified unitId.
  @Post(path: '/1/user/-/meals.json', optionalBody: true)
  Future<chopper.Response> _$1UserMealsJsonPost(
      {@Query('name') required String? name,
      @Query('Description') required String? description,
      @Query('foodId') required String? foodId,
      @Query('unitId') required String? unitId,
      @Query('amount') required String? amount});

  ///Edit Meal
  ///@param meal-id Id of the meal to edit.
  ///@param name Name of the meal.
  ///@param Description Short description of the meal.
  ///@param foodId ID of the food to be included in the meal.
  ///@param unitId ID of units used. Typically retrieved via a previous call to Get Food Logs, Search Foods, or Get Food Units.
  ///@param amount Amount consumed; in the format X.XX, in the specified unitId.
  Future<chopper.Response> $1UserMealsMealIdJsonPost(
      {required String? mealId,
      required String? name,
      required String? description,
      required String? foodId,
      required String? unitId,
      required String? amount}) {
    return _$1UserMealsMealIdJsonPost(
        mealId: mealId,
        name: name,
        description: description,
        foodId: foodId,
        unitId: unitId,
        amount: amount);
  }

  ///Edit Meal
  ///@param meal-id Id of the meal to edit.
  ///@param name Name of the meal.
  ///@param Description Short description of the meal.
  ///@param foodId ID of the food to be included in the meal.
  ///@param unitId ID of units used. Typically retrieved via a previous call to Get Food Logs, Search Foods, or Get Food Units.
  ///@param amount Amount consumed; in the format X.XX, in the specified unitId.
  @Post(path: '/1/user/-/meals/{meal-id}.json', optionalBody: true)
  Future<chopper.Response> _$1UserMealsMealIdJsonPost(
      {@Path('meal-id') required String? mealId,
      @Query('name') required String? name,
      @Query('Description') required String? description,
      @Query('foodId') required String? foodId,
      @Query('unitId') required String? unitId,
      @Query('amount') required String? amount});

  ///Delete Meal
  ///@param meal-id Id of the meal to delete.
  Future<chopper.Response> $1UserMealsMealIdJsonDelete(
      {required String? mealId}) {
    return _$1UserMealsMealIdJsonDelete(mealId: mealId);
  }

  ///Delete Meal
  ///@param meal-id Id of the meal to delete.
  @Delete(path: '/1/user/-/meals/{meal-id}.json')
  Future<chopper.Response> _$1UserMealsMealIdJsonDelete(
      {@Path('meal-id') required String? mealId});

  ///Get Recent Foods
  Future<chopper.Response> $1UserFoodsLogRecentJsonGet() {
    return _$1UserFoodsLogRecentJsonGet();
  }

  ///Get Recent Foods
  @Get(path: '/1/user/-/foods/log/recent.json')
  Future<chopper.Response> _$1UserFoodsLogRecentJsonGet();

  ///Create Food
  ///@param name The food name.
  ///@param defaultFoodMeasurementUnitId The ID of the default measurement unit. Full list of units can be retrieved via the Get Food Units endpoint.
  ///@param defaultServingSize The size of the default serving. Nutrition values should be provided for this serving size.
  ///@param calories The calories in the default serving size.
  ///@param formType Form type; LIQUID or DRY.
  ///@param description The description of the food.
  Future<chopper.Response> $1UserFoodsJsonPost(
      {required String? name,
      required String? defaultFoodMeasurementUnitId,
      required String? defaultServingSize,
      required String? calories,
      String? formType,
      String? description}) {
    return _$1UserFoodsJsonPost(
        name: name,
        defaultFoodMeasurementUnitId: defaultFoodMeasurementUnitId,
        defaultServingSize: defaultServingSize,
        calories: calories,
        formType: formType,
        description: description);
  }

  ///Create Food
  ///@param name The food name.
  ///@param defaultFoodMeasurementUnitId The ID of the default measurement unit. Full list of units can be retrieved via the Get Food Units endpoint.
  ///@param defaultServingSize The size of the default serving. Nutrition values should be provided for this serving size.
  ///@param calories The calories in the default serving size.
  ///@param formType Form type; LIQUID or DRY.
  ///@param description The description of the food.
  @Post(path: '/1/user/-/foods.json', optionalBody: true)
  Future<chopper.Response> _$1UserFoodsJsonPost(
      {@Query('name')
          required String? name,
      @Query('defaultFoodMeasurementUnitId')
          required String? defaultFoodMeasurementUnitId,
      @Query('defaultServingSize')
          required String? defaultServingSize,
      @Query('calories')
          required String? calories,
      @Query('formType')
          String? formType,
      @Query('description')
          String? description});

  ///Delete Custom Food
  ///@param food-id The ID of the food to be deleted.
  Future<chopper.Response> $1UserFoodsFoodIdJsonDelete(
      {required String? foodId}) {
    return _$1UserFoodsFoodIdJsonDelete(foodId: foodId);
  }

  ///Delete Custom Food
  ///@param food-id The ID of the food to be deleted.
  @Delete(path: '/1/user/-/foods/{food-id}.json')
  Future<chopper.Response> _$1UserFoodsFoodIdJsonDelete(
      {@Path('food-id') required String? foodId});

  ///Get Food
  ///@param food-id The ID of the food.
  Future<chopper.Response> $1FoodsFoodIdJsonGet({required String? foodId}) {
    return _$1FoodsFoodIdJsonGet(foodId: foodId);
  }

  ///Get Food
  ///@param food-id The ID of the food.
  @Get(path: '/1/foods/{food-id}.json')
  Future<chopper.Response> _$1FoodsFoodIdJsonGet(
      {@Path('food-id') required String? foodId});

  ///Get Food Units
  Future<chopper.Response> $1FoodsUnitsJsonGet() {
    return _$1FoodsUnitsJsonGet();
  }

  ///Get Food Units
  @Get(path: '/1/foods/units.json')
  Future<chopper.Response> _$1FoodsUnitsJsonGet();

  ///Search Foods
  ///@param query The URL-encoded search query.
  Future<chopper.Response> $1FoodsSearchJsonGet({required String? query}) {
    return _$1FoodsSearchJsonGet(query: query);
  }

  ///Search Foods
  ///@param query The URL-encoded search query.
  @Get(path: '/1/foods/search.json')
  Future<chopper.Response> _$1FoodsSearchJsonGet(
      {@Query('query') required String? query});

  ///Get Friends
  Future<chopper.Response> $11UserFriendsJsonGet() {
    return _$11UserFriendsJsonGet();
  }

  ///Get Friends
  @Get(path: '/1.1/user/-/friends.json')
  Future<chopper.Response> _$11UserFriendsJsonGet();

  ///Get Friends Leaderboard
  Future<chopper.Response> $11UserLeaderboardFriendsJsonGet() {
    return _$11UserLeaderboardFriendsJsonGet();
  }

  ///Get Friends Leaderboard
  @Get(path: '/1.1/user/-/leaderboard/friends.json')
  Future<chopper.Response> _$11UserLeaderboardFriendsJsonGet();

  ///Get Friend Invitations
  Future<chopper.Response> $11UserFriendsInvitationsJsonGet() {
    return _$11UserFriendsInvitationsJsonGet();
  }

  ///Get Friend Invitations
  @Get(path: '/1.1/user/-/friends/invitations.json')
  Future<chopper.Response> _$11UserFriendsInvitationsJsonGet();

  ///Invite Friends
  ///@param invitedUserEmail Email of the user to invite.
  ///@param invitedUserId Encoded ID of the user to invite.
  Future<chopper.Response> $11UserFriendsInvitationsPost(
      {String? invitedUserEmail, String? invitedUserId}) {
    return _$11UserFriendsInvitationsPost(
        invitedUserEmail: invitedUserEmail, invitedUserId: invitedUserId);
  }

  ///Invite Friends
  ///@param invitedUserEmail Email of the user to invite.
  ///@param invitedUserId Encoded ID of the user to invite.
  @Post(path: '/1.1/user/-/friends/invitations', optionalBody: true)
  Future<chopper.Response> _$11UserFriendsInvitationsPost(
      {@Query('invitedUserEmail') String? invitedUserEmail,
      @Query('invitedUserId') String? invitedUserId});

  ///Respond to Friend Invitation
  ///@param from-user-id The encoded ID of a user from which to accept or reject invitation.
  ///@param accept Accept or reject invitation; true or false.
  Future<chopper.Response> $11UserFriendsInvitationsFromUserIdPost(
      {required String? fromUserId, required String? accept}) {
    return _$11UserFriendsInvitationsFromUserIdPost(
        fromUserId: fromUserId, accept: accept);
  }

  ///Respond to Friend Invitation
  ///@param from-user-id The encoded ID of a user from which to accept or reject invitation.
  ///@param accept Accept or reject invitation; true or false.
  @Post(
      path: '/1.1/user/-/friends/invitations/{from-user-id}',
      optionalBody: true)
  Future<chopper.Response> _$11UserFriendsInvitationsFromUserIdPost(
      {@Path('from-user-id') required String? fromUserId,
      @Query('accept') required String? accept});

  ///Get Heart Rate Time Series
  ///@param date The end date of the period specified in the format yyyy-MM-dd or today.
  ///@param period The range of which data will be returned. Options are 1d, 7d, 30d, 1w, and 1m.
  Future<chopper.Response> $1UserActivitiesHeartDateDatePeriodJsonGet(
      {required String? date, required String? period}) {
    return _$1UserActivitiesHeartDateDatePeriodJsonGet(
        date: date, period: period);
  }

  ///Get Heart Rate Time Series
  ///@param date The end date of the period specified in the format yyyy-MM-dd or today.
  ///@param period The range of which data will be returned. Options are 1d, 7d, 30d, 1w, and 1m.
  @Get(path: '/1/user/-/activities/heart/date/{date}/{period}.json')
  Future<chopper.Response> _$1UserActivitiesHeartDateDatePeriodJsonGet(
      {@Path('date') required String? date,
      @Path('period') required String? period});

  ///Get Heart Rate Time Series
  ///@param base-date The range start date in  the format yyyy-MM-dd or today.
  ///@param end-date The end date of the range.
  Future<chopper.Response> $1UserActivitiesHeartDateBaseDateEndDateJsonGet(
      {required String? baseDate, required String? endDate}) {
    return _$1UserActivitiesHeartDateBaseDateEndDateJsonGet(
        baseDate: baseDate, endDate: endDate);
  }

  ///Get Heart Rate Time Series
  ///@param base-date The range start date in  the format yyyy-MM-dd or today.
  ///@param end-date The end date of the range.
  @Get(path: '/1/user/-/activities/heart/date/{base-date}/{end-date}.json')
  Future<chopper.Response> _$1UserActivitiesHeartDateBaseDateEndDateJsonGet(
      {@Path('base-date') required String? baseDate,
      @Path('end-date') required String? endDate});

  ///Get Heart Rate Intraday Time Series
  ///@param date The date in the format of yyyy-MM-dd or today.
  ///@param end-date The end date in the format of yyyy-MM-dd or today.
  ///@param detail-level The number of data points to include either 1sec or 1min.
  Future<chopper.Response>
      $1UserActivitiesHeartDateDateEndDateDetailLevelJsonGet(
          {required String? date,
          required String? endDate,
          required String? detailLevel}) {
    return _$1UserActivitiesHeartDateDateEndDateDetailLevelJsonGet(
        date: date, endDate: endDate, detailLevel: detailLevel);
  }

  ///Get Heart Rate Intraday Time Series
  ///@param date The date in the format of yyyy-MM-dd or today.
  ///@param end-date The end date in the format of yyyy-MM-dd or today.
  ///@param detail-level The number of data points to include either 1sec or 1min.
  @Get(
      path:
          '/1/user/-/activities/heart/date/{date}/{end-date}/{detail-level}.json')
  Future<chopper.Response>
      _$1UserActivitiesHeartDateDateEndDateDetailLevelJsonGet(
          {@Path('date') required String? date,
          @Path('end-date') required String? endDate,
          @Path('detail-level') required String? detailLevel});

  ///Get Heart Rate Intraday Time Series
  ///@param date The date in the format of yyyy-MM-dd or today.
  ///@param end-date The end date in the format of yyyy-MM-dd or today.
  ///@param detail-level The number of data points to include either 1sec or 1min.
  ///@param start-time The start of the period in the format of HH:mm.
  ///@param end-time The end time of the period in the format of HH:mm.
  Future<chopper.Response>
      $1UserActivitiesHeartDateDateEndDateDetailLevelTimeStartTimeEndTimeJsonGet(
          {required String? date,
          required String? endDate,
          required String? detailLevel,
          required String? startTime,
          required String? endTime}) {
    return _$1UserActivitiesHeartDateDateEndDateDetailLevelTimeStartTimeEndTimeJsonGet(
        date: date,
        endDate: endDate,
        detailLevel: detailLevel,
        startTime: startTime,
        endTime: endTime);
  }

  ///Get Heart Rate Intraday Time Series
  ///@param date The date in the format of yyyy-MM-dd or today.
  ///@param end-date The end date in the format of yyyy-MM-dd or today.
  ///@param detail-level The number of data points to include either 1sec or 1min.
  ///@param start-time The start of the period in the format of HH:mm.
  ///@param end-time The end time of the period in the format of HH:mm.
  @Get(
      path:
          '/1/user/-/activities/heart/date/{date}/{end-date}/{detail-level}/time/{start-time}/{end-time}.json')
  Future<chopper.Response>
      _$1UserActivitiesHeartDateDateEndDateDetailLevelTimeStartTimeEndTimeJsonGet(
          {@Path('date') required String? date,
          @Path('end-date') required String? endDate,
          @Path('detail-level') required String? detailLevel,
          @Path('start-time') required String? startTime,
          @Path('end-time') required String? endTime});

  ///Get Heart Rate Intraday Time Series
  ///@param date The date in the format of yyyy-MM-dd or today.
  ///@param detail-level The number of data points to include either 1sec or 1min.
  Future<chopper.Response> $1UserActivitiesHeartDateDate1dDetailLevelJsonGet(
      {required String? date, required String? detailLevel}) {
    return _$1UserActivitiesHeartDateDate1dDetailLevelJsonGet(
        date: date, detailLevel: detailLevel);
  }

  ///Get Heart Rate Intraday Time Series
  ///@param date The date in the format of yyyy-MM-dd or today.
  ///@param detail-level The number of data points to include either 1sec or 1min.
  @Get(path: '/1/user/-/activities/heart/date/{date}/1d/{detail-level}.json')
  Future<chopper.Response> _$1UserActivitiesHeartDateDate1dDetailLevelJsonGet(
      {@Path('date') required String? date,
      @Path('detail-level') required String? detailLevel});

  ///Get Heart Rate Intraday Time Series
  ///@param date The date in the format of yyyy-MM-dd or today.
  ///@param detail-level The number of data points to include either 1sec or 1min.
  ///@param start-time The start of the period in the format of HH:mm.
  ///@param end-time The end time of the period in the format of HH:mm.
  Future<chopper.Response>
      $1UserActivitiesHeartDateDate1dDetailLevelTimeStartTimeEndTimeJsonGet(
          {required String? date,
          required String? detailLevel,
          required String? startTime,
          required String? endTime}) {
    return _$1UserActivitiesHeartDateDate1dDetailLevelTimeStartTimeEndTimeJsonGet(
        date: date,
        detailLevel: detailLevel,
        startTime: startTime,
        endTime: endTime);
  }

  ///Get Heart Rate Intraday Time Series
  ///@param date The date in the format of yyyy-MM-dd or today.
  ///@param detail-level The number of data points to include either 1sec or 1min.
  ///@param start-time The start of the period in the format of HH:mm.
  ///@param end-time The end time of the period in the format of HH:mm.
  @Get(
      path:
          '/1/user/-/activities/heart/date/{date}/1d/{detail-level}/time/{start-time}/{end-time}.json')
  Future<chopper.Response>
      _$1UserActivitiesHeartDateDate1dDetailLevelTimeStartTimeEndTimeJsonGet(
          {@Path('date') required String? date,
          @Path('detail-level') required String? detailLevel,
          @Path('start-time') required String? startTime,
          @Path('end-time') required String? endTime});

  ///Delete Sleep Log
  ///@param log-id The ID of the sleep log to be deleted.
  Future<chopper.Response> $12UserSleepLogIdJsonDelete(
      {required String? logId}) {
    return _$12UserSleepLogIdJsonDelete(logId: logId);
  }

  ///Delete Sleep Log
  ///@param log-id The ID of the sleep log to be deleted.
  @Delete(path: '/1.2/user/-/sleep/{log-id}.json')
  Future<chopper.Response> _$12UserSleepLogIdJsonDelete(
      {@Path('log-id') required String? logId});

  ///Get Sleep Log
  ///@param date The date of records to be returned. In the format yyyy-MM-dd.
  Future<chopper.Response> $12UserSleepDateDateJsonGet(
      {required String? date}) {
    return _$12UserSleepDateDateJsonGet(date: date);
  }

  ///Get Sleep Log
  ///@param date The date of records to be returned. In the format yyyy-MM-dd.
  @Get(path: '/1.2/user/-/sleep/date/{date}.json')
  Future<chopper.Response> _$12UserSleepDateDateJsonGet(
      {@Path('date') required String? date});

  ///Get Sleep Logs by Date Range
  ///@param base-date The date of records to be returned. In the format yyyy-MM-dd.
  ///@param end-date The date of records to be returned. In the format yyyy-MM-dd.
  Future<chopper.Response> $12UserSleepDateBaseDateEndDateJsonGet(
      {required String? baseDate, required String? endDate}) {
    return _$12UserSleepDateBaseDateEndDateJsonGet(
        baseDate: baseDate, endDate: endDate);
  }

  ///Get Sleep Logs by Date Range
  ///@param base-date The date of records to be returned. In the format yyyy-MM-dd.
  ///@param end-date The date of records to be returned. In the format yyyy-MM-dd.
  @Get(path: '/1.2/user/-/sleep/date/{base-date}/{end-date}.json')
  Future<chopper.Response> _$12UserSleepDateBaseDateEndDateJsonGet(
      {@Path('base-date') required String? baseDate,
      @Path('end-date') required String? endDate});

  ///Get Sleep Logs List
  ///@param beforeDate The date in the format yyyy-MM-ddTHH:mm:ss. Only yyyy-MM-dd is required. Either beforeDate or afterDate should be specified.
  ///@param afterDate The date in the format yyyy-MM-ddTHH:mm:ss.
  ///@param sort The sort order of entries by date asc (ascending) or desc (descending).
  ///@param offset The offset number of entries.
  ///@param limit The maximum number of entries returned (maximum;100).
  Future<chopper.Response> $12UserSleepListJsonGet(
      {String? beforeDate,
      String? afterDate,
      required String? sort,
      required int? offset,
      required int? limit}) {
    return _$12UserSleepListJsonGet(
        beforeDate: beforeDate,
        afterDate: afterDate,
        sort: sort,
        offset: offset,
        limit: limit);
  }

  ///Get Sleep Logs List
  ///@param beforeDate The date in the format yyyy-MM-ddTHH:mm:ss. Only yyyy-MM-dd is required. Either beforeDate or afterDate should be specified.
  ///@param afterDate The date in the format yyyy-MM-ddTHH:mm:ss.
  ///@param sort The sort order of entries by date asc (ascending) or desc (descending).
  ///@param offset The offset number of entries.
  ///@param limit The maximum number of entries returned (maximum;100).
  @Get(path: '/1.2/user/-/sleep/list.json')
  Future<chopper.Response> _$12UserSleepListJsonGet(
      {@Query('beforeDate') String? beforeDate,
      @Query('afterDate') String? afterDate,
      @Query('sort') required String? sort,
      @Query('offset') required int? offset,
      @Query('limit') required int? limit});

  ///Get Sleep Goal
  Future<chopper.Response> $12UserSleepGoalJsonGet() {
    return _$12UserSleepGoalJsonGet();
  }

  ///Get Sleep Goal
  @Get(path: '/1.2/user/-/sleep/goal.json')
  Future<chopper.Response> _$12UserSleepGoalJsonGet();

  ///Update Sleep Goal
  ///@param minDuration Duration of sleep goal.
  Future<chopper.Response> $12UserSleepGoalJsonPost(
      {required String? minDuration}) {
    return _$12UserSleepGoalJsonPost(minDuration: minDuration);
  }

  ///Update Sleep Goal
  ///@param minDuration Duration of sleep goal.
  @Post(path: '/1.2/user/-/sleep/goal.json', optionalBody: true)
  Future<chopper.Response> _$12UserSleepGoalJsonPost(
      {@Query('minDuration') required String? minDuration});

  ///Log Sleep
  ///@param startTime Start time includes hours and minutes in the format HH:mm.
  ///@param duration Duration in milliseconds.
  ///@param date Log entry in the format yyyy-MM-dd.
  Future<chopper.Response> $12UserSleepJsonPost(
      {required String? startTime,
      required int? duration,
      required String? date}) {
    return _$12UserSleepJsonPost(
        startTime: startTime, duration: duration, date: date);
  }

  ///Log Sleep
  ///@param startTime Start time includes hours and minutes in the format HH:mm.
  ///@param duration Duration in milliseconds.
  ///@param date Log entry in the format yyyy-MM-dd.
  @Post(path: '/1.2/user/-/sleep.json', optionalBody: true)
  Future<chopper.Response> _$12UserSleepJsonPost(
      {@Query('startTime') required String? startTime,
      @Query('duration') required int? duration,
      @Query('date') required String? date});

  ///Get a List of Subscriptions
  ///@param collection-path This is the resource of the collection to receive notifications from (foods, activities, sleep, or body). If not present, subscription will be created for all collections. If you have both all and specific collection subscriptions, you will get duplicate notifications on that collections' updates. Each subscriber can have only one subscription for a specific user's collection.
  Future<chopper.Response> $1UserCollectionPathApiSubscriptionsJsonGet(
      {required String? collectionPath}) {
    return _$1UserCollectionPathApiSubscriptionsJsonGet(
        collectionPath: collectionPath);
  }

  ///Get a List of Subscriptions
  ///@param collection-path This is the resource of the collection to receive notifications from (foods, activities, sleep, or body). If not present, subscription will be created for all collections. If you have both all and specific collection subscriptions, you will get duplicate notifications on that collections' updates. Each subscriber can have only one subscription for a specific user's collection.
  @Get(path: '/1/user/-/{collection-path}/apiSubscriptions.json')
  Future<chopper.Response> _$1UserCollectionPathApiSubscriptionsJsonGet(
      {@Path('collection-path') required String? collectionPath});

  ///Add a Subscription
  ///@param collection-path This is the resource of the collection to receive notifications from (foods, activities, sleep, or body). If not present, subscription will be created for all collections. If you have both all and specific collection subscriptions, you will get duplicate notifications on that collections' updates. Each subscriber can have only one subscription for a specific user's collection.
  ///@param subscription-id This is the unique ID of the subscription created by the API client application. Each ID must be unique across the entire set of subscribers and collections. The Fitbit servers will pass this ID back along with any notifications about the user indicated by the user parameter in the URL path.
  Future<chopper.Response>
      $1UserCollectionPathApiSubscriptionsSubscriptionIdJsonPost(
          {required String? collectionPath, required String? subscriptionId}) {
    return _$1UserCollectionPathApiSubscriptionsSubscriptionIdJsonPost(
        collectionPath: collectionPath, subscriptionId: subscriptionId);
  }

  ///Add a Subscription
  ///@param collection-path This is the resource of the collection to receive notifications from (foods, activities, sleep, or body). If not present, subscription will be created for all collections. If you have both all and specific collection subscriptions, you will get duplicate notifications on that collections' updates. Each subscriber can have only one subscription for a specific user's collection.
  ///@param subscription-id This is the unique ID of the subscription created by the API client application. Each ID must be unique across the entire set of subscribers and collections. The Fitbit servers will pass this ID back along with any notifications about the user indicated by the user parameter in the URL path.
  @Post(
      path:
          '/1/user/-/{collection-path}/apiSubscriptions/{subscription-id}.json',
      optionalBody: true)
  Future<chopper.Response>
      _$1UserCollectionPathApiSubscriptionsSubscriptionIdJsonPost(
          {@Path('collection-path') required String? collectionPath,
          @Path('subscription-id') required String? subscriptionId});

  ///Delete a Subscription
  ///@param collection-path This is the resource of the collection to receive notifications from (foods, activities, sleep, or body). If not present, subscription will be created for all collections. If you have both all and specific collection subscriptions, you will get duplicate notifications on that collections' updates. Each subscriber can have only one subscription for a specific user's collection.
  ///@param subscription-id This is the resource of the collection to receive notifications from (foods, activities, sleep, or body). If not present, subscription will be created for all collections. If you have both all and specific collection subscriptions, you will get duplicate notifications on that collections' updates. Each subscriber can have only one subscription for a specific user's collection.
  Future<chopper.Response>
      $1UserCollectionPathApiSubscriptionsSubscriptionIdJsonDelete(
          {required String? collectionPath, required String? subscriptionId}) {
    return _$1UserCollectionPathApiSubscriptionsSubscriptionIdJsonDelete(
        collectionPath: collectionPath, subscriptionId: subscriptionId);
  }

  ///Delete a Subscription
  ///@param collection-path This is the resource of the collection to receive notifications from (foods, activities, sleep, or body). If not present, subscription will be created for all collections. If you have both all and specific collection subscriptions, you will get duplicate notifications on that collections' updates. Each subscriber can have only one subscription for a specific user's collection.
  ///@param subscription-id This is the resource of the collection to receive notifications from (foods, activities, sleep, or body). If not present, subscription will be created for all collections. If you have both all and specific collection subscriptions, you will get duplicate notifications on that collections' updates. Each subscriber can have only one subscription for a specific user's collection.
  @Delete(
      path:
          '/1/user/-/{collection-path}/apiSubscriptions/{subscription-id}.json')
  Future<chopper.Response>
      _$1UserCollectionPathApiSubscriptionsSubscriptionIdJsonDelete(
          {@Path('collection-path') required String? collectionPath,
          @Path('subscription-id') required String? subscriptionId});

  ///Get Badges
  Future<chopper.Response> $1UserBadgesJsonGet() {
    return _$1UserBadgesJsonGet();
  }

  ///Get Badges
  @Get(path: '/1/user/-/badges.json')
  Future<chopper.Response> _$1UserBadgesJsonGet();

  ///Get Profile
  Future<chopper.Response> $1UserProfileJsonGet() {
    return _$1UserProfileJsonGet();
  }

  ///Get Profile
  @Get(path: '/1/user/-/profile.json')
  Future<chopper.Response> _$1UserProfileJsonGet();

  ///Update Profile
  ///@param gender The sex of the user; (MALE/FEMALE/NA).
  ///@param birthday The date of birth in the format of yyyy-MM-dd.
  ///@param height The height in the format X.XX in the unit system that corresponds to the Accept-Language header provided.
  ///@param aboutMe This is a short description of user.
  ///@param fullname The fullname of the user.
  ///@param country The country of the user's residence. This is a two-character code.
  ///@param state The US state of the user's residence. This is a two-character code if the country was or is set to US.
  ///@param city The US city of the user's residence.
  ///@param strideLengthWalking Walking stride length in the format X.XX, where it is in the unit system that corresponds to the Accept-Language header provided.
  ///@param strideLengthRunning Running stride length in the format X.XX, where it is in the unit system that corresponds to the Accept-Language header provided.
  ///@param weightUnit Default weight unit on website (which doesn't affect API); one of (en_US, en_GB, 'any' for METRIC).
  ///@param heightUnit Default height/distance unit on website (which doesn't affect API); one of (en_US, en_GB, 'any' for METRIC).
  ///@param waterUnit Default water unit on website (which doesn't affect API); one of (en_US, en_GB, 'any' for METRIC).
  ///@param glucoseUnit Default glucose unit on website (which doesn't affect API); one of (en_US, en_GB, 'any' for METRIC).
  ///@param timezone The timezone in the format 'America/Los_Angeles'.
  ///@param foodsLocale The food database locale in the format of xx.XX.
  ///@param locale The locale of the website (country/language); one of the locales, currently – (en_US, fr_FR, de_DE, es_ES, en_GB, en_AU, en_NZ, ja_JP).
  ///@param localeLang The Language in the format 'xx'. You should specify either locale or both - localeLang and localeCountry (locale is higher priority).
  ///@param localeCountry The Country in the format 'xx'. You should specify either locale or both - localeLang and localeCountry (locale is higher priority).
  ///@param startDayOfWeek The Start day of the week, meaning what day the week should start on. Either Sunday or Monday.
  Future<chopper.Response> $1UserProfileJsonPost(
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
    return _$1UserProfileJsonPost(
        gender: gender,
        birthday: birthday,
        height: height,
        aboutMe: aboutMe,
        fullname: fullname,
        country: country,
        state: state,
        city: city,
        strideLengthWalking: strideLengthWalking,
        strideLengthRunning: strideLengthRunning,
        weightUnit: weightUnit,
        heightUnit: heightUnit,
        waterUnit: waterUnit,
        glucoseUnit: glucoseUnit,
        timezone: timezone,
        foodsLocale: foodsLocale,
        locale: locale,
        localeLang: localeLang,
        localeCountry: localeCountry,
        startDayOfWeek: startDayOfWeek);
  }

  ///Update Profile
  ///@param gender The sex of the user; (MALE/FEMALE/NA).
  ///@param birthday The date of birth in the format of yyyy-MM-dd.
  ///@param height The height in the format X.XX in the unit system that corresponds to the Accept-Language header provided.
  ///@param aboutMe This is a short description of user.
  ///@param fullname The fullname of the user.
  ///@param country The country of the user's residence. This is a two-character code.
  ///@param state The US state of the user's residence. This is a two-character code if the country was or is set to US.
  ///@param city The US city of the user's residence.
  ///@param strideLengthWalking Walking stride length in the format X.XX, where it is in the unit system that corresponds to the Accept-Language header provided.
  ///@param strideLengthRunning Running stride length in the format X.XX, where it is in the unit system that corresponds to the Accept-Language header provided.
  ///@param weightUnit Default weight unit on website (which doesn't affect API); one of (en_US, en_GB, 'any' for METRIC).
  ///@param heightUnit Default height/distance unit on website (which doesn't affect API); one of (en_US, en_GB, 'any' for METRIC).
  ///@param waterUnit Default water unit on website (which doesn't affect API); one of (en_US, en_GB, 'any' for METRIC).
  ///@param glucoseUnit Default glucose unit on website (which doesn't affect API); one of (en_US, en_GB, 'any' for METRIC).
  ///@param timezone The timezone in the format 'America/Los_Angeles'.
  ///@param foodsLocale The food database locale in the format of xx.XX.
  ///@param locale The locale of the website (country/language); one of the locales, currently – (en_US, fr_FR, de_DE, es_ES, en_GB, en_AU, en_NZ, ja_JP).
  ///@param localeLang The Language in the format 'xx'. You should specify either locale or both - localeLang and localeCountry (locale is higher priority).
  ///@param localeCountry The Country in the format 'xx'. You should specify either locale or both - localeLang and localeCountry (locale is higher priority).
  ///@param startDayOfWeek The Start day of the week, meaning what day the week should start on. Either Sunday or Monday.
  @Post(path: '/1/user/-/profile.json', optionalBody: true)
  Future<chopper.Response> _$1UserProfileJsonPost(
      {@Field('gender') String? gender,
      @Field('birthday') String? birthday,
      @Field('height') String? height,
      @Field('aboutMe') String? aboutMe,
      @Field('fullname') String? fullname,
      @Field('country') String? country,
      @Field('state') String? state,
      @Field('city') String? city,
      @Field('strideLengthWalking') String? strideLengthWalking,
      @Field('strideLengthRunning') String? strideLengthRunning,
      @Field('weightUnit') String? weightUnit,
      @Field('heightUnit') String? heightUnit,
      @Field('waterUnit') String? waterUnit,
      @Field('glucoseUnit') String? glucoseUnit,
      @Field('timezone') String? timezone,
      @Field('foodsLocale') String? foodsLocale,
      @Field('locale') String? locale,
      @Field('localeLang') String? localeLang,
      @Field('localeCountry') String? localeCountry,
      @Field('startDayOfWeek') String? startDayOfWeek});
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  chopper.Response<ResultType> convertResponse<ResultType, Item>(
      chopper.Response response) {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);
