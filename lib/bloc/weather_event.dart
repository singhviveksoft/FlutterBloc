part of 'weather_bloc.dart';

abstract class WeatherEvent extends Equatable {
   WeatherEvent();

  @override
  List<Object> get props => [];
}

class WeatherSearchEvent extends WeatherEvent{
  final String city_name;

 
   WeatherSearchEvent({required this.city_name});
   @override
  List<Object> get props => [city_name];

}
