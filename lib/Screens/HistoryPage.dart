import 'package:calculator/Src/Functions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HistoryPage extends StatefulWidget {
  static final String route = 'history_page';
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    int length = Provider.of<SomeFunctions>(context).pastExpressions.length;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Histories"),
        ),
        body: ListView.builder(
          itemCount: length,
          itemBuilder: (context, index) {
            List _pastList =
                Provider.of<SomeFunctions>(context).pastExpressions;
            return ListTile(
              title: Text(_pastList[index]),
            );
          },
        ),
        floatingActionButton: FloatingActionButton.extended(
        onPressed: Provider.of<SomeFunctions>(context).clearList, 
        label: Text("Clear"),
        ),
      ),
    );
  }
}
