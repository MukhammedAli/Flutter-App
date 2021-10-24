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
      body: const Center(
        child: Text('Some text'),
      ),
    );
  }
}
