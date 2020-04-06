import 'package:flutter/material.dart';

class ButtonsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            border: Border.all(color: Colors.white60, width: 1)),
        child: Column(
          children: <Widget>[
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(bottom: 5),
                child: Text('Salve o dia!',
                    style: TextStyle(
                        color: Color(0xff13131a),
                        fontSize: 23,
                        fontWeight: FontWeight.bold))),
            Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Seja o herói deste caso',
                  style: TextStyle(
                      color: Color(0xff13131a),
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                )),
            Container(
                margin: EdgeInsets.only(top: 15, bottom: 10),
                alignment: Alignment.centerLeft,
                child: Text('Entre em contato:',
                    style: TextStyle(fontSize: 15, color: Color(0xff737380)))),
            Container(
                child: Row(
              children: <Widget>[
                Expanded(flex: 1, child: ButtonsCardButton()),
                SizedBox(
                  width: 10,
                ),
                Expanded(flex: 1, child: ButtonsCardButton())
              ],
            ))
          ],
        ));
  }
}

class ButtonsCardButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xffe02041),
          border: Border.all(color: Colors.white60, width: 1)),
      child: Text('Button', style: TextStyle(color: Colors.white)),
    );
  }
}
