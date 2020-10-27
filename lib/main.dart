import 'package:flutter/material.dart';
import 'package:machine_test/data/notes.dart';
import 'package:machine_test/data/parseDemo.dart';

void main() {
  runApp(MaterialApp(
    home: ParseDemo()
  ));
}
class RecodeList extends StatefulWidget {
  @override
  _RecodeListState createState() => _RecodeListState();
}

class _RecodeListState extends State<RecodeList> {

  List<Notes> _notes = List<Notes>();


  // Future<List<Notes>> fetchNotes() async{
  //
  //   // try{
  //     Response response = await get('https://test.chatongo.in/testdata.json');
  //
  //     var notes = List<Notes>();
  //
  //     if(response.statusCode == 200){
  //       var notesJson = json.decode(response.body);
  //       for (var notesJson in notesJson['data']['TotalRecords']){
  //         notes.add(Notes.fromJson(notesJson));
  //       }
  //     }
  //     return notes;
  //     //
  //     // var notes = List();
  //     //
  //     // Map localData = jsonDecode(response.body);
  //     //
  //     //
  //     // print(localData['data']['Records'][0]['title']);
  //     //
  //     //
  //     // Map actData = localData['data'];
  //     // // print(actData);
  //     // List records = actData['Records'];
  //     // Map one = records[0];
  //     // //
  //     // String title = one['title'];
  //     // String description = one['description'];
  //     // int collectedValue = one['collectedValue'];
  //     // int totalValue = one['totalValue'];
  //     // String startDate = one['startDate'];
  //     // String endDate = one['endDate'];
  //     // String imgUrl = one['mainImageURL'];
  //     // String startDateS = startDate.toString();
  //     // String endDateS = endDate.toString();
  //     // print(startDate);
  //     // // print(endDate);
  //     // // print(title);
  //     //
  //     // // DateTime tempS = DateTime.parse(startDate);
  //     // // DateTime tempE = DateTime.parse(endDate);
  //     // //
  //     // // tempSNew = DateFormat.yMd().format(tempS);
  //     // // tempENew = DateFormat.yMd().format(tempE);
  //     //
  //     // // int range = DateTimeRange(start: tempS, end: tempE) as int;
  //     //
  //     //
  //   //
  //   // }catch(e){
  //   //   print(e);
  //   // }
  //
  // }


  // @override
  // void initState() {
  //   super.initState();
  //   fetchNotes();
  //
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Title(),
            Expanded(
              child: ListView.builder(
                  itemBuilder: (context,index){
                    String img = 'india.png';
                    return Card(
                      child: Column(
                        children: <Widget>[
                          Container(
                            height:120,
                            child: Image(image: AssetImage('assets/$img'))
                          ),
                          Row(
                            children: <Widget>[
                              Column(
                                children: [
                                  Text('Title'),
                                  Text('Description')
                                ],
                              ),
                              FloatingActionButton(
                                onPressed: (){},
                                elevation: 0,
                              ),
                            ],
                          ),
                          ColoredBox(
                            color: Colors.blue,
                            child: Container(
                              height: 120,
                              child: Column(
                                children: <Widget>[
                                  Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                      FlatButton.icon(
                                          onPressed: (){},
                                          icon: Icon(Icons.money,size: 20,),
                                          label: Text('500')
                                        ),
                                      FlatButton.icon(
                                          onPressed: (){},
                                          icon: Icon(Icons.money,size: 20,),
                                          label: Text('5000')
                                        ),
                                      Text('36')
                                    ],
                                  ),
                                  Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                            'Funded',
                                            style: TextStyle(
                                            fontSize: 20
                                            ),
                                          ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                            'Goals',
                                            style: TextStyle(
                                              fontSize: 20
                                            ),
                                          ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                            'Ends In',
                                            style: TextStyle(
                                              fontSize: 20
                                            ),
                                          ),
                                      ),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ColoredBox(
        color: Colors.black,
        child: SizedBox(
          height: 120,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                    'Record List',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
