import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../model/weather.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(InitialWeatherState()) {
    on<WeatherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
