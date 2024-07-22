import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int teamAPoints = 0;

  int teamBPoints = 0;

  void incrementTeam({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAState());
    } else {
      teamBPoints += buttonNumber;
      emit(CounterBState());
    }
  }

  void reset() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterInitial());
  }
}
