part of 'weather_bloc.dart';

@immutable
sealed class WeatherState extends Equatable{
  const WeatherState();

  @override
  List<Object> get props => [];
}

final class WeatherInitial extends WeatherState {}

final class WeatherLoadingState extends WeatherState {}

final class WeatherSuccessState extends WeatherState {
  final Weather weather;

  const WeatherSuccessState(this.weather);

  @override
  List<Object> get props => [weather];
}

final class WeatherFailure extends WeatherState {
  final String error;

  const WeatherFailure({required this.error});
}
