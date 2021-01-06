/*
 * File: c:\Users\joao_\OneDrive\Documentos\Git Projects\stocks_app\lib\modules\search\external\datasources\yahoo_stock_datasource
 * Project: c:\Users\joao_\OneDrive\Documentos\Git Projects\stocks_app\lib\modules\search\external\datasources
 * Created Date: Sunday January 3rd 2021
 * Author: João Pedro
 * -----
 * Last Modified: Sunday January 3rd 2021 6:52:16 pm
 * Modified By: the developer formerly known as João Pedro at <you@you.you>
 * -----
 * Copyright (c) 2021 Your Company
 */


import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:stocks_app/modules/search/data/datasource/search_stock_datasource.dart';
import 'package:stocks_app/modules/search/data/models/result_search_stock_model.dart';

class YahooDataSource implements SearchStockDataSource {
  final Dio dio;

  YahooDataSource(this.dio);

  @override
  Future<ResultSearchStockModel> getSearch(String stockName) async {
    final response = await dio.get(
        "https://apidojo-yahoo-finance-v1.p.rapidapi.com/stock/v2/get-profile?symbol=${stockName}.SA&region=BR");
    if (response.statusCode == 200) {
      final dataReponse = ResultSearchStockModel.fromMap(response.data["price"]);
      return dataReponse;
    }
  }
}
