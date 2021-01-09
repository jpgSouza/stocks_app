/*
 * File: /Users/jpgsouza/Documents/stocks_app/lib/modules/search/presenter/search/search_page.dart
 * Project: /Users/jpgsouza/Documents/stocks_app/lib/modules/search/presenter/search
 * Created Date: Wednesday January 6th 2021
 * Author: João Pedro Giacometti de Souza
 * -----
 * Last Modified: Wednesday January 6th 2021 3:00:56 pm
 * Modified By: the developer formerly known as João Pedro Giacometti de Souza at joao.souza@toodoo.com.br
 * -----
 * Copyright © 2021 Toodoo. All rights reserved.
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:stocks_app/modules/search/presenter/search/search_bloc.dart';
import 'package:stocks_app/modules/search/presenter/search/states/state.dart';
import 'package:stocks_app/modules/search/presenter/widgets/stocks_card_widget.dart';
import 'package:stocks_app/utils/app_costants.dart';

class SearchStocksPage extends StatefulWidget {
  @override
  _SearchStocksPageState createState() => _SearchStocksPageState();
}

class _SearchStocksPageState extends State<SearchStocksPage> {
  final bloc = Modular.get<SearchBloc>();

  @override
  void dispose() {
    super.dispose();
    bloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.PRIMARY_COLOR,
      body: Column(children: [
        Padding(
          padding: AppConstant.kTextFieldPadding,
          child: Container(
            height: AppConstant.kTextFieldHeight,
            decoration: BoxDecoration(
                borderRadius: AppConstant.kTextFieldBorderRadius,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: AppConstant.BOX_SHADOW_COLOR,
                      blurRadius: AppConstant.kBlurRadius,
                      offset: AppConstant.kOffset)
                ]),
            child: TextField(
              onSubmitted: bloc.add,
              style: TextStyle(color: Colors.black38),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  contentPadding: AppConstant.kTextFieldContentPadding,
                  border: InputBorder.none,
                  suffixIcon:
                      IconButton(icon: Icon(Icons.search), onPressed: (){}),
                  hintText: AppConstant.SEARCH_HINT_TEXT_FIELD,
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
        ),
        StreamBuilder<Object>(
            stream: bloc,
            builder: (context, snapshot) {
              final state = bloc.state;
              if (state is SearchStart) {
                return Container();
              }
              if (state is SearchFailure) {
                return Center(child: Text("Houve um erro"));
              }
              if (state is SearchLoading) {
                return Center(child: CircularProgressIndicator());
              }
              final data = (state as SearchSucess);
              return SizedBox(
                //height: 450.0,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (_, __) {
                      return StocksCard(
                          name: data.resultSearchStocks.name,
                          type: data.resultSearchStocks.type,
                          closure: data.resultSearchStocks.closure,
                          opening: data.resultSearchStocks.opening,
                          variation: data.resultSearchStocks.variation);
                    }),
              );
            })
      ]),
    );
  }
}
