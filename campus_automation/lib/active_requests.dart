import 'dart:convert';
import 'package:flutter/material.dart';
import 'queries.dart';
import 'package:http/http.dart' as http;
/*

 */

class Active_Requests extends StatefulWidget {
  static String tag = 'active_requests';
  @override
  _ActiveRequestsState createState() => _ActiveRequestsState();
}

class  _ActiveRequestsState  extends State<Active_Requests> {
  List<query> _allqueries = List<query>.empty();
  Future<List<query>> fetchqueries() async {
    var url = 'http://localhost:8080';
    var response  = await http.get(Uri.parse(url));
    var queries = List<query>.empty();
    if(response.statusCode == 200){
      var querieslist = json.decode(response.body);
      for(var q in querieslist){
        queries.add(query.fromJson(q));
      }
    }
    return queries;
  }
@override
void initState(){
  fetchqueries().then((value){
    setState(() {
      _allqueries.addAll(value);
    });
  });
  super.initState();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // body: MyCardWidget(),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Requests'),
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFFFFFFF),
      body:Padding(
        padding: EdgeInsets.fromLTRB(10.0,0,10.0,0),
    child: ListView(
    children: <Widget>[
    Padding(
    padding: EdgeInsets.only(bottom: 5.0, top: 2.0,left:15),
    ),
    SizedBox(height: 20.0),
    Text(
    "Previous Requests",
    style: TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.w800,
    ),
    maxLines: 2,
    ),
    SizedBox(height: 20.0),
      Divider(
          color: Colors.black
      ),
    ListView.builder(
    shrinkWrap: true,
    primary: false,
    physics: NeverScrollableScrollPhysics(),
    itemCount: queries == null?0:queries.length,
    itemBuilder: (BuildContext context, int index) {
    Map comment = queries[index];
    return ListTile(
    onTap: () {},
    title: Text(
      "Request: ${index+1}",
      style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,),    ),
    subtitle: Column(
    children: <Widget>[
      Row(
        children: <Widget>[
          Text(
            "Status: still in progress",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,            ),
          ),
        ],
      ),
      Row(
        children: <Widget>[
          Text(
            //"${comment["comment"]}",
            "Date: 21:02:2022",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,            ),
          ),
          SizedBox(width: 20.0),
        ],

      ),
      Row(
        children: <Widget>[
          Text(
            //"${comment["comment"]}",
            "Time: 21:02",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,            ),
          ),
          SizedBox(width: 20.0),
        ],

      ),
      SizedBox(height: 20.0,width: 20.0),
    ],
    ),
    );
    },
    ),

    ],
    ),
    ),
    );
  }
}

