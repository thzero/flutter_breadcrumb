import 'package:flutter/cupertino.dart';

import 'package:flutter_breadcrumb/src/breadcrumb.dart';
import 'package:flutter_breadcrumb/src/breadcrumb_overflow.dart';
import 'package:flutter_breadcrumb/src/cupertino/breadcrumb_item.dart';
import 'package:flutter_breadcrumb/src/cupertino/breadcrumb_overflow.dart';
import 'package:flutter_breadcrumb/src/cupertino/breadcrumb_tile.dart';

class CupertinoBreadCrumb extends BreadCrumb<CupertinoBreadCrumbItem, CupertinoBreadCrumbTile> {
  CupertinoBreadCrumb({Key? key, required List<CupertinoBreadCrumbItem> items, Widget? divider, BreadCrumbOverflow<CupertinoBreadCrumbItem>? overflowOverride})
      : assert(items.isNotEmpty, 'items parameters should not be empty'),
        super(key: key, items: items, divider: divider, overflowOverride: overflowOverride);

  @override
  BreadCrumb<CupertinoBreadCrumbItem, CupertinoBreadCrumbTile> constructBreadCrumb(List<CupertinoBreadCrumbItem> items, {Key? key, Widget? divider, BreadCrumbOverflow<CupertinoBreadCrumbItem>? overflowOverride}) {
    return CupertinoBreadCrumb(
      items: items,
      divider: divider,
      overflowOverride: overflowOverride,
    );
  }

  @override
  WrapOverflow<CupertinoBreadCrumbItem, CupertinoBreadCrumbTile> constructWrapOverflow() {
    return const CupertinoWrapOverflow();
  }

  factory CupertinoBreadCrumb.builder({
    required int itemCount,
    required IndexedBreadCrumbItemBuilder<CupertinoBreadCrumbItem> builder,
    Widget? divider,
    BreadCrumbOverflow<CupertinoBreadCrumbItem>? overflowOverride,
  }) =>
      CupertinoBreadCrumb(
        items: List<CupertinoBreadCrumbItem>.generate(
          itemCount,
          (i) => builder(i),
        ),
        divider: divider,
        overflowOverride: overflowOverride,
      );

  factory CupertinoBreadCrumb.builder2({
    required List<String> items,
    Widget? divider,
    BreadCrumbOverflow<CupertinoBreadCrumbItem>? overflowOverride,
  }) =>
      CupertinoBreadCrumb(
        items: List<CupertinoBreadCrumbItem>.generate(
          items.length,
          (i) {
            return CupertinoBreadCrumbItem(content: Text(items[i]));
          },
        ),
        divider: divider,
        overflowOverride: overflowOverride,
      );
}
