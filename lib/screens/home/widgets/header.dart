import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        // header
        child: Column(children: <Widget>[
      Row(
        children: <Widget>[
          Expanded(
            child: Image(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/logo.png")),
            flex: 0,
          ),
          Expanded(
              flex: 1,
              child: Container(
                  alignment: Alignment.centerRight,
                  child: RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colors.black),
                          children: <TextSpan>[
                        TextSpan(text: 'Total de '),
                        TextSpan(
                            text: '8 casos',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ]))))
        ],
      ),
      Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 40, bottom: 16),
            alignment: Alignment.centerLeft,
            child: Text('Bem Vindo!',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold)),
          ),
          Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(bottom: 16),
              child: Text(
                'Escolha um dos casos abaixo e salve o dia.',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 17,
                ),
              ))
        ],
      )
    ]));
  }
}
