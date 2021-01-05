/*
 * File: c:\Users\joao_\OneDrive\Documentos\Git Projects\stocks_app\test\modules\search\domain\usecases\search_by_name_test.dart
 * Project: c:\Users\joao_\OneDrive\Documentos\Git Projects\stocks_app\test\modules\search\domain\usecases
 * Created Date: Sunday January 3rd 2021
 * Author: João Pedro
 * -----
 * Last Modified: Sunday January 3rd 2021 1:00:00 pm
 * Modified By: the developer formerly known as João Pedro at <you@you.you>
 * -----
 * Copyright (c) 2021 Your Company
 */
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:stocks_app/modules/search/domain/entities/result_search_stocks.dart';
import 'package:stocks_app/modules/search/domain/errors/errors.dart';
import 'package:stocks_app/modules/search/domain/repository/search_stocks_repository.dart';
import 'package:stocks_app/modules/search/domain/usecases/search_by_name.dart';

class SearchRepositoryMock extends Mock implements SearchStockRepository {}

main() {
  final repository = SearchRepositoryMock();
  final usecase = SearchByNameImpl(repository);

  test('Should return a "ResultStocksSearch"', () async {
    when(repository.search(any))
        .thenAnswer((_) async => Right(ResultSearchStocks()));

    final result = await usecase("mglu3");
    expect(result | null, isA<ResultSearchStocks>());
  });

  test('Should return an "InvalidNameError"', () async {
    when(repository.search(any))
        .thenAnswer((_) async => Right(ResultSearchStocks()));

    var result = await usecase(null);
    expect(result.fold(id, id), isA<InvalidNameError>());

    result = await usecase("");
    expect(result.fold(id, id), isA<InvalidNameError>());
  });
}
