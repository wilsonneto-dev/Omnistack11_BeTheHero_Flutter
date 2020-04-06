import 'package:flutter/material.dart';
import '../../../widgets/pairinfo.dart';

class InfosCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 35),
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            border: Border.all(color: Colors.white60, width: 1)),
        child: Column(
          children: <Widget>[
            PairInfo(label: 'Ong', value: 'APAD'),
            PairInfo(label: 'CASO', value: 'Caso 1'),
            PairInfo(label: 'VALOR', value: 'R\$ 1.200,00')
          ],
        ));
    ;
  }
}
