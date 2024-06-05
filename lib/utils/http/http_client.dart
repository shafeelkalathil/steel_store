
import 'dart:convert';

import 'package:http/http.dart' as http;

class THttpHelper{
  static const _baseUrl="";

  static Future<Map<String,dynamic>> get(String endPoints) async{
    final response = await http.get(Uri.parse('$_baseUrl/$endPoints'));
    return _handleResponse(response);
  }

  static Future<Map<String,dynamic>> post(String endPoints, dynamic data) async{
    final response = await http.post(
      Uri.parse('$_baseUrl/$endPoints'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data)
    );
    return _handleResponse(response);
  }

  static Future<Map<String,dynamic>> put(String endPoints, dynamic data) async{
    final response = await http.put(
        Uri.parse('$_baseUrl/$endPoints'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(data)
    );
    return _handleResponse(response);
  }

  static Future<Map<String,dynamic>> delete(String endPoints) async{
    final response = await http.delete(
        Uri.parse('$_baseUrl/$endPoints')
    );
    return _handleResponse(response);
  }

  static Map<String,dynamic> _handleResponse(http.Response response){
    if(response.statusCode == 200){
      return jsonDecode(response.body);
    }else{
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}