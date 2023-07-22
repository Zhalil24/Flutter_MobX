import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';
part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {
  var pageController = PageController();

  @observable
  int selectedIndex = 0;

  @action
  void changePage(int index) {
    pageController.jumpToPage(index);
    selectedIndex = index;
  }
}
