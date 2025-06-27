import 'package:flutter/material.dart';
import 'package:instagram/utils/utils.dart';

class BottomTabBar extends StatefulWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabSelected;

  const BottomTabBar({
    required this.selectedIndex,
    required this.onTabSelected,
    Key? key,
  }) : super(key: key);

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  final List<String> activeIcons = [
    "assets/tabIcons/homeActive.png",
    "assets/tabIcons/searchActive.png",
    "assets/tabIcons/plus.png",
    "assets/tabIcons/reel.png",
    "assets/placeholder.png",
  ];

  final List<String> InactiveIcons = [
    "assets/tabIcons/homeInactive.png",
    "assets/tabIcons/searchInactive.png",
    "assets/tabIcons/plus.png",
    "assets/tabIcons/reel.png",
    "assets/placeholder.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(activeIcons.length, (index) {
          return TabButton(
            icon: widget.selectedIndex == index
                ? activeIcons[index]
                : InactiveIcons[index],
            isSelected: widget.selectedIndex == index,
            index: index,
            onTap: () {
              widget.onTabSelected(index);
            },
          );
        }),
      ),
    );
  }
}

class TabButton extends StatelessWidget {
  final String icon;
  final bool isSelected;
  final int index;
  final VoidCallback onTap;

  const TabButton({
    required this.icon,
    required this.isSelected,
    required this.index,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(
          bottom: Utils.getSafeAreaInsets(context).bottom,
          top: 15,
        ),
        color: Colors.white,
        child: GestureDetector(
          onTap: onTap,
          child: index == 4
              ? CircleAvatar(radius: 12, backgroundColor: Colors.grey)
              : Image.asset(icon, width: 24, height: 24),
        ),
      ),
    );
  }
}
