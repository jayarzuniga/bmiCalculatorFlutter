import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const containerColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('BMI CALCULATOR'),
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child:
                    ReusableCard(
                      colour: containerColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',),
                    ),
                  ),
                    Expanded(
                    child: ReusableCard(
                        colour: containerColor,
                        cardChild: IconContent(
                            icon: FontAwesomeIcons.venus,
                            label: 'FEMALE'),
                    ),
                  ),
                ],
              ),
            ),
              Expanded(
              child: ReusableCard(colour: containerColor),
            ),
             Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(colour: containerColor),
                  ),
                   Expanded(
                    child: ReusableCard(colour: containerColor),
                  ),
                ],

              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ),
    );
  }
}

