import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shape/config/ui/app_colors.dart';
import 'package:shape/src/foods/model/food.dart';

class FoodsListItem extends StatelessWidget {
  final Food food;
  final Function onTap;

  const FoodsListItem({this.food, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(
                  blurRadius: 3.0,
                  offset: Offset(0.0, 2.0),
                  color: Color.fromARGB(80, 0, 0, 0))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[Text(food.description)],
        ),
      ),
    );
  }
}
