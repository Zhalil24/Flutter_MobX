import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';

import '../../album/view/album_view.dart';
import '../../post/view/post_view.dart';
import '../../welcome/welcome.dart';
import '../home_view_model/home_view_model.dart';

class HomeView extends StatelessWidget {
  final _viewModel = HomeViewModel();

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Observer(builder: (_) {
          return CurvedNavigationBar(
            backgroundColor: const Color(0xFFC5DFF8),
            color: const Color(0xFF7895CB),
            onTap: (index) {
              _viewModel.changePage(index);
            },
            items: const [
              Icon(
                Icons.home,
                color: Colors.white,
              ),
              Icon(
                Icons.podcasts,
                color: Colors.white,
              ),
              Icon(
                Icons.album,
                color: Colors.white,
              )
            ],
          );
        }),
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _viewModel.pageController,
          children: [WelcomeView(), PostView(), AlbumView()],
        ));
  }
}
