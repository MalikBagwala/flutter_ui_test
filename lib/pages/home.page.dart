import "package:flutter/material.dart";
import 'package:ui_test/components/VarietyCard.dart';

class HomePage extends StatelessWidget {
  final List<Map> testData = [
    {
      "id": "1",
      "name": "Thompson Seedless",
      "commodity": {"id": "1", "name": "Grapes"}
    },
    {
      "id": "2",
      "name": "Flame Seedless",
      "commodity": {"id": "1", "name": "Grapes"}
    },
    {
      "id": "3",
      "name": "Mango Boneless",
      "commodity": {"id": "2", "name": "Mango"}
    },
    {
      "id": "4",
      "name": "Thompson Seedless",
      "commodity": {"id": "1", "name": "Grapes"}
    },
    {
      "id": "5",
      "name": "Flame Seedless",
      "commodity": {"id": "1", "name": "Grapes"}
    },
    {
      "id": "6",
      "name": "Mango Boneless",
      "commodity": {"id": "2", "name": "Mango"}
    },
    {
      "id": "7",
      "name": "Thompson Seedless",
      "commodity": {"id": "1", "name": "Grapes"}
    },
    {
      "id": "8",
      "name": "Flame Seedless",
      "commodity": {"id": "1", "name": "Grapes"}
    },
    {
      "id": "9",
      "name": "Mango Boneless",
      "commodity": {"id": "2", "name": "Mango"}
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test App"),
      ),
      body: SafeArea(
        child: ListView(
          children: buildMap(),
        ),
      ),
    );
  }

  List<VarietyCard> buildMap() {
    return testData.map((test) {
      // return ListTile(
      //   leading: Icon(Icons.fastfood),
      //   title: Text(test['name']),
      //   subtitle: Text(
      //     test['commodity']['name'],
      //   ),
      //   key: Key(test['id'].toString()),
      // );
      return VarietyCard(
        title: Text(test['name']),
        leading: Icon(Icons.fastfood),
        subtitle: Text(test['commodity']['name']),
        data: test,
        onPressed: (data) {
          print("Button Pressed");
          print(data);
        },
      );
    }).toList();
  }
}
