import 'dart:convert';
import 'package:http/http.dart';


class Services{

  static const String url ='https://test.chatongo.in/testdata.json';

  static Future <Map> getRecord() async {

    try{
      final response = await get(url);
      final Map records = jsonDecode(response.body);

      Map data = records['data'];
      return data;
    }catch(e){
      print(e);
    }
  }
}