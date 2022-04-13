import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'pizza.dart';

class HttpHelper {
  final String authority = 'gq3e6.mocklab.io';
  final String path = 'pizzalist';
  final String postPath = 'pizza';
  final String putPath = 'pizza';
  final String deletePath = 'pizza';

  static final HttpHelper _httpHelper = HttpHelper._internal();
  HttpHelper._internal();
  factory HttpHelper() {
    return _httpHelper;
  }

  Future<List<Pizza>?> getPizzaList() async {
    Uri url = Uri.https(authority, path);
    http.Response result = await http.get(url);
    if (result.statusCode == HttpStatus.ok) {
      final jsonResponse = json.decode(result.body);
      //provide a type argument to the map method to avoid type error
      List<Pizza> pizzas =
          jsonResponse.map<Pizza>((i) => Pizza.fromJson(i)).toList();
      return pizzas;
    } else {
      return null;
    }
  }

  Future<String> postPizza(Pizza pizza) async {
    String post = json.encode(pizza.toJson());
    Uri url = Uri.https(authority, postPath);
    http.Response r = await http.post(
      url,
      body: post,
    );
    return r.body;
  }

  Future<String> putPizza(Pizza pizza) async {
    String put = json.encode(pizza.toJson());
    Uri url = Uri.https(authority, putPath);
    http.Response r = await http.put(
      url,
      body: put,
    );
    return r.body;
  }

  Future<String> deletePizza(int id) async {
    Uri url = Uri.https(authority, deletePath);
    http.Response r = await http.delete(
      url,
    );
    return r.body;
  }
}
