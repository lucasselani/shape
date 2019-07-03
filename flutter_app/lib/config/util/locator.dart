import 'package:get_it/get_it.dart';
import 'package:shape/src/foods/repository/foods_service.dart';
import 'package:shape/src/foods/view/foods_view_model.dart';
import 'package:shape/src/shape/shape_view_model.dart';

GetIt locator = GetIt();

setupLocator() {
  locator.registerFactory(() => ShapeViewModel());
  locator.registerFactory(() => FoodsViewModel());
  locator.registerLazySingleton(() => FoodsService());
}
