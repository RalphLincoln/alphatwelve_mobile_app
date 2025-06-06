import 'package:flutter/cupertino.dart';
/* MODEL IMPORT */
import 'package:untitled/models/cart/cart.model.dart';
import 'package:untitled/models/product/product.model.dart';

class CartProvider with ChangeNotifier {
  final List<CartModel> _carts = [];

  List<CartModel> get carts => _carts;

  double get shipping => 10;

  double get totalPrice => _carts.fold(0, (sum, cart) => sum + cart.totalPrice);

  double get grossPrice => totalPrice + shipping;

  void addToCart({required ProductModel product}) {
    final existingIndex = _carts.indexWhere((cart) => cart.product.id == product.id);

    if (existingIndex >= 0) {
      _carts[existingIndex] = _carts[existingIndex].increment(1);
    } else {
      _carts.add(CartModel(product: product, quantity: 1));
    }

    notifyListeners();
  }

  void increaseProductInCart({required String productID}) {
    final index = _carts.indexWhere((cart) => cart.product.id == productID);
    if (index >= 0) {
      _carts[index] = _carts[index].increment(1);
      notifyListeners();
    }

    notifyListeners();
  }

  void decreaseProductInCart({required String productID}) {
    final index = _carts.indexWhere((cart) => cart.product.id == productID);

    if (index >= 0) {
      if (_carts[index].quantity > 1) {
        _carts[index] = _carts[index].decrement(1);
      } else {
        _carts.removeAt(index);
      }

      notifyListeners();
    }
  }

  void removeProductFromCart({required String productID}) {
    _carts.removeWhere((cart) => cart.product.id == productID);

    notifyListeners();
  }

  void clearCart() {
    _carts.clear();

    notifyListeners();
  }
}
