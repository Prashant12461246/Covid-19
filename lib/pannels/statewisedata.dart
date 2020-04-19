import 'package:flutter/material.dart';

class Statewisedata extends StatefulWidget {

  final List stateData;

  const Statewisedata({Key key, this.stateData}) : super(key: key);

  @override
  _StatewisedataState createState() => _StatewisedataState();
}

class _StatewisedataState extends State<Statewisedata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(title: Text('State Wise Data', style: TextStyle(fontWeight: FontWeight.bold),),),
          body: Container(
          child: ListView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.stateData[index+1]['state'],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Deaths:' + widget.stateData[index+1]['deaths'].toString(),
                    style:
                        TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            );
          },
          itemCount: 37,
        ),
      ),
    );
  }
}