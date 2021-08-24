import 'package:flutter/material.dart';
class HistoryPage extends StatefulWidget {
  static final String route = 'history_page';
  const HistoryPage({ Key? key }) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Histories"),
        ),
        body: ListView.builder(itemBuilder: (context, index){
          return Container();
        }),
      ),
    );
  }
}