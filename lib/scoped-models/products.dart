import 'package:scoped_model/scoped_model.dart';

import '../models/product.dart';

class ProductsModel extends Model {
  List<Product> _products = [];
  int _selectedProductIndex;

  List<Product> get products {
    return List.from(_products);
  }

  int get selectedProductIndex {
    return _selectedProductIndex;
  }

  Product get selectedProduct {
    if (_selectedProductIndex == null) {
      return null;
    }
    return _products[selectedProductIndex];
  }

  void addProduct(Product product) {
    _products.add(product);
    unselectProduct();
  }

  void updateProduct(Product product) {
    _products[_selectedProductIndex] = product;
    unselectProduct();
  }

  void deleteProduct() {
    _products.removeAt(_selectedProductIndex);
    unselectProduct();
  }

  void selectProduct(int index) {
    _selectedProductIndex = index;
  }

  void unselectProduct() {
    _selectedProductIndex = null;
  }

  void toggleProductFavoriteStatus() {
    final bool isCurrentlyFavorite = selectedProduct.isFavorite;
    final bool newFavoriteState = !isCurrentlyFavorite;
    // TODO: Refactor and simplify?
    final Product updatedProduct = Product(
        title: selectedProduct.title,
        description: selectedProduct.description,
        price: selectedProduct.price,
        image: selectedProduct.image,
        address: selectedProduct.address,
        isFavorite: newFavoriteState);
    _products[_selectedProductIndex] = updatedProduct;
    unselectProduct();
  }
}
