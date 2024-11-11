import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterBIncrement());

  int teamAPoints = 0;
  int teamBPoints = 0;
  void teamIncrement(String team, int buttonNumber) {
    if (team == "A") {
      teamAPoints += buttonNumber;
      emit(CounterAIncrement());
    } else {
      teamBPoints += buttonNumber;
      emit(CounterBIncrement());
    }
    emit(CounterUpdated(teamAPoints, teamBPoints));
  }

  void resetTeamAPoints() {
    teamAPoints = 0;
  emit(CounterUpdated(teamAPoints, teamBPoints));
  }
  void resetTeamBPoints() {
    teamBPoints = 0;
    emit(CounterUpdated(teamAPoints, teamBPoints));
  }
}
