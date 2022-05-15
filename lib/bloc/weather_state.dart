part of 'weather_bloc.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

class InitialWeatherState extends WeatherState {}

class LoadingWeatherState extends WeatherState {}

class LoadedWeatherState extends WeatherState {
  final Weather weather;

  LoadedWeatherState({required this.weather});
}
