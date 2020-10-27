// To parse this JSON data, do
//
//     final record = recordFromJson(jsonString);

import 'dart:convert';

Record recordFromJson(String str) => Record.fromJson(json.decode(str));

String recordToJson(Record data) => json.encode(data.toJson());

class Record {
  Record({
    this.status,
    this.message,
    this.data,
  });

  int status;
  String message;
  Data data;

  factory Record.fromJson(Map<String, dynamic> json) => Record(
    status: json["Status"],
    message: json["Message"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "Status": status,
    "Message": message,
    "data": data.toJson(),
  };
}

class Data {
  Data({
    this.totalRecords,
    this.records,
  });

  int totalRecords;
  List<RecordElement> records;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    totalRecords: json["TotalRecords"],
    records: List<RecordElement>.from(json["Records"].map((x) => RecordElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "TotalRecords": totalRecords,
    "Records": List<dynamic>.from(records.map((x) => x.toJson())),
  };
}

class RecordElement {
  RecordElement({
    this.id,
    this.title,
    this.shortDescription,
    this.collectedValue,
    this.totalValue,
    this.startDate,
    this.endDate,
    this.mainImageUrl,
  });

  int id;
  String title;
  String shortDescription;
  int collectedValue;
  int totalValue;
  String startDate;
  String endDate;
  String mainImageUrl;

  factory RecordElement.fromJson(Map<String, dynamic> json) => RecordElement(
    id: json["Id"],
    title: json["title"],
    shortDescription: json["shortDescription"],
    collectedValue: json["collectedValue"],
    totalValue: json["totalValue"],
    startDate: json["startDate"],
    endDate: json["endDate"],
    mainImageUrl: json["mainImageURL"],
  );

  Map<String, dynamic> toJson() => {
    "Id": id,
    "title": title,
    "shortDescription": shortDescription,
    "collectedValue": collectedValue,
    "totalValue": totalValue,
    "startDate": startDate,
    "endDate": endDate,
    "mainImageURL": mainImageUrl,
  };
}