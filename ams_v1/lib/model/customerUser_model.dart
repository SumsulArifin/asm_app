class UserListModel {
  List<User>? users;

  UserListModel({this.users});

  UserListModel.fromJson(Map<String, dynamic> json) {
    if (json['users'] != null) {
      users = <User>[];
      json['users'].forEach((v) {
        users!.add(new User.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.users != null) {
      data['users'] = this.users!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class User {
  int? id;
  String? userId;
  String? customerId;
  String? flatId;
  String? name;
  String? phone;
  String? nidNo;
  String? address;
  String? email;
  String? status;
  String? roleId;

  User({
    this.id,
    this.userId,
    this.customerId,
    this.flatId,
    this.name,
    this.phone,
    this.nidNo,
    this.address,
    this.email,
    this.status,
    this.roleId,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    customerId = json['customer_id'];
    flatId = json['flat_id'];
    name = json['name'];
    phone = json['phone'];
    nidNo = json['nid_no'];
    address = json['address'];
    email = json['email'];
    status = json['status'];
    roleId = json['role_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['customer_id'] = this.customerId;
    data['flat_id'] = this.flatId;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['nid_no'] = this.nidNo;
    data['address'] = this.address;
    data['email'] = this.email;
    data['status'] = this.status;
    data['role_id'] = this.roleId;
    return data;
  }
}
