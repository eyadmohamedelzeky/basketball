import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit(super.initialState);
  int TeamAPoints=0;
  int TeamBPoints=0;
  
  
  void zero(){
    
    TeamAPoints=0;
    TeamBPoints=0;
    emit(Zero());
  }

  void TeamIncerment({ required int buttonNumber, required String team})
  {
    if(team=='A')
      {
        TeamAPoints+=buttonNumber;
        emit(CounterAIncrement());
      }
    else if(team=='B'){
      TeamBPoints+=buttonNumber;
      emit(CounterBIncrement());
    }
    }
  }

