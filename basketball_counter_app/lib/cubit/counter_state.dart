abstract class CounterState {}

class CounterAIncrement extends CounterState {}

class CounterBIncrement extends CounterState {}

class CounterUpdated extends CounterState {
  final int teamAPoints;
  final int teamBPoints;

  CounterUpdated(this.teamAPoints, this.teamBPoints);
}
