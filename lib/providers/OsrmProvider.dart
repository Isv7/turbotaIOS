import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiHttpException implements Exception {
  final int statusCode;
  final String body;

  ApiHttpException(this.statusCode, this.body);
}

class CallApi {
  final String _url = 'https://router.project-osrm.org/';

  getData(apiUrl) async {
    var fullUrl = _url + apiUrl;

    return await http.get(fullUrl, headers: {}).timeout(
      Duration(seconds: 5),
      onTimeout: () {
        throw ApiHttpException(408, 'RequestTimeout');
      },
    );
  }
}

class OsrmProvider {
  Future<Map<String, dynamic>> getRoad(
      Map<String, String> start, Map<String, String> dest) async {
    String url =
        "route/v1/driving/${start["longitude"]},${start["latitude"]};${dest["longitude"]},${dest["latitude"]}?overview=full&geometries=geojson";
    var res = await CallApi().getData(url);
    if (res.statusCode == 200) {
      var rawList = json.decode(res.body);
      return {
        "distance": rawList["routes"][0]["distance"],
        "duration": rawList["routes"][0]["duration"],
        "road": rawList["routes"][0]["geometry"]["coordinates"],
      };
    }
    throw ApiHttpException(res.statusCode, res.body);
  }
}
