class AccessTokenEntity {
  String? accessToken;
  int? expiresIn;
  String? refreshToken;
  String? scope;
  String? tokenType;
  String? userId;

  AccessTokenEntity(
      {this.accessToken,
        this.expiresIn,
        this.refreshToken,
        this.scope,
        this.tokenType,
        this.userId});

  AccessTokenEntity.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    expiresIn = json['expires_in'];
    refreshToken = json['refresh_token'];
    scope = json['scope'];
    tokenType = json['token_type'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_token'] = this.accessToken;
    data['expires_in'] = this.expiresIn;
    data['refresh_token'] = this.refreshToken;
    data['scope'] = this.scope;
    data['token_type'] = this.tokenType;
    data['user_id'] = this.userId;
    return data;
  }
}