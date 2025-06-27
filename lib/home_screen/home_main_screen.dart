import 'package:flutter/material.dart';
import 'package:instagram/home_screen/components/home_feed.dart';
import 'package:instagram/home_screen/components/stories.dart';
import 'package:instagram/utils/utils.dart';
import 'components/header.dart';

class HomeMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.only(
            top: Utils.getSafeAreaInsets(context).top == 0
                ? 12
                : Utils.getSafeAreaInsets(context).top,
          ),
          child: Column(children: [Header(), Stories(), HomeFeed()]),
        ),
      ),
    );
  }
}
