class LoginModel
{
  late int status;
  late String message;
  late UserData data;

  LoginModel.fromJson(Map<String, dynamic> json )
  {
    message = json['message'];
    status = json['status'];
    data = (json['data']!= null ? UserData.fromJson(json['data']) : null)!;

  }
}

class UserData{
  late int id;
  late String name;
  late String email;
  late String phone;
  late var image;
  late String address;
  late String access_token;
  late int status;

//   UserData({
//     required this.id,
//     required this.email,
//     required this.image,
//     required this.phone,
//     required this.name,
//     required this.token,
//     required this.status,
//     required this.address,
// });

  //named constructor
UserData.fromJson(Map<String, dynamic> json )
{
  id = json['id'];
  email = json['email'];
  image = json['image'];
  phone = json['phone'];
  name = json['name'];
  access_token = json['access_token'];
  status = json['status'];
  address = json['address'];

}

}