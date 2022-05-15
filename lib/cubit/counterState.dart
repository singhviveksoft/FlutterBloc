import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class CounterState extends Equatable{}


class CounterUpdated extends CounterState{
  final int counter;
  CounterUpdated({required this.counter});

  @override
  // TODO: implement props
  List<Object?> get props => [counter];
}