import 'dart:convert';
import 'package:http/http.dart' show Client;
import 'package:omni_flutter/models/incident.dart';

class IncidentApiService {
  Client httpClient = Client();

  Future<List<Incident>> getIncidents({int pageNumber = 1}) async {
    final response = await httpClient.get("http://192.168.0.11:3333/incidents");
    if (response.statusCode == 200) {
      List<Incident> incidents = new List<Incident>();
      dynamic parsedJson = json.decode(response.body);
      parsedJson.forEach((json) => incidents.add(Incident.fromJson(json)));
      return incidents;
    } else {
      throw Exception('Api unavailable');
    }
  }
}
