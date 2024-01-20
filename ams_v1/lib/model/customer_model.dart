class CustomerListModel {
  List<Customer>? customers;

  CustomerListModel({this.customers});

  CustomerListModel.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      customers = <Customer>[];
      json['products'].forEach((v) {
        customers!.add(new Customer.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.customers != null) {
      data['products'] = this.customers!.map((v) => v.toJson()).toList();
    }
    return data;
  }


}

class Customer {
  int? id;
  String? name;
  String? address;
  String? phone;
  String? customerId;
  String? email;
  dynamic? emailVerifiedAt;
  String? status;
  String? createdAt;
  dynamic? updatedAt;

  Customer({
    this.id,
    this.name,
    this.address,
    this.phone,
    this.customerId,
    this.email,
    this.emailVerifiedAt,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  Customer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    address = json['address'];
    phone = json['phone'];
    customerId = json['customer_id'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['address'] = this.address;
    data['phone'] = this.phone;
    data['customer_id'] = this.customerId;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
