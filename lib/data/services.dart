import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:machine_test/data/record.dart';

class Services{

  static const String url ='https://test.chatongo.in/testdata.json';

  static Future <Map> getRecord() async {
    // try{
      final response = await get(url);
      final Map records = jsonDecode(response.body);
      // print('$records);

      Map data = records['data'];
      return data;
    // }catch(e){
    //   return null;
    //
    // }
  }
}