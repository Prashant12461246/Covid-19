import 'package:flutter/material.dart';

class WorldwidePannel extends StatelessWidget {

  final Map worldData;

  const WorldwidePannel({Key key, this.worldData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2
        ),
        children: <Widget>[
          StatusPannel(
            title: "CONFIRMED",
            panelColor: Colors.red[100],
            textColor: Colors.red,
            count: worldData["statewise"][0]["confirmed"],
          ),
          StatusPannel(
            title: "ACTIVE",
            panelColor: Colors.blue[100],
            textColor: Colors.blue,
            count: worldData["statewise"][0]['active'],
          ),
          StatusPannel(
            title: "RECOVERED",
            panelColor: Colors.green[100],
            textColor: Colors.green,
            count: worldData["statewise"][0]['recovered'],
          ),
          StatusPannel(
            title: "DEATHS",
            panelColor: Colors.grey[100],
            textColor: Colors.grey,
            count: worldData["statewise"][0]['deaths'],
          ),
        ],
      ),
    );
  }
}

class StatusPannel extends StatelessWidget {

  final Color panelColor;
  final Color textColor;
  final String title;
  final String count;

  const StatusPannel({Key key, this.panelColor, this.textColor, this.title, this.count}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(10),
      height: 80,
      color: panelColor,
      width: width/2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: textColor),),
          Text(count,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: textColor),),
        ],
      ),
    );

  }
}