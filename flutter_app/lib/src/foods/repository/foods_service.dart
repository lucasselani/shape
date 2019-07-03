import 'package:shape/config/util/constants.dart';
import 'package:shape/config/util/json_loader.dart';
import 'package:shape/config/util/mapper.dart';
import 'package:shape/src/foods/model/food.dart';

class FoodsService {
  List<Food> _foods;

  Future<List<Food>> foods() async {
    if (_foods == null)
      _foods = jsonToFoodList(await loadJson(foodsJson));
    return _foods;
  }
}
