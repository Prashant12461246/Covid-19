import 'dart:convert';
import 'package:flutter/material.dart';

import './datasource.dart';
import './pannels/mostaffectedstates.dart';
import './pannels/worldwidepannel.dart';
import 'package:http/http.dart' as http;

//Map worldData;
//List stateData;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map worldData;
  fetchWorldWideData()async{
    
    http.Response response = await http.get('https://api.covid19india.org/data.json');
    setState(() {
     
      worldData = json.decode(response.body);

    });
  }
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
    fetchWorldWideData(); 
    fetchstateData(); 
    super.initState();     
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("COVID-19 TRACKER"),
      ),
      body: SingleChildScrollView(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100,
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            color: Colors.orange[100],
            child: Text(DataSource.quote,
              style: TextStyle(
                color: Colors.orange[800],
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("INDIA",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: primaryblack,
                    borderRadius: BorderRadius.circular(10.0),

                  ),
                  child: Text("Regional",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
              ],
            ),
          ),
          worldData == null?CircularProgressIndicator():WorldwidePannel(worldData: worldData,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text("Most affected states",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
          ),
          stateData == null?CircularProgressIndicator():MostAffectedPanel(stateData: stateData,),
        ],
      ),),
    );
  }
}