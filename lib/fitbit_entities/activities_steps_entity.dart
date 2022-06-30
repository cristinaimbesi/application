class FitBitActivitiesStepEntity {
  List<ActivitiesSteps>? activitiesSteps;

  FitBitActivitiesStepEntity({this.activitiesSteps});

  FitBitActivitiesStepEntity.fromJson(Map<String, dynamic> json) {
    if (json['activities-steps'] != null) {
      activitiesSteps = <ActivitiesSteps>[];
      json['activities-steps'].forEach((v) {
        activitiesSteps!.add(new ActivitiesSteps.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.activitiesSteps != null) {
      data['activities-steps'] =
          this.activitiesSteps!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ActivitiesSteps {
  String? dateTime;
  String? value;

  ActivitiesSteps({this.dateTime, this.value});

  ActivitiesSteps.fromJson(Map<String, dynamic> json) {
    dateTime = json['dateTime'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dateTime'] = this.dateTime;
    data['value'] = this.value;
    return data;
  }
}
