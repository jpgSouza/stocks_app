/*
 * File: c:\Users\joao_\OneDrive\Documentos\Git Projects\stocks_app\lib\modules\search\data\models\result_search_stock_model.dart
 * Project: c:\Users\joao_\OneDrive\Documentos\Git Projects\stocks_app\lib\modules\search\data\models
 * Created Date: Sunday January 3rd 2021
 * Author: João Pedro
 * -----
 * Last Modified: Sunday January 3rd 2021 6:07:08 pm
 * Modified By: the developer formerly known as João Pedro at <you@you.you>
 * -----
 * Copyright (c) 2021 Your Company
 */
import 'package:stocks_app/modules/search/domain/entities/result_search_stocks.dart';
import 'dart:convert';
class ResultSearchStockModel extends ResultSearchStocks {
  final String name;
  final String type;
  final String closure;
  final String opening;
  final String variation;

  ResultSearchStockModel(
      {this.name, this.type, this.closure, this.opening, this.variation});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'type': type,
      'closure': closure,
      'opening': opening,
      'variation': variation,
    };
  }

  factory ResultSearchStockModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    return ResultSearchStockModel(
      name: map['longName'],
      type: map['currency'],
      closure: map['regularMarketPrice']['fmt'],
      opening: map['regularMarketOpen']['fmt'],
      variation: map['regularMarketChangePercent']['fmt'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ResultSearchStockModel.fromJson(String source) =>
      ResultSearchStockModel.fromMap(json.decode(source));
}
