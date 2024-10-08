import 'package:bloc/bloc.dart';

import '../services/data_services.dart';
import 'app_cubit_states.dart';

class AppCubits extends Cubit<CubitStates>{
  AppCubits({required this.data}) : super(InitialState()){
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;
  void getData()async{
    try{
       emit(LoadingState());
       places= await data.getInfo();
       emit(LoadedState(places));
    }catch(e){

    }
  }
}

