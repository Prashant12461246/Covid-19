import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ui_intern/datasource.dart';
import 'package:ui_intern/pannels/worldwidepannel.dart';
import 'package:http/http.dart' as http;

Map worldData;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  fetchWorldWideData()async{
    
    http.Response response = await http.get('https://api.covid19india.org/data.json');
    setState(() {
     
      worldData = json.decode(jsonsDataString);

    });
  }

  @override
  void initState() { 
    super.initState();
    fetchWorldWideData();  
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
            child: Text("india",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
          ),
          worldData == null?CircularProgressIndicator():WorldwidePannel(worldData: worldData,)
        ],
      ),),
    );
  }
}