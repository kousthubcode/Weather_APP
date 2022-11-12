import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:proapp/model/weather_model.dart';

class WeatherapiClient {
  Future<Weather>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location &appid=80a9b657c036a1386fa8f1b3210510f7&units=metric");

    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(Weather.fromJson(body));
    return Weather.fromJson(body);
  }
}
