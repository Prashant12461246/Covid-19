import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('About Us'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              width: double.infinity,
              child: Text(
                'Devlopers',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.red[100],
                  borderRadius: new BorderRadius.circular(10)),
              width: double.infinity,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      'Prashant Vaddoriya',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Follow Us On:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      IconButton(
                          icon: FaIcon(FontAwesomeIcons.instagram),
                          onPressed: () {
                            launch('http://www.instagram.com');
                          }),
                      IconButton(
                          icon: FaIcon(FontAwesomeIcons.twitter),
                          onPressed: () {
                            launch('http://www.instagram.com');
                          }),
                      IconButton(
                          icon: FaIcon(FontAwesomeIcons.github),
                          onPressed: () {
                            launch('http://www.instagram.com');
                          }),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 100,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.red[100],
                borderRadius: new BorderRadius.circular(10),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      'Ujas Patel',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Follow Us On:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      IconButton(
                          icon: FaIcon(FontAwesomeIcons.instagram),
                          onPressed: () {
                            launch('http://www.instagram.com');
                          }),
                      IconButton(
                          icon: FaIcon(FontAwesomeIcons.twitter),
                          onPressed: () {
                            launch('http://www.instagram.com');
                          }),
                      IconButton(
                          icon: FaIcon(FontAwesomeIcons.github),
                          onPressed: () {
                            launch('http://www.instagram.com');
                          }),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 100),
              child: FloatingActionButton.extended(
                  icon: FaIcon(FontAwesomeIcons.github),
                  backgroundColor: Colors.black,
                  onPressed: null,
                  label: Text('Contribute On GitHub')),
            )
          ],
        ));
  }
}
