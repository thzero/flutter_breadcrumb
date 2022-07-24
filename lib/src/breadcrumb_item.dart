import 'package:flutter/widgets.dart';

abstract class BreadCrumbItem {
  BreadCrumbItem({
    required this.content,
    this.padding = EdgeInsets.zero,
    this.margin = EdgeInsets.zero,
    this.onTap,
    required this.color,
    required this.disableColor,
    required this.splashColor,
    this.textColor,
    this.disabledTextColor,
    this.borderRadius = BorderRadius.zero,
    this.border = BorderSide.none,
  });

  final Widget content;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final VoidCallback? onTap;
  final Color color;
  final Color disableColor;
  final Color splashColor;
  final Color? textColor;
  final Color? disabledTextColor;
  final BorderRadiusGeometry borderRadius;
  final BorderSide border;

  bool get isEnable => onTap != null;

  @override
  String toString() {
    return 'BreadCrumbItem{content: $content, padding: $padding, margin: $margin, onTap: $onTap, enableColor: $color, disableColor: $disableColor, splashColor: $splashColor, textColor: $textColor, disabledTextColor: $disabledTextColor, borderRadiusGeometry: $borderRadius, border: $border}';
  }
}
