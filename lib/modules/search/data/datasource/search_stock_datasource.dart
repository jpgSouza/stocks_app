/*
 * File: c:\Users\joao_\OneDrive\Documentos\Git Projects\stocks_app\lib\modules\search\data\datasource\search_stock_datasource.dart
 * Project: c:\Users\joao_\OneDrive\Documentos\Git Projects\stocks_app\lib\modules\search\data\datasource
 * Created Date: Sunday January 3rd 2021
 * Author: João Pedro
 * -----
 * Last Modified: Sunday January 3rd 2021 6:04:59 pm
 * Modified By: the developer formerly known as João Pedro at <you@you.you>
 * -----
 * Copyright (c) 2021 Your Company
 */
import 'package:stocks_app/modules/search/data/models/result_search_stock_model.dart';

abstract class SearchStockDataSource {
  Future<ResultSearchStockModel> getSearch(String stockName);
}
