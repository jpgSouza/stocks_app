/*
 * File: c:\Users\joao_\OneDrive\Documentos\Git Projects\stocks_app\lib\modules\search\domain\usecases\search_by_name.dart
 * Project: c:\Users\joao_\OneDrive\Documentos\Git Projects\stocks_app\lib\modules\search\domain\usecases
 * Created Date: Sunday January 3rd 2021
 * Author: João Pedro
 * -----
 * Last Modified: Sunday January 3rd 2021 12:50:47 pm
 * Modified By: the developer formerly known as João Pedro at <you@you.you>
 * -----
 * Copyright (c) 2021 Your Company
 */
import 'package:stocks_app/modules/search/domain/entities/result_search_stocks.dart';
import 'package:dartz/dartz.dart';
import 'package:stocks_app/modules/search/domain/errors/errors.dart';
import 'package:stocks_app/modules/search/domain/repository/search_stocks_repository.dart';

abstract class SearchByName {
  Future<Either<FailureSearch, ResultSearchStocks>> call(String stockName);
}

class SearchByNameImpl implements SearchByName {
  final SearchStockRepository searchStockRepository;

  SearchByNameImpl(this.searchStockRepository);

  @override
  Future<Either<FailureSearch, ResultSearchStocks>> call(
      String stockName) async {
    if (stockName == null || stockName.isEmpty) {
      return Left(InvalidNameError());
    }
    return searchStockRepository.search(stockName);
  }
}
