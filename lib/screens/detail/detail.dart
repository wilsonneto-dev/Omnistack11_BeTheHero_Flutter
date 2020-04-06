import 'package:flutter/material.dart';
import './widgets/infoscard.dart';
import './widgets/buttonscard.dart';
import '../../widgets/header.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff0f0f5),
        body: Container(
            // box
            padding: EdgeInsets.only(left: 24, right: 24, top: 60),
            child: Column(
              children: <Widget>[
                Header(),
                Expanded(
                    flex: 1,
                    child: SingleChildScrollView(
                      child: Container(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Column(
                            children: <Widget>[
                              InfosCard(),
                              ButtonsCard(),
                            ],
                          )),
                    ))
              ],
            )));
  }
}
