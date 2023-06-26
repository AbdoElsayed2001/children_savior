import 'dart:io';

class MyModel {
  String photo;
  int status;
  String message;
  Data data;

  MyModel({
    required this.photo,
    required this.status,
    required this.message,
    required this.data,
  });

  factory MyModel.fromJson(Map<String, dynamic> json) {
    return MyModel(
      photo: json['photo'],
      status: json['status'],
      message: json['message'],
      data: Data.fromJson(json['data']),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['data'] = this.data.toJson();
    return data;
  }
}

class Data {
  int id;
  String name;
  String phone;
  File? image;
  String birthCertificate;
  String address;
  int age;
  int isLost;

  Data({
    required this.id,
    required this.name,
    required this.phone,
    required this.image,
    required this.birthCertificate,
    required this.address,
    required this.age,
    required this.isLost,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      name: json['name'],
      phone: json['phone'],
      image: json['image'],
      birthCertificate: json['birth_certificate'],
      address: json['address'],
      age: json['age'],
      isLost: json['is_lost'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['image'] = this.image;
    data['birth_certificate'] = this.birthCertificate;
    data['address'] = this.address;
    data['age'] = this.age;
    data['is_lost'] = this.isLost;
    return data;
  }
}