/*
 * File: /Users/jpgsouza/Documents/stocks_app/lib/app_modules.dart
 * Project: /Users/jpgsouza/Documents/stocks_app/lib
 * Created Date: Wednesday January 6th 2021
 * Author: João Pedro Giacometti de Souza
 * -----
 * Last Modified: Wednesday January 6th 2021 11:07:33 am
 * Modified By: the developer formerly known as João Pedro Giacometti de Souza at joao.souza@toodoo.com.br
 * -----
 * Copyright © 2021 Toodoo. All rights reserved.
 */
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:stocks_app/modules/search/data/repository/search_stocks_repository_impl.dart';
import 'package:stocks_app/modules/search/domain/usecases/search_by_name.dart';
import 'package:stocks_app/modules/search/external/datasources/yahoo_stock_datasource.dart';
import 'package:stocks_app/modules/search/presenter/search/search_bloc.dart';
import 'package:stocks_app/utils/api_constants.dart';

import 'app_widget.dart';
import 'modules/search/presenter/search/search_page.dart';

class AppModule extends MainModule{

  @override
  List<Bind> get binds => [
    Bind((i) => Dio()),
    Bind((i) => SearchByNameImpl(i())),
    Bind((i) => YahooDataSource(i())),
    Bind((i) => SearchStockRepositoryImpl(i())),
    Bind((i) => SearchBloc(i()))
  ];

  @override
  List<ModularRouter> get routers => [
    ModularRouter('/', child: (_, __) => SearchStocksPage())
  ];
  
  @override
  Widget get bootstrap => AppWidget();
}