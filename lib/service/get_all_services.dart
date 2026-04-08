import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_application/helper/api.dart';

class GetCategoryService {
  Future<List<dynamic>> GetCategory() async {
    http.Response response = await Api().get(
      url: 'https://fakestoreapi.com/category',
    );

    List<dynamic> data = jsonDecode(response.body);

    return data;
  }
}
