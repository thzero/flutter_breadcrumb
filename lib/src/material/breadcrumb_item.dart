import 'package:flutter/material.dart';

import 'package:flutter_breadcrumb/src/breadcrumb_item.dart';

class MaterialBreadCrumbItem extends BreadCrumbItem {
  MaterialBreadCrumbItem({
    required Widget content,
    EdgeInsetsGeometry padding = EdgeInsets.zero,
    EdgeInsetsGeometry margin = EdgeInsets.zero,
    VoidCallback? onTap,
    Color color = Colors.transparent,
    Color disableColor = Colors.transparent,
    Color splashColor = Colors.transparent,
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
