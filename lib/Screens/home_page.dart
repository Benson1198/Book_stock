import 'package:flutter/material.dart';
import 'package:stocktracker/Screens/view_update.dart';
import 'package:stocktracker/reusable_card.dart';
import 'package:stocktracker/constants.dart';
import 'view_update.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue[900],
              Colors.blue[700],
              Colors.blue[500],
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 80, bottom: 80),
              child: Text(
                'Welcome',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60.0),
                      topRight: Radius.circular(60.0)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ReusableCard(
                      onPress: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ViewUpdate();
                        }));
                      },
                      colour: Color(0xFF2B2929),
                      cardChild: Padding(
                        padding: EdgeInsets.all(30),
                        child: Text(
                          'View & Update',
                          style: kHomeButton,
                        ),
                      ),
                    ),
                    ReusableCard(
                      colour: Color(0xFF2B2929),
                      cardChild: Padding(
                        padding: EdgeInsets.all(30),
                        child: Text(
                          'Add a Title',
                          style: kHomeButton,
                        ),
                      ),
                    ),
                    ReusableCard(
                      colour: Color(0xFF2B2929),
                      cardChild: Padding(
                        padding: EdgeInsets.all(30),
                        child: Text(
                          'History',
                          style: kHomeButton,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
