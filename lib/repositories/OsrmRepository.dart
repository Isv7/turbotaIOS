import 'package:app/providers/OsrmProvider.dart';

class OsrmRepository {
  OsrmProvider osrmProvider = OsrmProvider();

  Future<Map<String, dynamic>> getRoad(
          Map<String, String> start, Map<String, String> dest) =>
      osrmProvider.getRoad(start, dest);
}
