import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class ClientGet {
  final request =
      "https://economia.awesomeapi.com.br/last/USD-BRL,EUR-BRL,BTC-BRL";

  Future<Map> getData() async {
    http.Response response = await http.get(Uri.parse(request));
    if (response.statusCode != 200) {
      print('Deu Ruim');
    }
    final map = json.decode(response.body);
    return map;
  }
}
