import 'package:store_application/helper/api.dart';
import 'package:store_application/model/product_model.dart';

class AddProduct {
  Future<ProductModel> addProdauct({
    required String title,
    required String price,
    required String desc,
    required String image,
    required String category,
  }) async {
    return await Api().post(
      url: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price,
        'description': desc,
        'image': image,
        'category': category,
      },
    );
  }
}
