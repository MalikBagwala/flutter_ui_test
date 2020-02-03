import "package:flutter/material.dart";
import 'package:ui_test/components/atoms/VTextField.dart';

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Form"),
      ),
      body: Container(
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              FormField(
                builder: (builder) {
                  print(builder.value);
                  return TextField();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
