part of 'weather_bloc.dart';

@immutable
sealed class WeatherEvent extends Equatable{
  const WeatherEvent();

  List<Object> get props => [];

}


class FetchWeatherEvent extends WeatherEvent{}
