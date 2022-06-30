class FitBitProfileEntity {
  User? user;

  FitBitProfileEntity({this.user});

  FitBitProfileEntity.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  String? age;
  bool? ambassador;
  String? avatar;
  String? avatar150;
  String? avatar640;
  String? averageDailySteps;
  bool? challengesBeta;
  String? clockTimeDisplayFormat;
  bool? corporate;
  bool? corporateAdmin;
  String? dateOfBirth;
  String? displayName;
  String? displayNameSetting;
  String? distanceUnit;
  String? encodedId;
  Features? features;
  String? firstName;
  String? foodsLocale;
  String? fullName;
  String? gender;
  String? glucoseUnit;
  String? height;
  String? heightUnit;
  bool? isBugReportEnabled;
  bool? isChild;
  bool? isCoach;
  String? languageLocale;
  String? lastName;
  bool? legalTermsAcceptRequired;
  String? locale;
  String? memberSince;
  bool? mfaEnabled;
  String? offsetFromUTCMillis;
  bool? sdkDeveloper;
  String? sleepTracking;
  String? startDayOfWeek;
  String? strideLengthRunning;
  String? strideLengthRunningType;
  String? strideLengthWalking;
  String? strideLengthWalkingType;
  String? swimUnit;
  String? timezone;
  List<Null>? topBadges;
  String? waterUnit;
  String? waterUnitName;
  String? weight;
  String? weightUnit;

  User(
      {this.age,
        this.ambassador,
        this.avatar,
        this.avatar150,
        this.avatar640,
        this.averageDailySteps,
        this.challengesBeta,
        this.clockTimeDisplayFormat,
        this.corporate,
        this.corporateAdmin,
        this.dateOfBirth,
        this.displayName,
        this.displayNameSetting,
        this.distanceUnit,
        this.encodedId,
        this.features,
        this.firstName,
        this.foodsLocale,
        this.fullName,
        this.gender,
        this.glucoseUnit,
        this.height,
        this.heightUnit,
        this.isBugReportEnabled,
        this.isChild,
        this.isCoach,
        this.languageLocale,
        this.lastName,
        this.legalTermsAcceptRequired,
        this.locale,
        this.memberSince,
        this.mfaEnabled,
        this.offsetFromUTCMillis,
        this.sdkDeveloper,
        this.sleepTracking,
        this.startDayOfWeek,
        this.strideLengthRunning,
        this.strideLengthRunningType,
        this.strideLengthWalking,
        this.strideLengthWalkingType,
        this.swimUnit,
        this.timezone,
        this.topBadges,
        this.waterUnit,
        this.waterUnitName,
        this.weight,
        this.weightUnit});

  User.fromJson(Map<String, dynamic> json) {
    age = json['age'].toString();
    ambassador = json['ambassador'];
    avatar = json['avatar'].toString();
    avatar150 = json['avatar150'].toString();
    avatar640 = json['avatar640'].toString();
    averageDailySteps = json['averageDailySteps'].toString();
    challengesBeta = json['challengesBeta'];
    clockTimeDisplayFormat = json['clockTimeDisplayFormat'].toString();
    corporate = json['corporate'];
    corporateAdmin = json['corporateAdmin'];
    dateOfBirth = json['dateOfBirth'].toString();
    displayName = json['displayName'].toString();
    displayNameSetting = json['displayNameSetting'].toString();
    distanceUnit = json['distanceUnit'].toString();
    encodedId = json['encodedId'].toString();
    features = json['features'] != null
        ? new Features.fromJson(json['features'])
        : null;
    firstName = json['firstName'].toString();
    foodsLocale = json['foodsLocale'].toString();
    fullName = json['fullName'].toString();
    gender = json['gender'].toString();
    glucoseUnit = json['glucoseUnit'].toString();
    height = json['height'].toString();
    heightUnit = json['heightUnit'].toString();
    isBugReportEnabled = json['isBugReportEnabled'];
    isChild = json['isChild'];
    isCoach = json['isCoach'];
    languageLocale = json['languageLocale'].toString();
    lastName = json['lastName'].toString();
    legalTermsAcceptRequired = json['legalTermsAcceptRequired'];
    locale = json['locale'].toString();
    memberSince = json['memberSince'].toString();
    mfaEnabled = json['mfaEnabled'];
    offsetFromUTCMillis = json['offsetFromUTCMillis'].toString();
    sdkDeveloper = json['sdkDeveloper'];
    sleepTracking = json['sleepTracking'].toString();
    startDayOfWeek = json['startDayOfWeek'].toString();
    strideLengthRunning = json['strideLengthRunning'].toString();
    strideLengthRunningType = json['strideLengthRunningType'].toString();
    strideLengthWalking = json['strideLengthWalking'].toString();
    strideLengthWalkingType = json['strideLengthWalkingType'].toString();
    swimUnit = json['swimUnit'].toString();
    timezone = json['timezone'].toString();
    waterUnit = json['waterUnit'].toString();
    waterUnitName = json['waterUnitName'].toString();
    weight = json['weight'].toString();
    weightUnit = json['weightUnit'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['age'] = this.age;
    data['ambassador'] = this.ambassador;
    data['avatar'] = this.avatar;
    data['avatar150'] = this.avatar150;
    data['avatar640'] = this.avatar640;
    data['averageDailySteps'] = this.averageDailySteps;
    data['challengesBeta'] = this.challengesBeta;
    data['clockTimeDisplayFormat'] = this.clockTimeDisplayFormat;
    data['corporate'] = this.corporate;
    data['corporateAdmin'] = this.corporateAdmin;
    data['dateOfBirth'] = this.dateOfBirth;
    data['displayName'] = this.displayName;
    data['displayNameSetting'] = this.displayNameSetting;
    data['distanceUnit'] = this.distanceUnit;
    data['encodedId'] = this.encodedId;
    if (this.features != null) {
      data['features'] = this.features!.toJson();
    }
    data['firstName'] = this.firstName;
    data['foodsLocale'] = this.foodsLocale;
    data['fullName'] = this.fullName;
    data['gender'] = this.gender;
    data['glucoseUnit'] = this.glucoseUnit;
    data['height'] = this.height;
    data['heightUnit'] = this.heightUnit;
    data['isBugReportEnabled'] = this.isBugReportEnabled;
    data['isChild'] = this.isChild;
    data['isCoach'] = this.isCoach;
    data['languageLocale'] = this.languageLocale;
    data['lastName'] = this.lastName;
    data['legalTermsAcceptRequired'] = this.legalTermsAcceptRequired;
    data['locale'] = this.locale;
    data['memberSince'] = this.memberSince;
    data['mfaEnabled'] = this.mfaEnabled;
    data['offsetFromUTCMillis'] = this.offsetFromUTCMillis;
    data['sdkDeveloper'] = this.sdkDeveloper;
    data['sleepTracking'] = this.sleepTracking;
    data['startDayOfWeek'] = this.startDayOfWeek;
    data['strideLengthRunning'] = this.strideLengthRunning;
    data['strideLengthRunningType'] = this.strideLengthRunningType;
    data['strideLengthWalking'] = this.strideLengthWalking;
    data['strideLengthWalkingType'] = this.strideLengthWalkingType;
    data['swimUnit'] = this.swimUnit;
    data['timezone'] = this.timezone;
    data['waterUnit'] = this.waterUnit;
    data['waterUnitName'] = this.waterUnitName;
    data['weight'] = this.weight;
    data['weightUnit'] = this.weightUnit;
    return data;
  }
}

class Features {
  bool? exerciseGoal;

  Features({this.exerciseGoal});

  Features.fromJson(Map<String, dynamic> json) {
    exerciseGoal = json['exerciseGoal'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['exerciseGoal'] = this.exerciseGoal;
    return data;
  }
}