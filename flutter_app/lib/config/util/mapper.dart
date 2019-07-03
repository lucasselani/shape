import 'package:shape/src/foods/model/food.dart';

List<Food> jsonToFoodList(dynamic json) {
  var jsonFoods = json['foods'] as List<dynamic>;
  return jsonFoods.map((food) => Food.fromJson(food)).toList();
}
