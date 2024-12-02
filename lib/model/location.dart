class Location {
  Location({
    required this.statusCode,
    required this.success,
    required this.messages,
    required this.data,
  });
  late final int statusCode;
  late final bool success;
  late final List<String> messages;
  late final List<Data> data;

  Location.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    success = json['success'];
    messages = List.castFrom<dynamic, String>(json['messages']);
    data = List.from(json['data']).map((e) => Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['statusCode'] = statusCode;
    data['success'] = success;
    data['messages'] = messages;
    data['data'] = data.map((e) => e.toJson()).toList();
    return data;
  }
}

class Data {
  Data({
    required this.id,
    required this.location,
  });
  late final int id;
  late final String location;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    location = json['location'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['location'] = location;
    return data;
  }
}
