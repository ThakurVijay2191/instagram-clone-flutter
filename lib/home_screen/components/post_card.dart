import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram/common/user_image.dart';
import 'package:instagram/utils/utils.dart';

class PostCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          postHeader(context),
          postImage(),
          actionButtons(),
          caption(context),
        ],
      ),
    );
  }

  Widget postHeader(context) {
    return Container(
      child: Padding(
        padding: EdgeInsetsGeometry.only(
          left: 10,
          right: 10,
          top: 0,
          bottom: 8,
        ),
        child: Row(
          spacing: 8,
          children: [
            UserImage(
              radius: 14.0,
              borderSize: 1.5,
              gradientBorderSize: 2,
              image:
                  "https://images.pexels.com/photos/15157857/pexels-photo-15157857.jpeg",
            ),
            Expanded(
              child: Column(
                spacing: 0,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    spacing: 4,
                    children: [
                      Text(
                        "Thakur Vijay",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12.0,
                        ),
                      ),
                      Image.asset("assets/blueTick.png", width: 14, height: 14),
                    ],
                  ),
                  Text(
                    "Bill Elm, Woody Jackson . (Theme From) Red Dead Redeasdklfjasdasdfasdfsdff....",
                    style: TextStyle(fontSize: 9),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),

            GestureDetector(
              onTap: () => print("Dot tapped"),
              child: Icon(CupertinoIcons.ellipsis, size: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget postImage() {
    return Image.network(
      "https://images.pexels.com/photos/32730389/pexels-photo-32730389.jpeg",
    );
  }

  Widget actionButtons() {
    return Padding(
      padding: EdgeInsetsGeometry.only(left: 10, right: 10, top: 10, bottom: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 12,
            children: [
              actionButton(
                image: "assets/heart.png",
                value: 122000,
                onTap: () {
                  print("liked");
                },
              ),
              actionButton(
                image: "assets/chat.png",
                value: 714,
                onTap: () {
                  print("liked");
                },
              ),
              actionButton(
                image: "assets/send.png",
                value: 714,
                onTap: () {
                  print("liked");
                },
              ),
            ],
          ),

          actionButton(
            image: "assets/bookmark.png",
            onTap: () {
              print("bookmark");
            },
          ),
        ],
      ),
    );
  }

  Widget actionButton({
    required String image,
    double? value,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        spacing: 4,
        children: [
          Image.asset(image, width: 18, height: 18),
          if (value != null)
            Text(
              Utils.formatNumber(value),
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
        ],
      ),
    );
  }

  Widget caption(context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(left: 10, right: 10),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(color: Colors.black, fontSize: 14),
          children: [
            TextSpan(
              text: 'vijaythakur ', // Author username
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const TextSpan(
              text: 'Exploring the hills this weekend! 🌄⛰️', // Caption
            ),
          ],
        ),
      ),
    );
  }
}
