import 'package:flutter/material.dart';

import 'package:flutter_breadcrumb/src/breadcrumb.dart';
import 'package:flutter_breadcrumb/src/breadcrumb_overflow.dart';
import 'package:flutter_breadcrumb/src/material/breadcrumb_item.dart';
import 'package:flutter_breadcrumb/src/material/breadcrumb_overflow.dart';
import 'package:flutter_breadcrumb/src/material/breadcrumb_tile.dart';

class MaterialBreadCrumb extends BreadCrumb<MaterialBreadCrumbItem, MaterialBreadCrumbTile> {
  MaterialBreadCrumb({Key? key, required List<MaterialBreadCrumbItem> items, Widget? divider, BreadCrumbOverflow<MaterialBreadCrumbItem>? overflowOverride})
      : assert(items.isNotEmpty, 'items parameters should not be empty'),
        super(key: key, items: items, divider: divider, overflowOverride: overflowOverride);

  @override
  BreadCrumb<MaterialBreadCrumbItem, MaterialBreadCrumbTile> constructBreadCrumb(List<MaterialBreadCrumbItem> items, {Key? key, Widget? divider, BreadCrumbOverflow<MaterialBreadCrumbItem>? overflowOverride}) {
    return MaterialBreadCrumb(
      items: items,
      divider: divider,
      overflowOverride: overflowOverride,
    );
  }

  @override
  WrapOverflow<MaterialBreadCrumbItem, MaterialBreadCrumbTile> constructWrapOverflow() {
    return const MaterialWrapOverflow();
  }

  factory MaterialBreadCrumb.builder({
    required int itemCount,
    required IndexedBreadCrumbItemBuilder<MaterialBreadCrumbItem> builder,
    Widget? divider,
    BreadCrumbOverflow<MaterialBreadCrumbItem>? overflowOverride,
  }) =>
      MaterialBreadCrumb(
        items: List<MaterialBreadCrumbItem>.generate(
          itemCount,
          (i) => builder(i),
        ),
        divider: divider,
        overflowOverride: overflowOverride,
      );

  factory MaterialBreadCrumb.builder2({
    required List<String> items,
    Widget? divider,
    BreadCrumbOverflow<MaterialBreadCrumbItem>? overflowOverride,
  }) =>
      MaterialBreadCrumb(
        items: List<MaterialBreadCrumbItem>.generate(
          items.length,
          (i) {
            return MaterialBreadCrumbItem(content: Text(items[i]));
          },
        ),
        divider: divider,
        overflowOverride: overflowOverride,
      );
}
