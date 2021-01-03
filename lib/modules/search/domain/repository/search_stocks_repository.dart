/*
 * File: c:\Users\joao_\OneDrive\Documentos\Git Projects\stocks_app\lib\modules\search\domain\repository\search_stocks_repository
 * Project: c:\Users\joao_\OneDrive\Documentos\Git Projects\stocks_app\lib\modules\search\domain\repository
 * Created Date: Sunday January 3rd 2021
 * Author: João Pedro
 * -----
 * Last Modified: Sunday January 3rd 2021 1:08:37 pm
 * Modified By: the developer formerly known as João Pedro at <you@you.you>
 * -----
 * Copyright (c) 2021 Your Company
 */
import 'package:dartz/dartz.dart';
import 'package:stocks_app/modules/search/domain/entities/result_search_stocks.dart';
import 'package:stocks_app/modules/search/domain/errors/errors.dart';

abstract class SearchStockRepository {
  Future<Either<FailureSearch, List<ResultSearchStocks>>> search(
      String stockName);
}
