import 'package:equatable/equatable.dart';

class Weather extends Equatable{
  final String cityname,temp;

  Weather({required this.cityname,required this.temp});

  @override
  
  List<Object?> get props => [cityname,temp];

}