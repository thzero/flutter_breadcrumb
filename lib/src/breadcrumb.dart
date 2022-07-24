import 'package:flutter/widgets.dart';

import 'package:flutter_breadcrumb/src/breadcrumb_item.dart';
import 'package:flutter_breadcrumb/src/breadcrumb_overflow.dart';
import 'package:flutter_breadcrumb/src/breadcrumb_tile.dart';

typedef IndexedBreadCrumbItemBuilder<T extends BreadCrumbItem> = T Function(int index);

abstract class BreadCrumb<T extends BreadCrumbItem, U extends BreadCrumbTile> extends StatelessWidget {
  final List<T> items;
  final Widget? divider;
  final BreadCrumbOverflow<T>? overflowOverride;

  BreadCrumb<T, U> constructBreadCrumb(List<T> items, {Key? key, Widget? divider, BreadCrumbOverflow<T>? overflowOverride});
  WrapOverflow<T, U> constructWrapOverflow();

  BreadCrumb({Key? key, required this.items, this.divider, this.overflowOverride})
      : assert(items.isNotEmpty, 'items parameters should not be empty'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    var overflow = overflowOverride ?? constructWrapOverflow();
    return overflow.build(context, items, divider);
  }
}
