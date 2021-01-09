/*
 * File: /Users/jpgsouza/Documents/stocks_app/test/modules/search/presenter/search/search_bloc_test.dart
 * Project: /Users/jpgsouza/Documents/stocks_app/test/modules/search/presenter/search
 * Created Date: Wednesday January 6th 2021
 * Author: João Pedro Giacometti de Souza
 * -----
 * Last Modified: Wednesday January 6th 2021 8:01:46 pm
 * Modified By: the developer formerly known as João Pedro Giacometti de Souza at joao.souza@toodoo.com.br
 * -----
 * Copyright © 2021 Toodoo. All rights reserved.
 */
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:stocks_app/modules/search/domain/entities/result_search_stocks.dart';
import 'package:stocks_app/modules/search/domain/errors/errors.dart';
import 'package:stocks_app/modules/search/domain/usecases/search_by_name.dart';
import 'package:stocks_app/modules/search/presenter/search/search_bloc.dart';
import 'package:stocks_app/modules/search/presenter/search/states/state.dart';

class SearchByNameMock extends Mock implements SearchByName{}

main() {
  final usecase = SearchByNameMock();
  final bloc = SearchBloc(usecase);
  test('Should return the states on correct order', () {
    when(usecase.call(any)).thenAnswer((_) async => Right(ResultSearchStocks()));
    expect(bloc, emitsInOrder([
      isA<SearchLoading>(),
      isA<SearchSucess>(),
    ]));
    bloc.add("mglu3");
  });
  test('Should return an error', () {
    when(usecase.call(any)).thenAnswer((_) async => Left(InvalidNameError()));
    expect(bloc, emitsInOrder([
      isA<SearchLoading>(),
      isA<SearchFailure>(),
    ]));
    bloc.add("mglu3");
  });
}