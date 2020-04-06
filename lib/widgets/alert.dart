import 'package:flutter/material.dart';

class Alert {
  BuildContext context;

  Alert({this.context});

  void show(String title, String msg) {
    AlertDialog messageBox = AlertDialog(
      title: Text(title),
      content: Text(msg),
      actions: [
        FlatButton(
          child: Text("OK"),
          onPressed: () {},
        )
      ],
    );

    showDialog(
      context: this.context,
      builder: (BuildContext context) {
        return messageBox;
      },
    );
  }
}
