import 'package:flutter/material.dart';
import 'package:flutter_application_mobx/widget/appbar.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../view_model/album_view_model.dart';

class AlbumView extends StatelessWidget {
  final _viewModel = AlbumViewModel();

  AlbumView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(
        title: "Albums",
      ),
      body: buildCenter(),
    );
  }

  Center buildCenter() => Center(child: Observer(builder: (_) {
        switch (_viewModel.pageState) {
          case PageState.LOADING:
            return const CircularProgressIndicator();
          case PageState.SUCCES:
            return buildListViewAlbums();
          case PageState.ERROR:
            return const Text("Error");
          default:
            return buildDefault();
        }
      }));

  Widget buildDefault() {
    return Center(
      child: TextButton(
        child: const Text("Verileri Getir"),
        onPressed: () {
          _viewModel.getAlbum();
        },
      ),
    );
  }

  Widget buildListViewAlbums() {
    return Observer(builder: (_) {
      return ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: _viewModel.albumModels.length,
        itemBuilder: (context, index) => buildListTileCard(index),
      );
    });
  }

  ListTile buildListTileCard(int index) {
    return ListTile(
      title: Text(_viewModel.albumModels[index].title.toString()),
      trailing: Text(_viewModel.albumModels[index].id.toString()),
    );
  }
}
