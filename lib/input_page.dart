import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';

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
  int height = 180;

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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child:
                    ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = GenderType.male;
                        });
                      },
                      colour: selectedGender == GenderType.male ? kContainerColor : kInactiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',),
                    ),
                  ),
                    Expanded(
                    child: ReusableCard(
                        onPress: () {
                          setState(() {
                            selectedGender = GenderType.female;
                          });
                        },
                        colour: selectedGender == GenderType.female ? kContainerColor : kInactiveCardColor,
                        cardChild: IconContent(
                            icon: FontAwesomeIcons.venus,
                            label: 'FEMALE'),
                    ),
                  ),
                ],
              ),
            ),
              Expanded(
              child: ReusableCard(
                  colour: kContainerColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Height',
                        style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                              height.toString(),
                              style: kNumberLabelTextStyle,
                          ),
                          Text(
                              'cm',
                              style: kLabelTextStyle,
                          ),
                        ],
                      ),
                      Slider(
                          value: height.toDouble(),
                          min: 120.00,
                          max: 250.00,
                          activeColor: Color(0xFFEB1555),
                          inactiveColor: Color(0xFF8D8E98),
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                         )
                    ],
                  ),
              ),
            ),
             Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(colour: kContainerColor),
                  ),
                   Expanded(
                    child: ReusableCard(colour: kContainerColor),
                  ),
                ],

              ),
            ),
            Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          ],
        ),
    );
  }
}

