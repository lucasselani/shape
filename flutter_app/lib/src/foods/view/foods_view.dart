import 'package:flutter/material.dart';
import 'package:shape/config/ui/app_colors.dart';
import 'package:shape/core/enums/view_state.dart';
import 'package:shape/core/view/base_view.dart';
import 'package:shape/src/foods/model/food.dart';
import 'package:shape/src/foods/view/foods_view_model.dart';

import 'foods_list_item.dart';

class FoodsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<FoodsViewModel>(
      onModelReady: (model) => model.getFoods(),
      builder: (context, model, child) => Scaffold(
            backgroundColor: backgroundColor,
            body: model.state == ViewState.Busy
                ? Center(child: CircularProgressIndicator())
                : _buildFoodsBody(model),
          ),
    );
  }

  Widget _buildFoodsBody(FoodsViewModel model) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
            pinned: true,
            title: Text('Flutter Demo'),
            backgroundColor: Colors.blue,
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/images/food.jpeg", fit: BoxFit.cover),
            )),
        _getFoodsList(model.foods)
      ],
    );
  }

  Widget _getFoodsList(List<Food> foods) => SliverFixedExtentList(
      itemExtent: 70.0,
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return FoodsListItem(
            food: foods[index],
            onTap: () {
              Navigator.pushNamed(context, '/');
            });
      }));
}
