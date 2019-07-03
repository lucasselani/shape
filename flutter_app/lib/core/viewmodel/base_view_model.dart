import 'package:flutter/widgets.dart';
import 'package:shape/core/enums/view_state.dart';

class BaseViewModel with ChangeNotifier {
  ViewState _state = ViewState.Idle;
  ViewState get state => _state;

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }
}