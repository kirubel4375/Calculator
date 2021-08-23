import 'package:flutter/material.dart';
class CalculatorPage extends StatefulWidget {
  static final String route = 'calc_page';
  const CalculatorPage({ Key? key }) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator"),),
    );
  }
}