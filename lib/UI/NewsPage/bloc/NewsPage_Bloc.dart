import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:newsapi/Data/repository/irepository.dart';
import 'package:newsapi/UI/NewsPage/bloc/NewsPage_Event.dart';
import 'package:newsapi/UI/NewsPage/bloc/NewsPage_Event.dart';
import 'package:newsapi/UI/NewsPage/bloc/NewsPage_State.dart';




class NewsPageBloc extends Bloc<NewsPageEvent, NewsPageState> {
  IRepository _repository;

  NewsPageBloc(this._repository) : super(NewsPageState.initail());

  @override
  NewsPageState get initialState => NewsPageState.initail();

  @override
  Stream<NewsPageState> mapEventToState(
      NewsPageEvent event,
  ) async* {
    if (event is GetNews) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..GetNews = null
        );

        final date = await _repository.GetNews(event.Country_Code!, event.Category!);

        print('get Success data $date');
        yield state.rebuild((b) => b
          ..error = ""
          ..success = true
          ..isLoading = false
          ..GetNews.replace(date)
        );
        print("NO EXCEPTIONS");
      } catch (e) {
        print("EXCEPTION $e");
        yield state.rebuild((b) => b
          ..error = "$e"
          ..success = false
          ..isLoading = false
        );
      }
    }

  }
}
