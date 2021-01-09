/*
 * File: /Users/jpgsouza/Documents/stocks_app/test/modules/search/app_modules_test.dart
 * Project: /Users/jpgsouza/Documents/stocks_app/test/modules/search
 * Created Date: Wednesday January 6th 2021
 * Author: João Pedro Giacometti de Souza
 * -----
 * Last Modified: Wednesday January 6th 2021 11:41:54 am
 * Modified By: the developer formerly known as João Pedro Giacometti de Souza at joao.souza@toodoo.com.br
 * -----
 * Copyright © 2021 Toodoo. All rights reserved.
 */

import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:stocks_app/app_modules.dart';
import 'package:stocks_app/modules/search/domain/usecases/search_by_name.dart';

class DioMock extends Mock implements Dio {}

main() {
  final dio = DioMock();
  initModule(AppModule(), changeBinds: [
    Bind<Dio>((i) => dio),
  ]);

  test('Should recovery the usecase without error', () {
    final usecase = Modular.get<SearchByName>();
    expect(usecase, isA<SearchByName>());
  });
}