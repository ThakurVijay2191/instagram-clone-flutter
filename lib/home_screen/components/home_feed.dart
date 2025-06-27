import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram/home_screen/components/post_card.dart';

class HomeFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true, // This removes the unexpected top spacing
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 20,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (c, i) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: PostCard(),
            );
          },
        ),
      ),
    );
  }
}
