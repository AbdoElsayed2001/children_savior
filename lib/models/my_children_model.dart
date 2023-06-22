class ChildrenResponse {
  int status;
  String message;
  List<ChildModel> data;

  ChildrenResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory ChildrenResponse.fromJson(Map<String, dynamic> json) {
    var list = json['data'] as List<dynamic>;
    List<ChildModel> children = list.map((e) => ChildModel.fromJson(e)).toList();

    return ChildrenResponse(
      status: json['status'],
      message: json['message'],
      data: children,
    );
  }
}

class ChildModel {
  int id;
  String name;
  String phone;
  String image;
  String birthCertificate;
  String address;
  int age;
  int isLost;

  ChildModel({
    required this.id,
    required this.name,
    required this.phone,
    required this.image,
    required this.birthCertificate,
    required this.address,
    required this.age,
    required this.isLost,
  });

  factory ChildModel.fromJson(Map<String, dynamic> json) {
    return ChildModel(
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
}