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
import 'package:stocks_app/extensions/doube_extensions.dart';
import 'package:stocks_app/utils/app_costants.dart';

class StocksCard extends StatelessWidget {
  final String name;
  final String type;
  final String closure;
  final String opening;
  final double variation;

  StocksCard(
      {@required this.name,
      @required this.type,
      @required this.closure,
      @required this.opening,
      @required this.variation});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppConstant.kSizedBoxWidth,
      child: Card(
        margin: AppConstant.kCardMargin,
        shape:
            RoundedRectangleBorder(borderRadius: AppConstant.kCardBorderRadius),
        elevation: AppConstant.kCardElevation,
        color: Colors.white,
        child: Container(
          padding: AppConstant.kContainerPadding,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(name,
                style: TextStyle(
                    color: AppConstant.TEXT_COLOR,
                    fontSize: AppConstant.kTitleTextSize)),
            SizedBox(height: AppConstant.kSizedBoxHeight),
            Text("\$ ${type}",
                style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: AppConstant.kCommomTextSize)),
            SizedBox(height: AppConstant.kSizedBoxHeight),
            RichText(
                text: TextSpan(
                    style: TextStyle(
                        fontSize: AppConstant.kCommomTextSize,
                        color: AppConstant.TEXT_COLOR),
                    children: [
                  TextSpan(text: "Abertura: "),
                  TextSpan(
                      text: opening + " R\$",
                      style: TextStyle(color: AppConstant.SECONDARY_COLOR))
                ])),
            SizedBox(height: AppConstant.kSizedBoxHeight),
            RichText(
                text: TextSpan(
                    style: TextStyle(
                        fontSize: AppConstant.kCommomTextSize,
                        color: AppConstant.TEXT_COLOR),
                    children: [
                  TextSpan(text: "Fechamento: "),
                  TextSpan(
                      text: closure + " R\$",
                      style: TextStyle(color: AppConstant.SECONDARY_COLOR))
                ])),
            SizedBox(height: AppConstant.kSizedBoxHeight),
            Row(children: [
              RichText(
                  text: TextSpan(
                      style: TextStyle(
                          fontSize: AppConstant.kCommomTextSize,
                          color: AppConstant.TEXT_COLOR),
                      children: [
                    TextSpan(text: "Variação: "),
                    TextSpan(
                        text:
                            "${variation.percentage().toStringAsPrecision(3)}%",
                        style: TextStyle(
                            color: variation < 0.0
                                ? Colors.red
                                : Colors.greenAccent)),
                  ])),
              Icon(
                  variation < 0.0
                      ? Icons.arrow_drop_down_outlined
                      : Icons.arrow_drop_up_outlined,
                  color: variation < 0.0 ? Colors.red : Colors.greenAccent)
            ]),
          ]),
        ),
      ),
    );
  }
}
