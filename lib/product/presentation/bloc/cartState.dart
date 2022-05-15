import 'package:equatable/equatable.dart';

abstract class CartState extends Equatable {
  int count;
  CartState({required this.count});
}

class IntitialCartState extends CartState {
  int intialCartCount;
  IntitialCartState({required this.intialCartCount}) : super(count: intialCartCount);

  @override
  // TODO: implement props
  List<Object?> get props => [intialCartCount];
}

class AddedCartState extends CartState {
  int addedCartCount;
  AddedCartState({required this.addedCartCount}) : super(count: addedCartCount);

  @override
  // TODO: implement props
  List<Object?> get props => [addedCartCount];
}

class RemoveCartState extends CartState {
  int removeCartCount;
  RemoveCartState({required this.removeCartCount}) : super(count: removeCartCount);

  @override
  // TODO: implement props
  List<Object?> get props => [removeCartCount];
}
