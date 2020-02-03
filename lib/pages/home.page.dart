import "package:flutter/material.dart";
import 'package:ui_test/components/Drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter UI"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Icon(
                  Icons.pie_chart_outlined,
                  color: Colors.white,
                  size: 100,
                ),
              ),
              decoration: BoxDecoration(color: Colors.blue.shade200),
            ),
            ListTile(
              onTap: () => Navigator.pushNamed(context, "/list"),
              leading: Icon(Icons.list),
              title: Text("Variety List"),
              subtitle: Text("A basic demonstration of lists"),
            ),
            ListTile(
              onTap: () => Navigator.pushNamed(context, "/form"),
              leading: Icon(Icons.pages),
              title: Text("Registration Form"),
              subtitle: Text("An implementation of forms"),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Text("Flutter Demo"),
        ),
      ),
    );
  }
}
