import 'package:shape/config/json_loader.dart';
import 'package:shape/config/mapper.dart';
import 'package:shape/src/foods/model/food.dart';

class FoodsService {
  List<Food> _foods;

  Future<List<Food>> foods() async {
    if (_foods == null)
      _foods = jsonToFoodList(await loadJson('foodList.json'));
    return _foods;
  }
}
