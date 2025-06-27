import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram/common/user_image.dart';

class StoryButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print("story tapped"),
      child: Container(
        width: 90,
        child: Column(
          spacing: 4,
          children: [
            UserImage(
              radius: 35.0,
              borderSize: 3,
              gradientBorderSize: 3,
              image:
                  "https://images.pexels.com/photos/15157857/pexels-photo-15157857.jpeg",
            ),
            Text("Thakur", maxLines: 1, style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
