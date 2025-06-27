import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreateStoryButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(right: 6),
      child: Stack(
        children: [
          Column(
            spacing: 4,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/15157857/pexels-photo-15157857.jpeg",
                ),
              ),

              Text("Your story", style: TextStyle(fontSize: 12)),
            ],
          ),

          Positioned(
            top: 55,
            right: 0,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                  child: Icon(Icons.add, color: Colors.white, size: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
