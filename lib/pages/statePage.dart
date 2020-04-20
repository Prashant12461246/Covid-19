import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class StatePage extends StatefulWidget {
  StatePage({Key key}) : super(key: key);

  @override
  _StatePageState createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {

  List stateData;
  Map data;
  fetchstateData()async{
    
    http.Response response = await http.get('https://api.covid19india.org/data.json');
    setState(() { 
       
      data = json.decode(response.body);
      stateData=data["statewise"];
    });
  }

  @override
  void initState() {
    fetchstateData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("STATE Stats"),
      ),
      body: stateData==null?Center(child: CircularProgressIndicator(),):ListView.builder(itemBuilder: (context,index){
        return Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
          decoration: BoxDecoration(color: Colors.white,boxShadow: [
            BoxShadow(color: Colors.grey[100],blurRadius: 10,offset: Offset(0, 10)),
          ]),
          child: Row(
            children: <Widget>[
              Container(
                width: 120.0,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: <Widget>[
                    Text(stateData[index+1]['state'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
                  ],
                ),
              ),
              Expanded(child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('+' + stateData[index+1]['deltaconfirmed'],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 15.0),),
                    Text('CONFIRMED:' + stateData[index+1]['confirmed'],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 15.0),),
                    Text('ACTIVE:' + stateData[index+1]['active'],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 15.0)),
                    Text('RECOVERED:' + stateData[index+1]['recovered'],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green,fontSize: 15.0)),
                    Text('DEATHS:' + stateData[index+1]['deaths'],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[800],fontSize: 15.0)),
                  ],
                ),
              ))
            ],
          ),
        );
      
      },
      itemCount: stateData==null?0:stateData.length-1,
      ),
    );
    
  }
}