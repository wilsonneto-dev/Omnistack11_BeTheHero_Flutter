import 'dart:async';
import 'package:omni_flutter/models/incident.dart';
import '../../services/incident_api_service.dart';

class HomeBloc {
  List<Incident> _listIncidents;

  final StreamController _listIncidentsStateController =
      StreamController<List<Incident>>();

  Stream<List<Incident>> get listIncidents =>
      _listIncidentsStateController.stream;

  void loadIncidents() async {
    final incidentApiService = new IncidentApiService();
    List<Incident> listIncidents = await incidentApiService.getIncidents();
    _listIncidentsStateController.sink.add(listIncidents);
    print(listIncidents);
  }

  void dispose() {
    _listIncidentsStateController.close();
  }
}

class HomeBlocProvider {
  static HomeBloc _instance;

  static HomeBloc getInstance() {
    if (_instance == null) _instance = new HomeBloc();
    return HomeBloc();
  }

  static void dispose() {
    if (_instance != null) _instance.dispose();
  }
}

/*
  final StreamController _counterStateController = StreamController<int>();
  StreamSink<int> get _inCounter => _counterStateController.sink;
  Stream<int> get counnter => _counterStateController.stream;

  final _counterEventController = StreamController<int>();
  Sink<int> get counterEventSink => _counterEventController.sink;

  HomeBloc() {
    _counterEventController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(int add) {
    _counter += add;

    _inCounter.add(_counter);
  }

  void dispose() {
    _counterEventController.close();
    _counterStateController.close();
  } 
  
  
  StreamBuilder(
  stream: _bloc.counnter,
  initialData: 0,
  builder: (BuildContext context, snapshot) {
    return RichText(
        text: TextSpan(
            style: TextStyle(color: Colors.black),
            children: <TextSpan>[
          TextSpan(text: 'Total de '),
          TextSpan(
              text: '${snapshot.data} casos',
              style: TextStyle(fontWeight: FontWeight.bold))
        ]));
  })
  
  */
