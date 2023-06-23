class Account {
  int status;
  String message;
  AccountData data;

  Account({required this.status, required this.message, required this.data});

  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(
      status: json['status'],
      message: json['message'],
      data: AccountData.fromJson(json['data']),
    );
  }
}

class AccountData {
  int id;
  String name;
  String phone;
  String email;
  int status;
  String image;
  String address;
  String accessToken;

  AccountData({
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
    required this.status,
    required this.image,
    required this.address,
    required this.accessToken,
  });

  factory AccountData.fromJson(Map<String, dynamic> json) {
    return AccountData(
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