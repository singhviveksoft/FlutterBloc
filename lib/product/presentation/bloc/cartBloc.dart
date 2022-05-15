import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_test/product/presentation/bloc/productEvent.dart';

import 'cartState.dart';

class CartBloc extends Bloc<ProductEvent, CartState> {
  CartBloc() : super(IntitialCartState(intialCartCount: 0)) {
    on<AddProductEvent>((event, emit) {
      countCartIteam++;
      emit(AddedCartState(addedCartCount: countCartIteam));
    });


    on<RemoveProductEvent>((event, emit) {
      countCartIteam++;
      emit(RemoveCartState(removeCartCount: countCartIteam));
    });
  }

  int countCartIteam = 0;

  // @override
  // Stream<CartState> mapEventToState(ProductEvent event) async* {
  //   if (event is AddProductEvent) {
  //     countCartIteam++;
  //     yield AddedCartState(addedCartCount: countCartIteam);
  //   } else if (event is RemoveProductEvent) {
  //     countCartIteam--;
  //     yield RemoveCartState(removeCartCount: countCartIteam);
  //   }
  // }
}
