/*
 * File: c:\Users\joao_\OneDrive\Documentos\Git Projects\stocks_app\test\modules\search\external\datasources\yahoo_stock_datasource_test.dart
 * Project: c:\Users\joao_\OneDrive\Documentos\Git Projects\stocks_app\test\modules\search\external\datasources
 * Created Date: Sunday January 3rd 2021
 * Author: João Pedro
 * -----
 * Last Modified: Sunday January 3rd 2021 6:58:15 pm
 * Modified By: the developer formerly known as João Pedro at <you@you.you>
 * -----
 * Copyright (c) 2021 Your Company
 */
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:stocks_app/modules/search/external/datasources/yahoo_stock_datasource.dart';

import '../../utils/yahoo_stock_api_response.dart';

class DioMock extends Mock implements Dio {}

main() {
  final dio = DioMock();

  final dataSource = YahooDataSource(dio);
  test('Should return a ResultSearchStockModel', () async {
    when(dio.get(any)).thenAnswer((_) async =>
        Response(data: jsonDecode(yahooResponse), statusCode: 200));
    final result = dataSource.getSearch("mglu3");
    expect(result, completes);
  });

  test('Should return the correct reponse data', () async {
    when(dio.get(any)).thenAnswer((_) async =>
        Response(data: jsonDecode(yahooResponse), statusCode: 200));
    final result = dataSource.getSearch("mglu3").then((value){
      expect("Magazine Luiza S.A.", value.name);
      expect("24,95", value.closure);
      expect("0,00", value.opening);
      expect("BRL", value.type);
      expect("-1,22%", value.variation);
    });
  });

}
