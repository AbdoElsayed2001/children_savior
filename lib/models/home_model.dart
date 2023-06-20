/// status : 1
/// message : "list of children"
/// data : [{"id":3,"name":"osman amgad","phone":"0100591695","image":"https://kids-saviour.megaa-soft.com/uploads/kids/images/168434604448469.jpg","birth_certificate":"https://kids-saviour.megaa-soft.com/uploads/kids/birth_certificates/168434604470077.png","address":"alex","age":12,"is_lost":1}]

class HomeModel {
  HomeModel({
      this.status, 
      this.message, 
      this.data,});

  HomeModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }
  num? status;
  String? message;
  List<Data>? data;
HomeModel copyWith({  num? status,
  String? message,
  List<Data>? data,
}) => HomeModel(  status: status ?? this.status,
  message: message ?? this.message,
  data: data ?? this.data,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 3
/// name : "osman amgad"
/// phone : "0100591695"
/// image : "https://kids-saviour.megaa-soft.com/uploads/kids/images/168434604448469.jpg"
/// birth_certificate : "https://kids-saviour.megaa-soft.com/uploads/kids/birth_certificates/168434604470077.png"
/// address : "alex"
/// age : 12
/// is_lost : 1

class Data {
  Data({
      this.id, 
      this.name, 
      this.phone, 
      this.image, 
      this.birthCertificate, 
      this.address, 
      this.age, 
      this.isLost,});

  Data.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    image = json['image'];
    birthCertificate = json['birth_certificate'];
    address = json['address'];
    age = json['age'];
    isLost = json['is_lost'];
  }
  num? id;
  String? name;
  String? phone;
  String? image;
  String? birthCertificate;
  String? address;
  num? age;
  num? isLost;
Data copyWith({  num? id,
  String? name,
  String? phone,
  String? image,
  String? birthCertificate,
  String? address,
  num? age,
  num? isLost,
}) => Data(  id: id ?? this.id,
  name: name ?? this.name,
  phone: phone ?? this.phone,
  image: image ?? this.image,
  birthCertificate: birthCertificate ?? this.birthCertificate,
  address: address ?? this.address,
  age: age ?? this.age,
  isLost: isLost ?? this.isLost,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['phone'] = phone;
    map['image'] = image;
    map['birth_certificate'] = birthCertificate;
    map['address'] = address;
    map['age'] = age;
    map['is_lost'] = isLost;
    return map;
  }

}