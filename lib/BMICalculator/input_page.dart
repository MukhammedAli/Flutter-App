import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        backgroundColor: const Color(0xFF0A0E21),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(
                    () {
                      updateColor(1);
                    },
                  );
                },
                child: ReusableCard(
                  color: maleCardColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    updateColor(2);
                  });
                },
                child: ReusableCard(
                  color: femaleCardColor,
                  cardChild: IconContent(
                      icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                ),
              ),
            ),
          ])),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: activeCardColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              height: 200.0,
              width: double.infinity,
            ),
          ),
          Expanded(
              child: Row(children: <Widget>[
            Expanded(
              child: ReusableCard(
                color: activeCardColor,
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: activeCardColor,
              ),
            ),
          ])),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }
    if (gender == 2) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }
}
