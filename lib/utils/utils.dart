import 'package:flutter/material.dart';

class Utils {
  static String formatNumber(num number) {
    String format(num value) {
      return value % 1 == 0
          ? value.toInt().toString()
          : value.toStringAsFixed(1);
    }

    if (number >= 1_000_000_000) {
      return '${format(number / 1_000_000_000)}B';
    } else if (number >= 1_000_000) {
      return '${format(number / 1_000_000)}M';
    } else if (number >= 1_000) {
      return '${format(number / 1_000)}K';
    } else {
      return format(number);
    }
  }

  static EdgeInsets getSafeAreaInsets(BuildContext context) {
    return MediaQuery.of(context).padding;
  }
}
