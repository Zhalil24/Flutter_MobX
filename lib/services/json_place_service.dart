import 'package:flutter_application_mobx/model/album_model.dart';
import 'package:flutter_application_mobx/model/post_model.dart';
import 'package:flutter_application_mobx/services/base_services.dart';

class JsonPlaceService extends BasaService {
  Future<List<PostModel>> getPost() async {
    return await get<PostModel>("posts", model: PostModel());
  }

  Future<List<AlbumModel>> getAlbum() async {
    return await get<AlbumModel>("albums", model: AlbumModel());
  }
}
