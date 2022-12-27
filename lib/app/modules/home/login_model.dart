class Login {
  String? username;
  String? password;
  int? code;
  bool? isLogin;
  List<String>? agree;

  Login({this.username, this.password, this.code, this.isLogin, this.agree});

  Login.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
    code = json['code'];
    isLogin = json['isLogin'];
    agree = json['agree'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['username'] = username;
    data['password'] = password;
    data['code'] = code;
    data['isLogin'] = isLogin;
    data['agree'] = agree;
    return data;
  }
}
