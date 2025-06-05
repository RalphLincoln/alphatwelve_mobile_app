part of 'cart_bloc.dart';

sealed class CartState extends Equatable {
  const CartState();
}

final class CartInitial extends CartState {
  final List<CartModel> items;
  final double total;
  final CartStatus status;

  const CartInitial({
    this.items = const [],
    this.total = 0.0,
    this.status = CartStatus.initial,
  });

  int get itemCount => items.fold(0, (sum, item) => sum + item.quantity);

  CartInitial copyWith({
    List<CartModel>? items,
    double? total,
    CartStatus? status,
  }) {
    return CartInitial(
      items: items ?? this.items,
      total: total ?? this.total,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [items, total, status];
}

enum CartStatus { initial, loading, loaded, error }

class CartStateLoadAllProductIsLoading extends CartState {
  const CartStateLoadAllProductIsLoading();

  @override
  List<Object> get props => [];
}

class CartStateLoadAllProduct extends CartState {
  final bool status;
  final String message;
  final List<ProductModel> product;

  const CartStateLoadAllProduct({required this.product, required this.status, required this.message});

  @override
  List<Object> get props => [product, status, message];
}
