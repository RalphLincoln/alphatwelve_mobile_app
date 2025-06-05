import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
/* MODEL IMPORT */
import 'package:untitled/models/cart/cart.model.dart';
import 'package:untitled/models/product/product.model.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const CartInitial()) {
    on<CartEventLoadCart>(_onLoadCart);
    // on<AddToCart>(_onAddToCart);
    // on<ClearCart>(_onClearCart);
    // on<RemoveFromCart>(_onRemoveFromCart);
    // on<IncreaseQuantity>(_onIncreaseQuantity);
    // on<DecreaseQuantity>(_onDecreaseQuantity);
  }

  void _onLoadCart(CartEventLoadCart event, Emitter<CartState> emit) {}
}
