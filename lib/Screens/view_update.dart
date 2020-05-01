import 'package:flutter/material.dart';
import 'package:stocktracker/constants.dart';
import 'package:stocktracker/reusable_card.dart';
import 'update_page.dart';

class ViewUpdate extends StatefulWidget {
  @override
  _ViewUpdateState createState() => _ViewUpdateState();
}

class _ViewUpdateState extends State<ViewUpdate> {
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
                  borderRadius: BorderRadius.all(Radius.circular(60.0)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ReusableCard(
                      colour: Color(0xFF2B2929),
                      cardChild: Padding(
                        padding: EdgeInsets.all(30),
                        child: Text(
                          'View Stocks',
                          style: kHomeButton,
                        ),
                      ),
                    ),
                    ReusableCard(
                      onPress: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return UpdatePage();
                        }));
                      },
                      colour: Color(0xFF2B2929),
                      cardChild: Padding(
                        padding: EdgeInsets.all(30),
                        child: Text(
                          'Update',
                          style: kHomeButton,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 120.0,
            )
          ],
        ),
      ),
    );
  }
}
