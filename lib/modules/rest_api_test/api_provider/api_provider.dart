import 'package:http/http.dart' as http;

import '../models/airline_data_model.dart';

class ApiProvider {
  Future<List<AirlineDataModel>> getAirlinesData() async {
    try {
      final response = await http.get(
        Uri.parse('https://api.instantwebtools.net/v1/airlines'),
      );
      print(response.statusCode);
      if (response.statusCode == 200) {
        print(response.body);
        return airlineDataModelFromJson(response.body);
      } else {
        return [];
      }
    } catch (error) {
      print(error);
      return [];
    }
  }
}
