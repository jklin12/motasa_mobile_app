// To parse this JSON data, do
//
//     final detailDoModel = detailDoModelFromJson(jsonString);

import 'dart:convert';

DetailDoModel detailDoModelFromJson(String str) => DetailDoModel.fromJson(json.decode(str));

String detailDoModelToJson(DetailDoModel data) => json.encode(data.toJson());

class DetailDoModel {
    String? message;
    DataDoDetail? data;

    DetailDoModel({
        this.message,
        this.data,
    });

    factory DetailDoModel.fromJson(Map<String, dynamic> json) => DetailDoModel(
        message: json["message"],
        data: json["data"] == null ? null : DataDoDetail.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "data": data?.toJson(),
    };
}

class DataDoDetail {
    int? doId;
    String? doNumber;
    String? doDate;
    String? orderNumber;
    String? orderDate;
    String? custName;
    String? custPhone;
    String? custEmail;
    String? custAddress;
    String? doNotes;
    String? doFrom;
    String? doFromDetail;
    String? doTo;
    String? doToDetail;
    dynamic doPrice;
    String? courierName;
    String? courierServiceName;
    String? shippingDuration;
    String? shippingPrice;
    String? doStatus;
    int? createdBy;
    int? updatedBy;
    DateTime? createdAt;
    DateTime? updatedAt;
    List<Product>? products;
    List<History>? history;
    Owner? owner;

    DataDoDetail({
        this.doId,
        this.doNumber,
        this.doDate,
        this.orderNumber,
        this.orderDate,
        this.custName,
        this.custPhone,
        this.custEmail,
        this.custAddress,
        this.doNotes,
        this.doFrom,
        this.doFromDetail,
        this.doTo,
        this.doToDetail,
        this.doPrice,
        this.courierName,
        this.courierServiceName,
        this.shippingDuration,
        this.shippingPrice,
        this.doStatus,
        this.createdBy,
        this.updatedBy,
        this.createdAt,
        this.updatedAt,
        this.products,
        this.history,
        this.owner,
    });

    factory DataDoDetail.fromJson(Map<String, dynamic> json) => DataDoDetail(
        doId: json["do_id"],
        doNumber: json["do_number"],
        doDate: json["do_date"],
        orderNumber: json["order_number"],
        orderDate: json["order_date"],
        custName: json["cust_name"],
        custPhone: json["cust_phone"],
        custEmail: json["cust_email"],
        custAddress: json["cust_address"],
        doNotes: json["do_notes"],
        doFrom: json["do_from"],
        doFromDetail: json["do_from_detail"],
        doTo: json["do_to"],
        doToDetail: json["do_to_detail"],
        doPrice: json["do_price"],
        courierName: json["courier_name"],
        courierServiceName: json["courier_service_name"],
        shippingDuration: json["shipping_duration"],
        shippingPrice: json["shipping_price"],
        doStatus: json["do_status"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        products: json["products"] == null ? [] : List<Product>.from(json["products"]!.map((x) => Product.fromJson(x))),
        history: json["history"] == null ? [] : List<History>.from(json["history"]!.map((x) => History.fromJson(x))),
        owner: json["owner"] == null ? null : Owner.fromJson(json["owner"]),
    );

    Map<String, dynamic> toJson() => {
        "do_id": doId,
        "do_number": doNumber,
        "do_date": doDate,
        "order_number": orderNumber,
        "order_date": orderDate,
        "cust_name": custName,
        "cust_phone": custPhone,
        "cust_email": custEmail,
        "cust_address": custAddress,
        "do_notes": doNotes,
        "do_from": doFrom,
        "do_from_detail": doFromDetail,
        "do_to": doTo,
        "do_to_detail": doToDetail,
        "do_price": doPrice,
        "courier_name": courierName,
        "courier_service_name": courierServiceName,
        "shipping_duration": shippingDuration,
        "shipping_price": shippingPrice,
        "do_status": doStatus,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "products": products == null ? [] : List<dynamic>.from(products!.map((x) => x.toJson())),
        "history": history == null ? [] : List<dynamic>.from(history!.map((x) => x.toJson())),
        "owner": owner?.toJson(),
    };
}

class History {
    int? historyId;
    int? doId;
    String? doStatus;
    dynamic historyNotes;
    int? createdBy;
    int? updatedBy;
    DateTime? createdAt;
    DateTime? updatedAt;
    Owner? owner;

    History({
        this.historyId,
        this.doId,
        this.doStatus,
        this.historyNotes,
        this.createdBy,
        this.updatedBy,
        this.createdAt,
        this.updatedAt,
        this.owner,
    });

    factory History.fromJson(Map<String, dynamic> json) => History(
        historyId: json["history_id"],
        doId: json["do_id"],
        doStatus: json["do_status"],
        historyNotes: json["history_notes"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        owner: json["owner"] == null ? null : Owner.fromJson(json["owner"]),
    );

    Map<String, dynamic> toJson() => {
        "history_id": historyId,
        "do_id": doId,
        "do_status": doStatus,
        "history_notes": historyNotes,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "owner": owner?.toJson(),
    };
}

class Owner {
    int? id;
    String? name;
    String? email;
    DateTime? emailVerifiedAt;
    DateTime? createdAt;
    DateTime? updatedAt;

    Owner({
        this.id,
        this.name,
        this.email,
        this.emailVerifiedAt,
        this.createdAt,
        this.updatedAt,
    });

    factory Owner.fromJson(Map<String, dynamic> json) => Owner(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"] == null ? null : DateTime.parse(json["email_verified_at"]),
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "email_verified_at": emailVerifiedAt?.toIso8601String(),
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}

class Product {
    int? productId;
    int? doId;
    String? productName;
    int? productQty;
    String? productPrice;

    Product({
        this.productId,
        this.doId,
        this.productName,
        this.productQty,
        this.productPrice,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        productId: json["product_id"],
        doId: json["do_id"],
        productName: json["product_name"],
        productQty: json["product_qty"],
        productPrice: json["product_price"],
    );

    Map<String, dynamic> toJson() => {
        "product_id": productId,
        "do_id": doId,
        "product_name": productName,
        "product_qty": productQty,
        "product_price": productPrice,
    };
}
