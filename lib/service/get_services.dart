import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_application/helper/api.dart';
import 'package:store_application/model/product_model.dart';

class GetCatgoriesSevice {
  Future<List<ProductModel>> GetService({required String category_name}) async {
    http.Response response = await Api().get(
      url: 'https://fakestoreapi.com/services/$category_name',
    );

    List<dynamic> data = jsonDecode(response.body);
    List<ProductModel> CatgoriesList = [];

    for (int i = 0; i < CatgoriesList.length; i++) {
      CatgoriesList.add(ProductModel.fromJson(data[i]));
    }

    return CatgoriesList;
  }
}
