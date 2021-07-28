class Address {
  String? id;
  String? userName;
  String? phone;
  String? addressTitle1;
  String? addressTitle2;

  Address({this.id, this.userName, this.phone, this.addressTitle1,
      this.addressTitle2});

  Address.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['user_name'];
    phone = json['phone'];
    addressTitle1 = json['addressTitle1'];
    addressTitle2 = json['addressTitle2'];
  }

// Map<String, dynamic> toJson() {
//   final Map<String, dynamic> data = new Map<String, dynamic>();
//   data['id'] = this.id;
//   data['name'] = this.name;
//   data['image'] = this.image;
//   return data;
// }
}
