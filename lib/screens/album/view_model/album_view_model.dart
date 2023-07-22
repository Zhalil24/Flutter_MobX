import 'package:mobx/mobx.dart';

import '../../../../model/album_model.dart';
import '../../../services/json_place_service.dart';

part 'album_view_model.g.dart';

class AlbumViewModel = _AlbumViewModelBase with _$AlbumViewModel;

abstract class _AlbumViewModelBase with Store {
  @observable
  List<AlbumModel> albumModels = [];

  @observable
  PageState pageState = PageState.NORMAL;

  @observable
  bool isServiseRequestLoading = false;

  @observable
  late JsonPlaceService jsonPlaceService = JsonPlaceService();

  @action
  Future<void> getAlbum() async {
    pageState = PageState.LOADING;
    try {
      albumModels = await jsonPlaceService.getAlbum();
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
