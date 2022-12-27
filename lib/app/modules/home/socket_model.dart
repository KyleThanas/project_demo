class Socket {
  int? data;
  Header? header;
  String? type;

  Socket({this.data, this.header, this.type});

  Socket.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    header = json['header'] != null ? Header?.fromJson(json['header']) : null;
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['data'] = data;
    if (header != null) {
      data['header'] = header?.toJson();
    }
    data['type'] = type;
    return data;
  }
}

class Header {
  int? dataUpdateTime;
  int? now;
  bool? vehicleConnected;

  Header({this.dataUpdateTime, this.now, this.vehicleConnected});

  Header.fromJson(Map<String, dynamic> json) {
    dataUpdateTime = json['data_update_time'];
    now = json['now'];
    vehicleConnected = json['vehicle_connected'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['data_update_time'] = dataUpdateTime;
    data['now'] = now;
    data['vehicle_connected'] = vehicleConnected;
    return data;
  }
}
