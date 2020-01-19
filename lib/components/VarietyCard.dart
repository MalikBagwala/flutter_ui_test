import "package:flutter/material.dart";

class VarietyCard extends StatelessWidget {
  final Widget leading;
  final Widget title;
  final Widget subtitle;
  final Function onPressed;
  final Map data;
  VarietyCard(
      {this.leading, this.title, this.subtitle, this.onPressed, this.data});

  void _handlePressed() {
    return this.onPressed(this.data);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: this.leading,
              title: this.title,
              subtitle: this.subtitle,
            ),
            ButtonBar(
              children: <Widget>[
                MaterialButton(
                  color: Colors.blueGrey.shade900,
                  child: Text("Hey"),
                  onPressed: _handlePressed,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
