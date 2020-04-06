import 'package:flutter/material.dart';
import 'package:omni_flutter/models/incident.dart';
import '../../../widgets/pairinfo.dart';
import '../widgets/linkinfo.dart';

class ListItem extends StatelessWidget {
  Incident _incident;

  ListItem(Incident incident) : super() {
    _incident = incident;
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
            PairInfo(label: 'Ong', value: _incident.name),
            PairInfo(label: 'CASO', value: _incident.title),
            PairInfo(label: 'VALOR', value: _incident.value),
            LinkInfos()
          ],
        ));
  }
}
