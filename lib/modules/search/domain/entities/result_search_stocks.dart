/*
 * File: c:\Users\joao_\OneDrive\Documentos\Git Projects\stocks_app\lib\modules\search\domain\entities\result_search_stocks
 * Project: c:\Users\joao_\OneDrive\Documentos\Git Projects\stocks_app\lib\modules\search\domain\entities
 * Created Date: Sunday January 3rd 2021
 * Author: João Pedro
 * -----
 * Last Modified: Sunday January 3rd 2021 12:48:43 pm
 * Modified By: the developer formerly known as João Pedro at <you@you.you>
 * -----
 * Copyright (c) 2021 Your Company
 */

class ResultSearchStocks {
  final String name;
  final String type;
  final double closure;
  final double opening;
  final double variation;

  ResultSearchStocks(
      {this.name, this.type, this.closure, this.opening, this.variation});
}
