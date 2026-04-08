import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_application/helper/api.dart';
import 'package:store_application/model/product_model.dart';

class ProductsService {
  Future<List<ProductModel>> GetProducts() async {
    http.Response response = await Api().get(
      url: 'https://fakestoreapi.com/products',
    );

    List<dynamic> data = jsonDecode(response.body);
    List<ProductModel> productsList = [];

    for (int i = 0; i < productsList.length; i++) {
      productsList.add(ProductModel.fromJson(data[i]));
    }

    return productsList;
  }
}
