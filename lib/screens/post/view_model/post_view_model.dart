import 'package:mobx/mobx.dart';

import '../../../../model/post_model.dart';
import '../../../services/json_place_service.dart';

part 'post_view_model.g.dart';

class PostViewModel = _PostViewModelBase with _$PostViewModel;

abstract class _PostViewModelBase with Store {
  @observable
  List<PostModel> postModels = [];

  @observable
  PageState pageState = PageState.NORMAL;

  @observable
  bool isServiseRequestLoading = false;

  @observable
  late JsonPlaceService jsonPlaceService = JsonPlaceService();

  @action
  Future<void> getPots() async {
    pageState = PageState.LOADING;
    try {
      postModels = await jsonPlaceService.getPost();
    } catch (e) {
      pageState = PageState.ERROR;
    }
    pageState = PageState.SUCCES;
  }

  @action
  void changeRequest() {
    isServiseRequestLoading = !isServiseRequestLoading;
  }
}

enum PageState { LOADING, ERROR, SUCCES, NORMAL }
