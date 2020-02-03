import 'package:flutter/material.dart';
import 'package:ui_test/pages/home.page.dart';
import 'package:ui_test/pages/registration.page.dart';
import 'package:ui_test/pages/variety-details.page.dart';
import "package:graphql_flutter/graphql_flutter.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final HttpLink httpLink =
        HttpLink(uri: "https://staging.vesatogo.com/api/v3/", headers: {
      "Authorization":
          "JWT eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VybmFtZSI6InZhaWJoYXYiLCJleHAiOjE1NzkwOTQ2MzMsIm9yaWdJYXQiOjE1NzkwOTQzMzN9.68aIBJx_yEZ1rgo-g06umFOUEMcrNgQPajNfqPHP9IU",
      "Tenant": "kisanhub"
    });
    final ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        cache: InMemoryCache(),
        link: httpLink,
      ),
    );
    return GraphQLProvider(
      client: client,
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        // darkTheme: ThemeData.dark(),
        // theme: ThemeData.dark(),
        theme: ThemeData.light(),
        home: HomePage(),
        routes: {
          "/list": (context) => VarietyList(),
          "/form": (context) => RegistrationForm()
        },
      ),
    );
  }
}
