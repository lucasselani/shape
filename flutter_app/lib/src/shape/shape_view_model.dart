import 'package:shape/core/viewmodel/base_view_model.dart';

class ShapeViewModel extends BaseViewModel {
  var _currentIndex = 0;
  get currentIndex => _currentIndex;
  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
