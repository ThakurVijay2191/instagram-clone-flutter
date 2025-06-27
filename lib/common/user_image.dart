import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UserImage extends StatelessWidget {
  final double radius;
  final double borderSize;
  final double gradientBorderSize;
  final String image;

  const UserImage({
    super.key,
    required this.radius,
    required this.borderSize,
    required this.gradientBorderSize,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: BoxBorder.all(
          width: gradientBorderSize,
          color: Colors.transparent,
        ),
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [Color(0xFF9B2282), Color(0xFFEEA863)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          border: BoxBorder.all(width: borderSize, color: Colors.transparent),
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: CachedNetworkImage(
          imageUrl: image,
          width: radius * 2,
          height: radius * 2,
          placeholder: (context, url) => CircleAvatar(
            backgroundImage: AssetImage("assets/placeholder.png"),
            radius: radius,
          ),
          errorWidget: (context, url, error) => Icon(Icons.error),
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
