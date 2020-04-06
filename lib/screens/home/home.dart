import 'package:flutter/material.dart';
import './widgets/header.dart';
import './widgets/list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff0f0f5),
        body: Container(
            // box
            padding: EdgeInsets.only(left: 24, right: 24, top: 60),
            child: Column(children: <Widget>[
              Header(),
              Expanded(flex: 1, child: IncidentsList())
            ])));
  }
}
