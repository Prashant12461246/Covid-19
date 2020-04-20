import 'package:flutter/material.dart';
import 'package:ui_intern/datasource.dart';
import 'package:ui_intern/pages/faqs.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FAQPage()));
            },
                      child: Container(
              padding: EdgeInsets.symmetric(vertical: 12.0,horizontal: 10.0),
              margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),
              color: primaryblack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('FAQS',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18.0),),
                  Icon(Icons.arrow_forward,color: Colors.white,)
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              launch('https://pmnrf.gov.in/en/online-donation');
            },
                      child: Container(
              padding: EdgeInsets.symmetric(vertical: 12.0,horizontal: 10.0),
              margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),
              color: primaryblack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('DONATE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18.0),),
                  Icon(Icons.arrow_forward,color: Colors.white,)
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              launch('https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public/myth-busters');
            },
                      child: Container(
              padding: EdgeInsets.symmetric(vertical: 12.0,horizontal: 10.0),
              margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),
              color: primaryblack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('MYTH BUSTERS',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18.0),),
                  Icon(Icons.arrow_forward,color: Colors.white,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}