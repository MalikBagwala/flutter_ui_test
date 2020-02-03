import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:ui_test/components/VarietyCard.dart';
import 'package:ui_test/graphql/queries.dart';

class VarietyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Varieties"),
      ),
      body: Query(
        options: QueryOptions(
          documentNode: gql(kVareities),
        ),
        builder: (QueryResult result,
            {VoidCallback refetch, FetchMore fetchMore}) {
          if (result.loading) {
            return Text("Loading");
          }
          if (result.hasException) {
            return Text(result.exception.toString());
          }
          Map<String, dynamic> test = result.data;
          List<dynamic> varieties = test['allVarieties'];
          print(varieties);
          return SafeArea(
            child: ListView(
              children: buildMap(varieties),
            ),
          );
        },
      ),
    );
  }
}

List<VarietyCard> buildMap(List testData) {
  return testData.map((test) {
    // return ListTile(
    //   leading: Icon(Icons.fastfood),
    //   title: Text(test['name']),
    //   subtitle: Text(
    //     test['commodity']['name'],
    //   ),
    //   key: Key(test['id'].toString()),
    // );
    print(test['commodity']['photo']);
    return VarietyCard(
      title: Text(test['name']),
      leading: test['commodity']['photo'] != null
          ? SvgPicture.network(
              test['commodity']['photo'],
              semanticsLabel: test['name'],
              height: 20,
              width: 20,
            )
          : Icon(Icons.fastfood),
      subtitle: Text(test['commodity']['name']),
      data: test,
      onPressed: (data) {
        print("Button Pressed");
        print(data);
      },
    );
  }).toList();
}
