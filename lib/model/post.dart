import 'package:intl/intl.dart';

class Post {
  String? dataCreate;
  List<String>? tags;
  int? id;
  Data? data;

  Post({this.dataCreate, this.tags, this.id, this.data});

  Post.fromJson(Map<String, dynamic> json) {
    dataCreate = json['dataCreate'];
    tags = json['tags'].cast<String>();
    id = json['id'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dataCreate'] = this.dataCreate;
    data['tags'] = this.tags;
    data['id'] = this.id;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? dataStartDelivery;
  String? dataEndDelivery;
  String? fromCountry;
  int? progressStep;
  String? toCountry;
  String? companyName;
  String? fromCity;
  String? title;
  String? toCity;
  int? costDelivery;

  Data({
    this.dataStartDelivery,
    this.dataEndDelivery,
    this.fromCountry,
    this.progressStep,
    this.toCountry,
    this.companyName,
    this.fromCity,
    this.title,
    this.toCity,
    this.costDelivery,
  });

  Data.fromJson(Map<String, dynamic> json) {
    dataStartDelivery = json['dataStartDelivery'];
    dataEndDelivery = json['dataEndDelivery'];
    fromCountry = json['fromCountry'];
    progressStep = json['progressStep'];
    toCountry = json['toCountry'];
    companyName = json['companyName'];
    fromCity = json['fromCity'];
    title = json['title'];
    toCity = json['toCity'];
    costDelivery = json['costDelivery'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dataStartDelivery'] = this.dataStartDelivery;
    data['dataEndDelivery'] = this.dataEndDelivery;
    data['fromCountry'] = this.fromCountry;
    data['progressStep'] = this.progressStep;
    data['toCountry'] = this.toCountry;
    data['companyName'] = this.companyName;
    data['fromCity'] = this.fromCity;
    data['title'] = this.title;
    data['toCity'] = this.toCity;
    data['costDelivery'] = this.costDelivery;
    return data;
  }
}
