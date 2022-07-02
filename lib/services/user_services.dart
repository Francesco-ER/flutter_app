import 'dart:convert';
import 'package:conected_windows_server/Models/actividad.dart';
import 'package:http/http.dart' as http;

class UserServices {
  Future getIdeas() async {
    try {
      var url = Uri.parse('http://www.boredapi.com/api/activity');
      var response = await http.get(url);

      if (response.statusCode == 200) {
        // print(response.body.runtimeType);
        var data = jsonDecode(response.body);
        ActividadModel actividad = new ActividadModel.fromJson(data);
        return actividad;
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
