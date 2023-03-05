import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:newsapi/Data/repository/irepository.dart';
import 'package:newsapi/UI/HomePage/bloc/HomePage_Event.dart';
import 'package:newsapi/UI/HomePage/bloc/HomePage_State.dart';




class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  IRepository _repository;

  HomePageBloc(this._repository) : super(HomePageState.initail());

  @override
  HomePageState get initialState => HomePageState.initail();

  @override
  Stream<HomePageState> mapEventToState(
      HomePageEvent event,
  ) async* {
    if (event is ChangeSelectedItem) {
      try {
        yield state.rebuild((b) => b
              ..SelectedItem = event.Country
            ..Selected = true
        );

        // final date = await _repository.AddVol(event.gender!, event.uni_sp!, event.area!, event.street!, event.phone!, event.email!,
        //     event.note!, event.full_name!, event.old!, event.noid!);
        //
        // print('get Success data $date');
        // yield state.rebuild((b) => b
        //   ..error = ""
        //   ..success = true
        //   ..isLoading = false
        //   ..AddVol.replace(date)
        // );
        // print("NO EXCEPTIONS");
      } catch (e) {
        print("EXCEPTION $e");
      }
    }

  }
}
