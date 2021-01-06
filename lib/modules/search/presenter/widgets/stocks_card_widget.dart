/*
 * File: /Users/jpgsouza/Documents/stocks_app/lib/modules/search/presenter/widgets/stocks_card_widget.dart
 * Project: /Users/jpgsouza/Documents/stocks_app/lib/modules/search/presenter/widgets
 * Created Date: Wednesday January 6th 2021
 * Author: João Pedro Giacometti de Souza
 * -----
 * Last Modified: Wednesday January 6th 2021 7:14:07 pm
 * Modified By: the developer formerly known as João Pedro Giacometti de Souza at joao.souza@toodoo.com.br
 * -----
 * Copyright © 2021 Toodoo. All rights reserved.
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stocks_app/utils/app_costants.dart';

class StocksCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppConstant.kSizedBoxWidth,
      child: Card(
        margin: AppConstant.kCardMargin,
        shape: RoundedRectangleBorder(
          borderRadius: AppConstant.kCardBorderRadius
        ),
        elevation: AppConstant.kCardElevation,
        color: Colors.white,
        child: Container(
          padding: AppConstant.kContainerPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Magazine Luiza S.A", style: TextStyle(color: AppConstant.TEXT_COLOR, fontSize: AppConstant.kTitleTextSize)),
              SizedBox(height: AppConstant.kSizedBoxHeight),
              Text("\$ BRL", style: TextStyle(color: Colors.greenAccent, fontSize: AppConstant.kCommomTextSize)),
              SizedBox(height: AppConstant.kSizedBoxHeight),
              Text("Fechamento: 27,45 R\$", style: TextStyle(color: AppConstant.TEXT_COLOR, fontSize: AppConstant.kCommomTextSize)),
              SizedBox(height: AppConstant.kSizedBoxHeight),
              Text("Abertura: 27,00 R\$", style: TextStyle(color: AppConstant.TEXT_COLOR, fontSize: AppConstant.kCommomTextSize)),
              SizedBox(height: AppConstant.kSizedBoxHeight),
              Text("Variação: -0.44%", style: TextStyle(color: AppConstant.TEXT_COLOR, fontSize: AppConstant.kCommomTextSize))
            ]
          ),
        ),
      ),
    );
  }
}