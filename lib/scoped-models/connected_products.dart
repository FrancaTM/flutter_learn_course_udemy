import 'package:scoped_model/scoped_model.dart';

import '../models/product.dart';
import '../models/user.dart';

mixin ConnectedProducts on Model {
  List<Product> products = [];
  int selProductIndex;
  User authenticatedUser;

  void unselectProduct() {
    selProductIndex = null;
    notifyListeners();
  }

  void addProduct(String title, String description, String image, double price,
      String address) {
    final Product newProduct = Product(
        title: title,
        description: description,
        image: image,
        price: price,
        userEmail: authenticatedUser.email,
        userId: authenticatedUser.id,
        address: address);
    products.add(newProduct);
    unselectProduct();
    notifyListeners();
  }
}
