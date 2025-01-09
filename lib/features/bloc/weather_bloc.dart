import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_weather_bloc/features/data/data.dart';
import 'package:geolocator/geolocator.dart';
import 'package:meta/meta.dart';
import 'package:weather/weather.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitial()) {
   on<FetchWeatherEvent>(fetchWeatherEvent);
  }

  FutureOr<void> fetchWeatherEvent(FetchWeatherEvent event, Emitter<WeatherState> emit) async{
    emit(WeatherLoadingState());
    try{

      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();

      if(!serviceEnabled){
        emit(WeatherFailure(error: "Location service are disabled"));
        return;
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if(permission == LocationPermission.denied){
        permission = await Geolocator.requestPermission();
        if(permission == LocationPermission.denied){
          emit(WeatherFailure(error: "Location permissions are denied"));
          return;
        }
      }

      if(permission == LocationPermission.deniedForever){
        emit(WeatherFailure(error: "Location permission are permanently denied"));
        return;
      }
      
     WeatherFactory wf = WeatherFactory(Secrets().API_KEY,language: Language.ENGLISH);

    Position position = await Geolocator.getCurrentPosition();

     Weather weather = await wf.currentWeatherByLocation(
         position.latitude, position.longitude
     );

     print(weather);

      emit(WeatherSuccessState(weather));

    }catch(e){
      emit(WeatherFailure(error: e.toString()));
    }

  }

}
