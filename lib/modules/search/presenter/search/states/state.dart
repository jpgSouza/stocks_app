/*
 * File: /Users/jpgsouza/Documents/stocks_app/lib/modules/search/presenter/search/states/state.dart
 * Project: /Users/jpgsouza/Documents/stocks_app/lib/modules/search/presenter/search/states
 * Created Date: Wednesday January 6th 2021
 * Author: João Pedro Giacometti de Souza
 * -----
 * Last Modified: Wednesday January 6th 2021 7:55:07 pm
 * Modified By: the developer formerly known as João Pedro Giacometti de Souza at joao.souza@toodoo.com.br
 * -----
 * Copyright © 2021 Toodoo. All rights reserved.
 */
import 'package:stocks_app/modules/search/domain/entities/result_search_stocks.dart';
import 'package:stocks_app/modules/search/domain/errors/errors.dart';

abstract class SearchState { }

class SearchSucess implements SearchState {
  final ResultSearchStocks resultSearchStocks;
  SearchSucess(this.resultSearchStocks);
}

class SearchLoading implements SearchState { }
class SearchStart implements SearchState { }
class SearchFailure implements SearchState { 
  final FailureSearch error;

  SearchFailure(this.error);
}