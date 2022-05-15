import 'package:equatable/equatable.dart';

abstract class ProductEvent extends Equatable {}

class AddProductEvent extends ProductEvent {
  int? addIteamCount;
  AddProductEvent({this.addIteamCount});

  @override
  // TODO: implement props
  List<Object?> get props => [addIteamCount];
}

class RemoveProductEvent extends ProductEvent {
  int? removeIteamCount;
  RemoveProductEvent({this.removeIteamCount});

  @override
  // TODO: implement props
  List<Object?> get props => [removeIteamCount];
}
