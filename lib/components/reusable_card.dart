import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget{
  ReusableCard({required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget? cardChild;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.all(13.0),
        child: cardChild,
        margin: EdgeInsets.all(7.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}