import 'package:equatable/equatable.dart';
/* MODEL IMPORT */
import 'package:untitled/models/product/product.model.dart';

class CartModel extends Equatable {
  final ProductModel product;
  final int quantity;

  const CartModel({
    required this.product,
    this.quantity = 1,
  });

  double get totalPrice => product.amount * quantity;

  CartModel copyWith({ProductModel? product, int? quantity}) {
    return CartModel(
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
    );
  }

  @override
  List<Object?> get props => [product, quantity];
}
