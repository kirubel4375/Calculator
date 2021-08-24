import 'package:calculator/Reusables/Path_painter.dart';
import 'package:calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorPage extends StatefulWidget {
  static final String route = 'calc_page';
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: ClipRRect(
        child: CustomPaint(
          painter: MyPainter(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        onChanged: (String value){
                          // Provider.of(context)
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: "Write here"
                        ),
                      ),
                    ),
                    kSpaceHeight,
                    Row(
                      children: [
                        Text("Result"),
                        SizedBox(
                          width: 40,
                        ),
                        Text("0"),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
