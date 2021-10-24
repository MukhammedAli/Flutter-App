import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
              child: ReusableCard(
                color: const Color(0xFF1D1E33),
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: const Color(0xFF1D1E33),
              ),
            ),
          ])),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: const Color(0xFF1D1E33),
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
                color: const Color(0xFF1D1E33),
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: const Color(0xFF1D1E33),
              ),
            ),
          ])),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color});

  Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 200.0,
      width: 170.0,
    );
  }
}
