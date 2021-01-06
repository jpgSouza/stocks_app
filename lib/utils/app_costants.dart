/*
 * File: /Users/jpgsouza/Documents/stocks_app/lib/utils/app_costants.dart
 * Project: /Users/jpgsouza/Documents/stocks_app/lib/utils
 * Created Date: Wednesday January 6th 2021
 * Author: João Pedro Giacometti de Souza
 * -----
 * Last Modified: Wednesday January 6th 2021 3:32:45 pm
 * Modified By: the developer formerly known as João Pedro Giacometti de Souza at joao.souza@toodoo.com.br
 * -----
 * Copyright © 2021 Toodoo. All rights reserved.
 */

import 'package:flutter/material.dart';

class AppConstant {

  //Strings
  static const String SEARCH_HINT_TEXT_FIELD = "Search...";

  //Colors
  static const Color PRIMARY_COLOR = Color.fromARGB(255, 187, 225, 250);
  static const Color SECONDARY_COLOR = Color.fromARGB(255, 50, 130, 184);

  //Search View Pading
  static const EdgeInsets kTextFieldPadding = EdgeInsets.only(left: 30.0, right: 30.0, top: 50.0, bottom: 90.0);

  //TextField Container Paddingß
  static const EdgeInsets kTextFieldContentPadding = EdgeInsets.only(left: 20.0, right: 10.0, top: 5.0, bottom: 5.0);

  //Search Textfield properties
  static const double kTextFieldHeight = 38.0;
  static BorderRadius kTextFieldBorderRadius = BorderRadius.circular(20.0);

  //Box Shadow Properties
  static const Color BOX_SHADOW_COLOR = Colors.black26;
  static const double kBlurRadius = 6.0;
  static const Offset kOffset = Offset(4.0, 4.0); 

  //Stocks Card Widget Properties
  static const double kSizedBoxWidth = 360.0;
  static const EdgeInsets kCardMargin = EdgeInsets.symmetric(horizontal: 35.0);
  static BorderRadius kCardBorderRadius = BorderRadius.circular(16.0);
  static const double kCardElevation = 6.0;
  static const EdgeInsets kContainerPadding = EdgeInsets.all(16.0);
  static const double kSizedBoxHeight = 5.0;

  //Fonts properties
  static const double kTitleTextSize = 20.0;
  static const double kCommomTextSize = 16.0;
  static const Color TEXT_COLOR = Colors.grey;

}
