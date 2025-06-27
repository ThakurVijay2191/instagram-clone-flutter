import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram/home_screen/components/create_story_button.dart';
import 'package:instagram/home_screen/components/story_button.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 10, right: 10),
        physics: BouncingScrollPhysics(),
        itemCount: 20 + 1,
        scrollDirection: Axis.horizontal,
        itemBuilder: (c, i) {
          if (i == 0) {
            return CreateStoryButton();
          } else {
            return StoryButton();
          }
        },
      ),
    );
  }
}
