/*
 * File: c:\Users\joao_\OneDrive\Documentos\Git Projects\stocks_app\test\modules\search\data\repository\search_stocks_repository_impl.dart
 * Project: c:\Users\joao_\OneDrive\Documentos\Git Projects\stocks_app\test\modules\search\data\repository
 * Created Date: Sunday January 3rd 2021
 * Author: João Pedro
 * -----
 * Last Modified: Sunday January 3rd 2021 6:03:07 pm
 * Modified By: the developer formerly known as João Pedro at <you@you.you>
 * -----
 * Copyright (c) 2021 Your Company
 */

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:stocks_app/modules/search/data/datasource/search_stock_datasource.dart';
import 'package:stocks_app/modules/search/data/models/result_search_stock_model.dart';
import 'package:stocks_app/modules/search/data/repository/search_stocks_repository_impl.dart';
import 'package:stocks_app/modules/search/domain/errors/errors.dart';

class SearchDataSourceMock extends Mock implements SearchStockDataSource {}

main() {
  final dataSource = SearchDataSourceMock();
  final repository = SearchStockRepositoryImpl(dataSource);

  test('Should return a List of "ResultSearchStockModel"', () async {
    when(dataSource.getSearch(any))
        .thenAnswer((_) async => <ResultSearchStockModel>[]);
    final result = await repository.search("mglu3");

    expect(result | null, isA<List<ResultSearchStockModel>>());
  });

  test('Should return a DataSourceError', () async {
    when(dataSource.getSearch(any)).thenThrow(Exception());
    final result = await repository.search("mglu3");

    expect(result.fold(id, id), isA<DataSourceError>());
  });
}
