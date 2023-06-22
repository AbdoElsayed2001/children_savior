class UserResponse {
  int status;
  String message;
  UserModel data;

  UserResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) {
    return UserResponse(
      status: json['status'],
      message: json['message'],
      data: UserModel.fromJson(json['data']['user']),
    );
  }
}

class UserModel {
  int id;
  String name;
  String phone;
  String email;
  int status;
  String image;
  String address;
  String accessToken;

  UserModel({
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
    required this.status,
    required this.image,
    required this.address,
    required this.accessToken,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      phone: json['phone'],
      email: json['email'],
      status: json['status'],
      image: json['image'],
      address: json['address'],
      accessToken: json['access_token'],
    );
  }
}