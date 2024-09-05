import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                child: Text("Your Result",
                  style: kTitleTextStyle,
                ),
              ) 
          ),
          Expanded(
              flex: 5,
            child: ReusableCard(
                colour: kContainerColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Overweight",
                      style: kResultTextStyle,
                    ),
                    Text('35.5',
                      style: kBMITextStyle,
                    ),
                    Text("Your BMI result is quite large. You should take your proper diet",
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    )
                  ],
                ),
            ),
          ),
          BottomButton(onTap: () {
            Navigator.pop(context,
              MaterialPageRoute(builder: (context) => InputPage()));
          },
              buttonTitle: "Re-Calculate")
        ],
      ),
    );
  }
}
