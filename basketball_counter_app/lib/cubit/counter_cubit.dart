import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit():super(CounterBIncrement());
}