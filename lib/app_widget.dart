/*
 * File: /Users/jpgsouza/Documents/stocks_app/lib/app_widget.dart
 * Project: /Users/jpgsouza/Documents/stocks_app/lib
 * Created Date: Wednesday January 6th 2021
 * Author: João Pedro Giacometti de Souza
 * -----
 * Last Modified: Wednesday January 6th 2021 11:10:17 am
 * Modified By: the developer formerly known as João Pedro Giacometti de Souza at joao.souza@toodoo.com.br
 * -----
 * Copyright © 2021 Toodoo. All rights reserved.
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        navigatorKey: Modular.navigatorKey,
        title: "Stock App",
        debugShowCheckedModeBanner: false,
        initialRoute: Modular.initialRoute,
        onGenerateRoute: Modular.generateRoute);
  }
}
