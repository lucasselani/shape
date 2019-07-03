import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shape/config/ui/app_colors.dart';
import 'package:shape/core/view/base_view.dart';
import 'package:shape/src/foods/view/foods_view.dart';
import 'package:shape/src/shape/shape_view_model.dart';

class ShapeView extends StatelessWidget {
  final screens = [FoodsView(), FoodsView(), FoodsView()];

  @override
  Widget build(BuildContext context) {
    return BaseView<ShapeViewModel>(
      builder: (context, model, child) => Scaffold(
            backgroundColor: backgroundColor,
            body: screens[model.currentIndex],
            bottomNavigationBar: _createBottomNavigationBar(model),
          ),
    );
  }

  Widget _createBottomNavigationBar(ShapeViewModel model) =>
      BottomNavigationBar(
          onTap: (int index) => model.currentIndex = index,
          type: BottomNavigationBarType.shifting,
          currentIndex: model.currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: const Icon(Icons.home),
                title: Text('Recentes'),
                backgroundColor: Colors.lightBlue),
            BottomNavigationBarItem(
                icon: const Icon(Icons.list),
                title: Text('Notícias'),
                backgroundColor: Colors.lightGreen),
            BottomNavigationBarItem(
                icon: const Icon(Icons.info),
                title: Text('Sobre'),
                backgroundColor: Colors.red)
          ]);
}
