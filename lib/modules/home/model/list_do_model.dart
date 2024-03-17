// To parse this JSON data, do
//
//     final listDoModel = listDoModelFromJson(jsonString);

import 'dart:convert';

ListDoModel listDoModelFromJson(String str) => ListDoModel.fromJson(json.decode(str));

String listDoModelToJson(ListDoModel data) => json.encode(data.toJson());

class ListDoModel {
    String? message;
    List<DoData>? data;

    ListDoModel({
        this.message,
        this.data,
    });

    factory ListDoModel.fromJson(Map<String, dynamic> json) => ListDoModel(
        message: json["message"],
        data: json["data"] == null ? [] : List<DoData>.from(json["data"]!.map((x) => DoData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class DoData {
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

    DoData({
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
    });

    factory DoData.fromJson(Map<String, dynamic> json) => DoData(
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
    };
}
