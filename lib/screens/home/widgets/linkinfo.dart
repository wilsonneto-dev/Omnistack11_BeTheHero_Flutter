import 'package:flutter/material.dart';
import '../../detail/detail.dart';

class LinkInfos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Detail()),
          );
        },
        child: Row(
          children: <Widget>[
            Expanded(
                child: Container(
                    child: Text('Ver mais detalhes',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffe02041))))),
            Container(
                child: Icon(
              Icons.keyboard_arrow_right,
              color: Color(0xffe02041),
            ))
          ],
        ));
  }
}
