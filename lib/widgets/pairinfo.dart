import 'package:flutter/material.dart';

class PairInfo extends StatelessWidget {
  final bool withMargin;
  final String label;
  final String value;

  PairInfo({this.label = '', this.value = '', this.withMargin = true});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: (withMargin == true ? 20 : 0)),
        alignment: Alignment.centerLeft,
        child: RichText(
            text: TextSpan(
                style: TextStyle(color: Colors.black, height: 1.5),
                children: <TextSpan>[
              TextSpan(
                  text: '$label\n',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: '$value')
            ])));
  }
}
