import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(left: 10, right: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/logo.png", height: 60),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => print("Tapped"),
                    child: Image.asset(
                      "assets/heart.png",
                      width: 30,
                      height: 30,
                    ),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () => print("Tapped"),
                    child: Image.asset(
                      "assets/messenger.png",
                      width: 30,
                      height: 30,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
