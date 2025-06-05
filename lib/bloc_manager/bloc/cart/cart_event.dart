part of 'cart_bloc.dart';

sealed class CartEvent extends Equatable {
  const CartEvent();
}

class CartEventLoadCart extends CartEvent {
  const CartEventLoadCart();

  @override
  List<Object?> get props => [];
}

class AddToCart extends CartEvent {
  final ProductModel product;

  const AddToCart({required this.product});

  @override
  List<Object?> get props => [product];
}

class RemoveFromCart extends CartEvent {
  final ProductModel product;

  const RemoveFromCart({required this.product});

  @override
  List<Object?> get props => [product];
}

class IncreaseQuantity extends CartEvent {
  final ProductModel product;

  const IncreaseQuantity({required this.product});

  @override
  List<Object?> get props => [product];
}

class DecreaseQuantity extends CartEvent {
  final ProductModel product;

  const DecreaseQuantity({required this.product});

  @override
  List<Object?> get props => [product];
}

class ClearCart extends CartEvent {
  const ClearCart();

  @override
  List<Object?> get props => [];
}
