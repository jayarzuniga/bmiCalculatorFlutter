import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: const Color(0xFF0A0E21),
            appBarTheme: const AppBarTheme(
              color: Color(0xFF0A0E21),
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
      ),
      home: InputPage(),
    );
  }
}



