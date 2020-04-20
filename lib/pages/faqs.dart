import 'package:flutter/material.dart';
import 'package:ui_intern/datasource.dart';

class FAQPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FAQs"),
      ),
      body: ListView.builder(
        itemCount: DataSource.questionAnswers.length,
        itemBuilder: (context,index){
        
        return ExpansionTile(title: Text(DataSource.questionAnswers[index]['question'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
        children: <Widget>[
          Text(DataSource.questionAnswers[index]['answer'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14.0),),
        ],);
      }),
    );
  }
}