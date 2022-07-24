import 'package:flutter/cupertino.dart';

import 'package:flutter_breadcrumb/src/breadcrumb_overflow.dart';
import 'package:flutter_breadcrumb/src/cupertino/breadcrumb_item.dart';
import 'package:flutter_breadcrumb/src/cupertino/breadcrumb_tile.dart';

///subclass of [BreadCrumbOverflow] that use [Wrap] Widget to show his items
class CupertinoWrapOverflow extends WrapOverflow<CupertinoBreadCrumbItem, CupertinoBreadCrumbTile> {
  const CupertinoWrapOverflow({
    bool keepLastDivider = false,
    Axis direction = Axis.horizontal,
    WrapAlignment alignment = WrapAlignment.start,
    double spacing = 0.0,
    WrapAlignment runAlignment = WrapAlignment.start,
    double runSpacing = 0.0,
    WrapCrossAlignment crossAxisAlignment = WrapCrossAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
  }) : super(
          keepLastDivider: keepLastDivider,
          direction: direction,
          alignment: alignment,
          spacing: spacing,
          runAlignment: runAlignment,
          runSpacing: runSpacing,
          crossAxisAlignment: crossAxisAlignment,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
        );

  @override
  CupertinoBreadCrumbTile constructBreadCrumbTile(CupertinoBreadCrumbItem breadCrumbItem) {
    return CupertinoBreadCrumbTile(breadCrumbItem: breadCrumbItem);
  }
}

class CupertinoScrollableOverflow extends ScrollableOverflow<CupertinoBreadCrumbItem, CupertinoBreadCrumbTile> {
  CupertinoScrollableOverflow({
    bool keepLastDivider = false,
    Axis direction = Axis.horizontal,
    bool reverse = false,
    EdgeInsetsGeometry? padding,
    ScrollController? controller,
    bool? primary,
    ScrollPhysics? physics,
  }) : super(
          keepLastDivider: keepLastDivider,
          direction: direction,
          reverse: reverse,
          padding: padding,
          controller: controller,
          primary: primary,
          physics: physics,
        );

  @override
  CupertinoBreadCrumbTile constructBreadCrumbTile(CupertinoBreadCrumbItem breadCrumbItem) {
    return CupertinoBreadCrumbTile(breadCrumbItem: breadCrumbItem);
  }
}
