import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const containerColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);
enum GenderType {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  var selectedGender;

  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;
  //
  // void updateColor (GenderType selectedGender){
  //   selectedGender == GenderType.male ?
  //       maleCardColor == inactiveCardColor ?
  //         (maleCardColor = containerColor, femaleCardColor = inactiveCardColor ) : maleCardColor = inactiveCardColor
  //       : maleCardColor = inactiveCardColor;
  //
  //   selectedGender == GenderType.female ?
  //       femaleCardColor == inactiveCardColor ?
  //       (femaleCardColor = containerColor, maleCardColor = inactiveCardColor) : femaleCardColor = inactiveCardColor
  //       : femaleCardColor = inactiveCardColor;
  // }

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
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = GenderType.male;
                        });
                      },
                      child: ReusableCard(
                        colour: selectedGender == GenderType.male ? containerColor : inactiveCardColor,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE',),
                      ),
                    ),
                  ),
                    Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedGender = GenderType.female;
                        });
                      },
                      child: ReusableCard(
                          colour: selectedGender == GenderType.female ? containerColor : inactiveCardColor,
                          cardChild: IconContent(
                              icon: FontAwesomeIcons.venus,
                              label: 'FEMALE'),
                      ),
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

