// class HomeModel
// {
//   late int status;
//   late String message;
//   late List <HomeDataModel> data = [];
//
//   HomeModel.fromJson(Map<String,dynamic>json)
//   {
//     status = json['status'];
//     json['data'].forEach((element)
//     {
//       data.add(element);
//     }
//     );
//   }
// }
//
// class HomeDataModel
// {
//   late int id;
//   late String phone;
//   late String name;
//   late int age;
//   late int is_lost;
//   late String image;
//   late String address;
//   late String birth_certificate;
//
//
//   HomeDataModel.fromjson (Map<String,dynamic>json)
//   {
//     id = json['id'];
//     phone = json['phone'];
//     name = json['name'];
//     age = json['age'];
//     is_lost = json['is_lost'];
//     image = json['image'];
//     address = json['address'];
//     birth_certificate = json['birth_certificate'];
//
//   }
// }

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