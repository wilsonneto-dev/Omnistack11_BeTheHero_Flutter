import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: Image(image: AssetImage('assets/logo.png')))),
          Expanded(
              flex: 0,
              child: Container(
                  child: Row(
                children: <Widget>[
                  Icon(
                    Icons.keyboard_arrow_left,
                    color: Color(0xffe02041),
                  ),
                  Text('Voltar',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xffe02041)))
                ],
              )))
        ],
      ),
    );
  }
}
