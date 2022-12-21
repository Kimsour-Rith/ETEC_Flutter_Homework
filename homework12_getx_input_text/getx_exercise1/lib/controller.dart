import 'package:get/get.dart';

import 'Model/product_model.dart';

class ProductController extends GetxController {
  var products = <Product>[].obs;
  addProductCard(Product product) {
    products.add(product);
    print('object added');
    update();
  }
}
