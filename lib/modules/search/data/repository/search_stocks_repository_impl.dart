/*
 * File: c:\Users\joao_\OneDrive\Documentos\Git Projects\stocks_app\lib\modules\search\data\repository\search_repository_
 * Project: c:\Users\joao_\OneDrive\Documentos\Git Projects\stocks_app\lib\modules\search\data\repository
 * Created Date: Sunday January 3rd 2021
 * Author: João Pedro
 * -----
 * Last Modified: Sunday January 3rd 2021 5:59:29 pm
 * Modified By: the developer formerly known as João Pedro at <you@you.you>
 * -----
 * Copyright (c) 2021 Your Company
 */
import 'package:stocks_app/modules/search/data/datasource/search_stock_datasource.dart';
import 'package:stocks_app/modules/search/domain/errors/errors.dart';
import 'package:stocks_app/modules/search/domain/entities/result_search_stocks.dart';
import 'package:dartz/dartz.dart';
import 'package:stocks_app/modules/search/domain/repository/search_stocks_repository.dart';

class SearchStockRepositoryImpl implements SearchStockRepository {
  final SearchStockDataSource dataSource;

  SearchStockRepositoryImpl(this.dataSource);

  @override
  Future<Either<FailureSearch, ResultSearchStocks>> search(
      String stockName) async {
    try {
      final result = await dataSource.getSearch(stockName);
      return Right(result);
    } catch (e) {
      return Left(DataSourceError());
    }
  }
}
