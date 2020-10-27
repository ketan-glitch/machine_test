import 'package:flutter/material.dart';
import 'package:machine_test/data/record.dart';
import 'package:machine_test/data/services.dart';

class ParseDemo extends StatefulWidget {
  ParseDemo() : super();

  @override
  _ParseDemoState createState() => _ParseDemoState();
}

class _ParseDemoState extends State<ParseDemo> {

  Map<String, dynamic> _record, recordElementsMap;
  List<dynamic> recordsElements;


  bool _loading;
  @override
  void initState() {
    super.initState();
    reqRecord();
  }

  void reqRecord() async {

    _loading = true;
    await Services.getRecord().then((records){
      _record = records;
      _loading = false;

      recordsElements = _record['Records'];

      recordElementsMap={
        "0": recordsElements[0],
        "1": recordsElements[1],
        "2": recordsElements[2],
        "3": recordsElements[3],
        "4": recordsElements[4],
        "5": recordsElements[5],
        "6": recordsElements[6],
        "7": recordsElements[7],
        "8": recordsElements[8],
        "9": recordsElements[9],
      };

      print(recordElementsMap['0']);

      // print('hello');
      // print('$recordsElements');
      // RecordElement one = new RecordElement();

      print(recordsElements[0]['title']);
      try{
        _record = recordsElements as Map<String, dynamic>;
        print(_record);
      }catch(e){
        print(e);
      }
      // _record = recordsElements as Map<String, dynamic>;
      // print(_record);
    });
  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(_loading ? 'Loading...': 'hello'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index){
              // for (int i =index; i<=index; i++) {
              //   rec = recordsElements[i];
              // }
              // Record record = _record[index];
              Data rec = _record[index];
              return ListTile(
                title: Text('rec'),
                // subtitle: Text(rec.shortDescription),
              );
            },
        ),
      ),
    );
  }
}