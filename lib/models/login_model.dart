class LoginModel
{
  late bool status;
  late String message;
  late UserData data;

  LoginModel.fromJson(Map<String, dynamic> json )
  {
    message = json['message'];
    status = json['status'];
    data = (json['data'] != null ? UserData.fromJson(json['data']) : null)! ;

  }
}

class UserData{
  late int id;
  late String name;
  late String email;
  late String phone;
  late String image;
  late String address;
  late String token;
  late bool status;

  UserData({
    required this.id,
    required this.email,
    required this.image,
    required this.phone,
    required this.name,
    required this.token,
    required this.status,
    required this.address,
});

  //named constructor
UserData.fromJson(Map<String, dynamic> json )
{
  id = json['id'];
  email = json['email'];
  image = json['image'];
  phone = json['phone'];
  name = json['name'];
  token = json['token'];
  status = json['status'];
  address = json['address'];

}

}