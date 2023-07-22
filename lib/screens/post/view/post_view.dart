import 'package:flutter/material.dart';
import 'package:flutter_application_mobx/widget/appbar.dart';

import 'package:flutter_mobx/flutter_mobx.dart';

import '../view_model/post_view_model.dart';

class PostView extends StatelessWidget {
  final _viewModel = PostViewModel();

  PostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(
        title: "Posts",
      ),
      body: buildCenter(),
    );
  }

  Center buildCenter() {
    return Center(
      child: Observer(builder: (_) {
        if (_viewModel.pageState == PageState.NORMAL) {
          _viewModel.getPots();
        }
        return _viewModel.pageState == PageState.LOADING
            ? const Center(child: CircularProgressIndicator())
            : buildListViewPostss();
      }),
    );
  }

  Widget buildListViewPostss() {
    return Observer(builder: (_) {
      return ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: _viewModel.postModels.length,
        itemBuilder: (context, index) => buildListTileCard(index),
      );
    });
  }

  ListTile buildListTileCard(int index) {
    return ListTile(
      title: Text("${_viewModel.postModels[index].title}"),
      subtitle: Text("${_viewModel.postModels[index].title}"),
      trailing: Text("${_viewModel.postModels[index].userId}"),
    );
  }
}
