import 'package:shape/config/locator.dart';
import 'package:shape/core/enums/view_state.dart';
import 'package:shape/core/viewmodel/base_view_model.dart';
import 'package:shape/src/foods/model/food.dart';
import 'package:shape/src/foods/repository/foods_service.dart';

class FoodsViewModel extends BaseViewModel {
  FoodsService foodsService = locator<FoodsService>();
  List<Food> foods;

  getFoods() async {
    setState(ViewState.Busy);
    foods = await foodsService.foods();
    setState(ViewState.Idle);
  }
}
