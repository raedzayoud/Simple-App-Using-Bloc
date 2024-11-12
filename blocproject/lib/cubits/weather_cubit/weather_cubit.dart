import 'package:blocproject/cubits/weather_cubit/weather_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherCubit extends Cubit {
  WeatherCubit() : super(WeatherLoading());
 // WeatherModel weatherModel;
  void getWeather()async {
    emit(WeatherLoading());
    try {
   // weatherModel=await getData();
      emit(WeatherLoading());
    } catch (e) {
      emit(WeatherFailure());
    }
  }
}
