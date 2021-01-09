/*
 * File: /Users/jpgsouza/Documents/stocks_app/lib/modules/search/presenter/search/search_bloc.dart
 * Project: /Users/jpgsouza/Documents/stocks_app/lib/modules/search/presenter/search
 * Created Date: Wednesday January 6th 2021
 * Author: João Pedro Giacometti de Souza
 * -----
 * Last Modified: Wednesday January 6th 2021 7:52:57 pm
 * Modified By: the developer formerly known as João Pedro Giacometti de Souza at joao.souza@toodoo.com.br
 * -----
 * Copyright © 2021 Toodoo. All rights reserved.
 */
import 'package:bloc/bloc.dart';
import 'package:stocks_app/modules/search/domain/usecases/search_by_name.dart';
import 'package:stocks_app/modules/search/presenter/search/states/state.dart';

class SearchBloc extends Bloc<String, SearchState> {
  final SearchByName usecase;
  
  SearchBloc(this.usecase) : super(SearchStart());

  @override
  Stream<SearchState> mapEventToState(String searchStockName) async* {
    yield SearchLoading();
    final result = await usecase(searchStockName);
    yield result.fold((l) => SearchFailure(l), (r) => SearchSucess(r));
  }

}