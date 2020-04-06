import 'package:flutter/material.dart';
import 'package:omni_flutter/models/incident.dart';
import './listitem.dart';
import '../home_bloc.dart';

class IncidentsList extends StatelessWidget {
  final HomeBloc _homeBloc = HomeBlocProvider.getInstance();

  @override
  Widget build(BuildContext context) {
    _homeBloc.loadIncidents();

    return Container(
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(0),
        width: MediaQuery.of(context).size.width,
        child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: StreamBuilder(
                stream: _homeBloc.listIncidents,
                initialData: List<Incident>(),
                builder: (BuildContext context, snapshot) {
                  if (snapshot.hasData) {
                    List<Incident> list = snapshot.data as List<Incident>;
                    return ListView.builder(
                        itemCount: list.length,
                        itemBuilder: (BuildContext context, int position) {
                          return ListItem(list[position]);
                        });
                  } else {
                    return new Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        new CircularProgressIndicator(),
                        new Text("Loading"),
                      ],
                    );
                  }
                })));
  }
}
