import 'dart:convert';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Notes {
  int id;
  String tempSNew;
  String tempENew;
  String title;
  String description;
  int collectedValue;
  int totalValue;
  DateTime startDate;
  DateTime endDate;
  String imgUrl;
  
  //
  Notes({this.title, this.description, this.collectedValue, this.totalValue, this.startDate, this.endDate, this.imgUrl});
  //
  Notes.fromJson(Map<String, dynamic> json){
      title = json['title'];
      description = json['shortDescription'];
      collectedValue = json['collectedValue'];
      totalValue = json['totalValue'];
      startDate = json['startDate'];
      endDate = json['endDate'];
      imgUrl = json['mainImageURL'];
  }

  // Notes();

}