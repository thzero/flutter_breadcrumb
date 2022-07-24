import 'package:flutter/cupertino.dart';

import 'package:flutter_breadcrumb/src/breadcrumb_item.dart';

class CupertinoBreadCrumbItem extends BreadCrumbItem {
  CupertinoBreadCrumbItem({
    required Widget content,
    EdgeInsetsGeometry padding = EdgeInsets.zero,
    EdgeInsetsGeometry margin = EdgeInsets.zero,
    VoidCallback? onTap,
    Color color = const Color(0x00000000),
    Color disableColor = const Color(0x00000000),
    Color splashColor = const Color(0x00000000),
    Color? textColor,
    Color? disabledTextColor,
    BorderRadiusGeometry borderRadius = BorderRadius.zero,
    BorderSide border = BorderSide.none,
  }) : super(
            content: content,
            padding: padding,
            margin: margin,
            onTap: onTap,
            color: color,
            disableColor: disableColor,
            splashColor: splashColor,
            textColor: textColor,
            disabledTextColor: disabledTextColor,
            borderRadius: borderRadius,
            border: border);
}
