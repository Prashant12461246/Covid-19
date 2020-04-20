import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get_it/get_it.dart';

class CallsAndMessagesService {
  void sendEmail(String email) => launch("mailto:$email");
}

GetIt locator = GetIt();

void setupLocator() {
  locator.registerSingleton(CallsAndMessagesService());
}

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  final CallsAndMessagesService _service = locator<CallsAndMessagesService>();

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
                'DEVELOPERS',
                textAlign: TextAlign.center,
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
                          fontSize: 20,
                        ),
                      ),
                      IconButton(
                          icon: FaIcon(FontAwesomeIcons.instagram),
                          onPressed: () {
                            launch(
                                'http://www.instagram.com/prashant_vaddoriya');
                          }),
                      IconButton(
                          icon: FaIcon(FontAwesomeIcons.twitter),
                          onPressed: () {
                            launch('http://www.instagram.com');
                          }),
                      IconButton(
                          icon: FaIcon(FontAwesomeIcons.github),
                          onPressed: () {
                            launch('http://www.github.com//prashant12461246');
                          }),
                      IconButton(
                          icon: Icon(Icons.mail),
                          onPressed: () {
                            _service.sendEmail('pvaddoriya1246@gmail.com');
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
                          fontSize: 20,
                        ),
                      ),
                      IconButton(
                          icon: Icon(FontAwesomeIcons.instagram),
                          onPressed: () {
                            launch('http://www.instagram.com/ujas.6520');
                          }),
                      IconButton(
                          icon: FaIcon(FontAwesomeIcons.twitter),
                          onPressed: () {
                            launch('http://www.twitter.com/ujaspatel17');
                          }),
                      IconButton(
                          icon: FaIcon(FontAwesomeIcons.github),
                          onPressed: () {
                            launch('http://www.github.com/ujas3279');
                          }),
                      IconButton(
                          icon: Icon(Icons.email),
                          onPressed: () {
                            _service.sendEmail('Ujas6520@gmail.com');
                          })
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
                  onPressed: () {
                    launch('http://www.github.com/prashant12461246/covid-19');
                  },
                  label: Text('Contribute On GitHub')),
            )
          ],
        ));
  }
}
