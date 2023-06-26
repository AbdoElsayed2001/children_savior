class ResponseModel {
  late int status;
  late String message;
  late DataModel data;

  ResponseModel({required this.status, required this.message, required this.data});

  ResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = (json['data'] != null ? DataModel.fromJson(json['data']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class DataModel {
  late String email;
  late int code;

  DataModel({required this.email, required this.code});

  DataModel.fromJson(Map<String, dynamic> json) {
    email = json['Email'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Email'] = this.email;
    data['code'] = this.code;
    return data;
  }
}