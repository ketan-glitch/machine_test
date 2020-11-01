import 'package:flutter/material.dart';
import 'package:machine_test/data/services.dart';

class ParseDemo extends StatefulWidget {
  ParseDemo() : super();

  @override
  _ParseDemoState createState() => _ParseDemoState();
}

class _ParseDemoState extends State<ParseDemo> {

  Map<String, dynamic> _record, recordElementsMap;
  List recordsElements;


  @override
  void initState() {
    super.initState();
    reqRecord();
  }

  void reqRecord() async {

    await Services.getRecord().then((records){
      _record = records;

      recordsElements = _record['Records'];

    });
  }
  Size displaySize(BuildContext context) {
    debugPrint('Size = ' + MediaQuery.of(context).size.toString());
    return MediaQuery.of(context).size;
  }
  double displayWidth(BuildContext context) {
    debugPrint('Width = ' + displaySize(context).width.toString());
    return displaySize(context).width;
  }
  double displayHeight(BuildContext context) {
    debugPrint('Height = ' + displaySize(context).height.toString());
    return displaySize(context).height;
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 0),
              child: ColoredBox(
                color: Colors.black,
                child: SizedBox(
                  height: displayHeight(context)*0.17,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Record List',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Expanded(
                child: ListView.builder(
                  itemCount: recordsElements.length,
                  itemBuilder: (context,index){
                    return Card(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 0),
                            height:displayHeight(context)*0.3,
                            child: Image(image: AssetImage('assets/img.jpg'))
                          ),
                          Container(
                            margin: EdgeInsets.only(top: displayHeight(context) * 0.3),
                            child: ColoredBox(
                              color: Color(0xFF3984A3),
                              child: Container(
                                height: 140,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 25),
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: <Widget>[
                                                FlatButton.icon(
                                                    onPressed: (){},
                                                    icon: Icon(
                                                      Icons.money,
                                                      size: 20,
                                                      color: Colors.white
                                                    ),
                                                    label: Text(
                                                      recordsElements[index]['collectedValue'].toString(),
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    )
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(10.0),
                                                  child: Text(
                                                    'Funded',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: <Widget>[
                                                FlatButton.icon(
                                                    onPressed: (){},
                                                    icon: Icon(
                                                      Icons.money,
                                                      size: 20,
                                                      color: Colors.white,
                                                    ),
                                                    label: Text(recordsElements[index]['totalValue'].toString(),
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 18,
                                                        color: Colors.white,
                                                      ),
                                                    )
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(10.0),
                                                  child: Text(
                                                    'Goals',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w400,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: <Widget>[
                                                Padding(
                                                  padding: const EdgeInsets.all(10.0),
                                                  child: Text('36',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(10.0),
                                                  child: Text(
                                                    'Ends In',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                RaisedButton(
                                                  onPressed: (){},
                                                  child: Text(
                                                    'PLEDGE',
                                                    style: TextStyle(
                                                      color: Color(0xFF3984A3),
                                                      fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  color: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(10.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: displayHeight(context)*0.25),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: displayWidth(context) * 0.75,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Text(
                                                recordsElements[index]['title'],
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                              Icon(
                                                Icons.favorite_rounded,
                                                color: Colors.red[600],
                                              )
                                            ],
                                          ),
                                          SizedBox(height: 25,),
                                          Text(
                                            recordsElements[index]['shortDescription'],
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100.0),
                                    ),
                                    color: Color(0xFF0A4B5D),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
                                      child: Text(
                                        '100%',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}