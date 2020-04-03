import 'package:flutter/material.dart';

class List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(0),
        width: MediaQuery.of(context).size.width,
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int position) {
                return ListItem();
              }),
        ));
  }
}

class ListItem extends StatelessWidget {
  ListItem() {
    // parent();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            border: Border.all(color: Colors.white60, width: 1)),
        child: Column(
          children: <Widget>[
            PairInfo(label: 'Ong', value: 'APAD'),
            PairInfo(label: 'CASO', value: 'Caso 1'),
            PairInfo(label: 'VALOR', value: 'R\$ 1.200,00'),
            LinkInfos()
          ],
        ));
  }
}

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

class LinkInfos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
